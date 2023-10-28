import 'package:crud_api/screens/add_new_product_screen.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return productActionDialog(context);
            });
      },
      leading: Image.network(
        'https://cdn.shopify.com/s/files/1/0059/0630/1017/t/5/assets/keychronv1custommechanicalkeyboard27-1657706139851.jpg?v=1657706183',
        width: 80,
      ),
      title: const Text('Product name'),
      subtitle: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text('Product code'),
              SizedBox(width: 24,),
              Text('Total price'),
            ],
          ),
          Text('Product description'),
        ],
      ),
      trailing: const Text('\$120'),
    );
  }

  AlertDialog productActionDialog(BuildContext context) {
    return AlertDialog(
      title: const Text('Select action'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: const Text('Edit'),
            leading: const Icon(Icons.edit),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddNewProductScreen(),
                ),
              );
            },
          ),
          const Divider(
            height: 0,
          ),
          ListTile(
            title: const Text('Delete'),
            leading: const Icon(Icons.delete_outline),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
