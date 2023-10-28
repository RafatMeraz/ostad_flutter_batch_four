import 'package:crud_api/screens/add_new_product_screen.dart';
import 'package:crud_api/widgets/product_item.dart';
import 'package:flutter/material.dart';

// ExpansionTile

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product list'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddNewProductScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ProductItem();
        },
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
