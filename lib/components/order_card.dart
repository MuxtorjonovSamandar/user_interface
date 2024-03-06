
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_interface/assets/colors.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: Get.width * 0.3,
      child: Card(
        color: secondaryColor,
        margin: const EdgeInsets.all(20),
        child: const Column(
          children: <Widget>[
            ListTile(
              title: Text('Status'),
              subtitle: Text('Yetkazib berish'),
            ),
          ],
        ),
      ),
    );
  }
}
