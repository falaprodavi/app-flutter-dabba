import 'package:greengrocer/src/models/cart_item_model.dart';
import 'package:greengrocer/src/models/item_model.dart';
import 'package:greengrocer/src/models/order_model.dart';
import 'package:greengrocer/src/models/user_model.dart';

ItemModel carne = ItemModel(
  itemName: 'Caldo de Mandioca',
  imgUrl: 'assets/products/01.jpg',
  unit: 'un',
  price: 18.90,
  description: 'Caldos Congelados de Mandioca com Carne (450 ml)',
);

ItemModel frango = ItemModel(
  itemName: 'Caldo de Frango',
  imgUrl: 'assets/products/02.jpg',
  unit: 'un',
  price: 16.90,
  description: 'Caldos Congelados de Mandioca com Carne (450 ml)',
);

ItemModel legumes = ItemModel(
  itemName: 'Caldo de Legumes',
  imgUrl: 'assets/products/03.jpg',
  unit: 'un',
  price: 22.90,
  description: 'Caldos Congelados de Mandioca com Carne (450 ml)',
);

ItemModel novidade = ItemModel(
  itemName: 'Caldo de Mandioquinha',
  imgUrl: 'assets/products/04.jpg',
  unit: 'kg',
  price: 19.90,
  description: 'Caldos Congelados de Mandioca com Carne (450 ml)',
);

ItemModel frutas = ItemModel(
  itemName: 'Caldo de Tomate',
  imgUrl: 'assets/products/05.jpg',
  unit: 'un',
  price: 15.90,
  description: 'Caldos Congelados de Mandioca com Carne (450 ml)',
);

ItemModel doces = ItemModel(
  itemName: 'Caldo de Amendoim',
  imgUrl: 'assets/products/03.jpg',
  unit: 'kg',
  price: 13.90,
  description: 'Caldos Congelados de Mandioca com Carne (450 ml)',
);

List<ItemModel> items = [
  carne,
  frango,
  legumes,
  novidade,
  frutas,
  doces,
];

List<String> categories = [
  'Novidades',
  'Carnes',
  'Frango',
  'Vegano',
  'Promoções',
  'Só Hoje',
];

List<CartItemModel> cartItems = [
  CartItemModel(
    item: legumes,
    quantity: 3,
  ),
  CartItemModel(
    item: carne,
    quantity: 2,
  ),
  CartItemModel(
    item: frango,
    quantity: 1,
  ),
  CartItemModel(
    item: frango,
    quantity: 8,
  ),
  CartItemModel(
    item: frango,
    quantity: 1,
  ),
  CartItemModel(
    item: frango,
    quantity: 8,
  ),
];

UserModel user = UserModel(
  phone: '99 9 9999-9999',
  cpf: '999.999.999-99',
  email: 'user@user.com',
  name: 'Name User Santos',
  password: '',
);

List<OrderModel> orders = [
  OrderModel(
    id: '545ds35445d',
    createDateTime: DateTime.parse(
      '2022-07-14 10:11:11.458',
    ),
    overdueDateTime: DateTime.parse(
      '2022-07-21 10:11:11.458',
    ),
    items: [
      CartItemModel(
        item: frango,
        quantity: 10,
      ),
      CartItemModel(
        item: legumes,
        quantity: 2,
      ),
    ],
    status: 'pending_payment',
    copyAndPaste: 'copyAndPaste',
    total: 220.50,
  ),
  OrderModel(
    id: '22246546',
    createDateTime: DateTime.parse(
      '2022-07-14 10:11:11.458',
    ),
    overdueDateTime: DateTime.parse(
      '2022-07-18 10:11:11.458',
    ),
    items: [
      CartItemModel(
        item: legumes,
        quantity: 2,
      ),
      CartItemModel(
        item: novidade,
        quantity: 5,
      ),
    ],
    status: 'delivered',
    copyAndPaste: 'copyAndPaste',
    total: 220.50,
  ),
];
