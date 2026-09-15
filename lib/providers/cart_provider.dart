// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_3_0/models/product.dart';

class CartNotifier extends Notifier<Set<Product>> {
  @override
  Set<Product> build() {
    return {};
  }
}

// Old way of creating a provider for cartProvider
//between <> left side is the type of the provider and right side is the type of the notifier
final cartProvider = NotifierProvider<CartNotifier, Set<Product>>(() {
  return CartNotifier();
});
