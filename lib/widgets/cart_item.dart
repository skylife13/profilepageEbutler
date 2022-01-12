import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String productId;
  final String id;
  final int price;
  final int quantity;
  final String title;

  const CartItem(
      {Key key, this.productId, this.id, this.price, this.quantity, this.title})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 4,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ListTile(
          leading: CircleAvatar(
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: FittedBox(
                child: Text('Rp. $price'),
              ),
            ),
          ),
          title: Text(title),
          subtitle: Text('Total: Rp. ${price * quantity}'),
          trailing: Text('$quantity x'),
        ),
      ),
    );
  }
}
