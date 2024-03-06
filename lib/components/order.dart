import 'package:flutter/material.dart';
import 'package:user_interface/assets/colors.dart';
import 'package:user_interface/components/order_card.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const OrderCard(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: secondaryColor,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: primaryColor,
        ),
      ),
    );
  }
}
