import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_3_0/providers/products_provider.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends ConsumerState<CartScreen> {
  bool showCoupon = true;

  @override
  Widget build(BuildContext context) {
    final cartProducts = ref.watch(reducedProductsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Cart'),
        centerTitle: true,
        // actions: [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Column(
                children: cartProducts
                    .map((product) => Container(
                          padding: const EdgeInsets.all(20),
                          margin: const EdgeInsets.only(bottom: 20),
                          color: Colors.blueGrey.withValues(alpha: 0.05),
                          child: Row(
                            children: [
                              Image.asset(
                                product.image,
                                height: 100,
                              ),
                              const SizedBox(width: 20),
                              const Spacer(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    product.title,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 5),
                                  Text('\$${product.price}'),
                                ],
                              ),
                            ],
                          ),
                        ))
                    .toList(), // output cart products here
              ),

              // output totals here
            ],
          ),
        ),
      ),
    );
  }
}
