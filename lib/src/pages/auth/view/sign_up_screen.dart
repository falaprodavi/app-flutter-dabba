import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:greengrocer/src/config/custom_colors.dart';
import 'package:greengrocer/src/pages/auth/controller/auth_controller.dart';
import 'package:greengrocer/src/pages/common_widgets/custom_text_field.dart';
import 'package:greengrocer/src/services/validators.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);

  final cpfFormatter = MaskTextInputFormatter(
      mask: '###.###.###.##', filter: {'#': RegExp(r'[0-9]')});

  final phoneFormatter = MaskTextInputFormatter(
      mask: '## # ####-####', filter: {'#': RegExp(r'[0-9]')});

  final _formKey = GlobalKey<FormState>();
  final authController = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kcolorBackground,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  // Logo
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 120,
                          child: Expanded(
                            child: Image(
                              image: AssetImage(
                                'assets/images/logo_white.png',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Formulário
                  Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 40,
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(45),
                        ),
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            CustomTextField(
                              validator: nameValidator,
                              icon: Icons.person,
                              label: 'Nome',
                              onSaved: (value) {
                                authController.user.name = value;
                              },
                            ),
                            CustomTextField(
                              validator: emailValidator,
                              textInputType: TextInputType.emailAddress,
                              icon: Icons.email_outlined,
                              label: 'E-mail',
                              onSaved: (value) {
                                authController.user.email = value;
                              },
                            ),
                            CustomTextField(
                              validator: passwordValidator,
                              icon: Icons.lock,
                              label: 'Senha',
                              isSecret: true,
                              onSaved: (value) {
                                authController.user.password = value;
                              },
                            ),
                            CustomTextField(
                              validator: phoneValidator,
                              icon: Icons.phone,
                              textInputType: TextInputType.phone,
                              label: 'Telefone',
                              inputFormatters: [phoneFormatter],
                              onSaved: (value) {
                                authController.user.phone = value;
                              },
                            ),
                            CustomTextField(
                              validator: cpfValidator,
                              icon: Icons.file_copy,
                              textInputType: TextInputType.number,
                              label: 'CPF',
                              inputFormatters: [cpfFormatter],
                              onSaved: (value) {
                                authController.user.cpf = value;
                              },
                            ),

                            //Cadastrar ///////////////////////////////////////
                            SizedBox(
                              height: 50,
                              child: Obx(() {
                                return ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18),
                                    ),
                                  ),
                                  onPressed: authController.isLoading.value
                                      ? null
                                      : () {
                                          FocusScope.of(context).unfocus();
                                          if (_formKey.currentState!
                                              .validate()) {
                                            _formKey.currentState!.save();

                                            authController.signUp();
                                          }
                                        },
                                  child: authController.isLoading.value
                                      ? const CircularProgressIndicator()
                                      : const Text(
                                          'Cadastrar',
                                          style: TextStyle(fontSize: 18),
                                        ),
                                );
                              }),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
              Positioned(
                left: 10,
                child: SafeArea(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
