import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../config/custom_colors.dart';
import '../../models/order_model.dart';
import '../../services/utils_services.dart';

class PaymentDialog extends StatelessWidget {
  final OrderModel order;

  PaymentDialog({
    Key? key,
    required this.order,
  }) : super(key: key);

  final UtilsServices utilsServices = UtilsServices();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 12,
                  ),
                  // Titulo ************************************************
                  child: Text(
                    'Pagamento com Pix',
                    style: TextStyle(
                      fontSize: 18,
                      color: orangeColor,
                    ),
                  ),
                ),

                //QR Code ************************************************
                QrImage(
                  data: "fdfgfg",
                  version: QrVersions.auto,
                  size: 200.0,
                ),

                //Vencimento ************************************************
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text('Vencimento: ${utilsServices.formatDateTime(order.overdueDateTime)}',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),

                //Total ******************************************************
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    utilsServices.priceToCurrency(order.total),
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),

                // Botão Copia e Cola ****************************************
                SizedBox(
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Copiar Código do Pix',
                    ),
                  ),
                )
              ],
            ),
          ),

          // Botão Fechar ************************************************
          Positioned(
            top: 5,
            right: 5,
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.close,
              ),
            ),
          ),
        ],
      ),




    );
  }
}
