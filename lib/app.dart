import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kara_flutter/common/app_routes.dart';
import 'package:kara_flutter/common/app_themes.dart';
import 'package:kara_flutter/features/shop/presentation/pages/product_page.dart';
import 'package:kara_flutter/features/shop/presentation/pages/shop_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fadeIn,
      opaqueRoute: Get.isOpaqueRouteDefault,
      popGesture: Get.isPopGestureEnable,
      transitionDuration: Get.defaultDialogTransitionDuration,
      title: 'Kara Online Store',
      theme: AppThemes.appTheme,
      home: const ShopPage(),
      getPages: [
        GetPage(name: AppRoutes.root, page: () => const ShopPage()),
        GetPage(name: AppRoutes.product, page: () => const ProductPage()),
      ],
    );
  }
}
