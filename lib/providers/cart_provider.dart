// import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_3_0/models/product.dart';

class CartNotifier extends Notifier<Set<Product>> {
  @override
  Set<Product> build() {
    return {};
  }

  void add(Product product) {
    if (!state.contains(product)) {
      state = {...state, product};
    }
  }

  void remove(Product product) {
    state = state.where((p) => p.id != product.id).toSet();
  }
}

// Old way of creating a provider for cartProvider
//between <> left side is the type of the provider and right side is the type of the notifier
final cartProvider = NotifierProvider<CartNotifier, Set<Product>>(() {
  return CartNotifier();
});
