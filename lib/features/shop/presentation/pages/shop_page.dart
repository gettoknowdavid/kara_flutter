import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kara_flutter/common/app_routes.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kara Online Store'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(AppRoutes.product),
        child: const Icon(Icons.add),
      ),
    );
  }
}
