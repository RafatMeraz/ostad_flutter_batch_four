import 'dart:convert';

import 'package:crud_api/screens/add_new_product_screen.dart';
import 'package:crud_api/screens/product.dart';
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
    productList.clear();
    inProgress = true;
    setState(() {});
    Response response = await get(
      Uri.parse('https://crud.teamrabbil.com/api/v1/ReadProduct'),
    );
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
      if (responseData['status'] == 'success') {
        for (Map<String, dynamic> productJson in responseData['data']) {
          productList.add(Product.fromJson(productJson));
        }
      }
    }
    inProgress = false;
    setState(() {});
  }

  void deleteProduct(String productId) async {
    inProgress = true;
    setState(() {});
    Response response = await get(
      Uri.parse('https://crud.teamrabbil.com/api/v1/DeleteProduct/$productId'),
    );
    if (response.statusCode == 200) {
      getProductList();
    } else {
      inProgress = false;
      setState(() {});
    }
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
      body: RefreshIndicator(
        onRefresh: () async {
          getProductList();
        },
        child: inProgress
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.separated(
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  return ProductItem(
                    product: productList[index],
                    onPressDelete: (String productId) {
                      deleteProduct(productId);
                    },
                  );
                },
                separatorBuilder: (_, __) => const Divider(),
              ),
      ),
    );
  }
}

