import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/carts_controller.dart';

class CartsView extends GetView<CartsController> {
  const CartsView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartsController>(
      init: CartsController(),
      builder: (CartsController controller) {
        return Scaffold(
          appBar: AppBar(
            // title: const Text('YOUR CART'),
            centerTitle: true,
          ),
          body: const Center(child: Text('CartsView is working')),
        );
      },
    );
  }
}
