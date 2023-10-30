import 'dart:convert';

import 'package:crud_api/screens/add_new_product_screen.dart';
import 'package:crud_api/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

// ExpansionTile

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<Product> productList = [];
  bool inProgress = false;

  @override
  void initState() {
    getProductList();
    super.initState();
  }

  void getProductList() async {
    inProgress = true;
    setState(() {

    });
    Response response = await get(
      Uri.parse('https://crud.teamrabbil.com/api/v1/ReadProduct'),
    );
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      if (responseData['status'] == 'success') {
        for (Map<String, dynamic> productJson in responseData['data']) {
          productList.add(Product(
            productJson['_id'],
            productJson['ProductName'],
            productJson['ProductCode'],
            productJson['Img'],
            productJson['UnitPrice'],
            productJson['Qty'],
            productJson['TotalPrice'],
          ));
        }
      }
    }
    inProgress = false;
    print(productList.length);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product list'),
        actions: [
          IconButton(onPressed: (){
            getProductList();
          }, icon: const Icon(Icons.refresh)),
        ],
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
      body: inProgress
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.separated(
              itemCount: productList.length,
              itemBuilder: (context, index) {
                return ProductItem(
                  product: productList[index],
                );
              },
              separatorBuilder: (_, __) => const Divider(),
            ),
    );
  }
}

class Product {
  final String id;
  final String productName;
  final String productCode;
  final String image;
  final String unitPRice;
  final String quantity;
  final String totalPRice;

  Product(
    this.id,
    this.productName,
    this.productCode,
    this.image,
    this.unitPRice,
    this.quantity,
    this.totalPRice,
  );
}
