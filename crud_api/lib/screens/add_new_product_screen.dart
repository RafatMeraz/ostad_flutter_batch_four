import 'package:flutter/material.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _productCodeTEController = TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final TextEditingController _priceTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final TextEditingController _descriptionTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new product'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: _titleTEController,
                decoration: const InputDecoration(
                  label: Text('Title'),
                  hintText: 'Enter product title',
                ),
              ),
              TextFormField(
                controller: _productCodeTEController,
                decoration: const InputDecoration(
                  label: Text('Product code'),
                  hintText: 'Enter product code',
                ),
              ),
              TextFormField(
                controller: _quantityTEController,
                decoration: const InputDecoration(
                  label: Text('Quantity'),
                  hintText: 'Enter quantity title',
                ),
              ),
              TextFormField(
                controller: _priceTEController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text('Price'),
                  hintText: 'Enter product price',
                ),
              ),
              TextFormField(
                controller: _totalPriceTEController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  label: Text('Total Price'),
                  hintText: 'Enter product total price',
                ),
              ),
              TextFormField(
                controller: _descriptionTEController,
                maxLines: 5,
                decoration: const InputDecoration(
                  label: Text('Description'),
                  hintText: 'Enter product description',
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    )
                  ),
                  onPressed: () {},
                  child: const Text('Add'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _titleTEController.dispose();
    _productCodeTEController.dispose();
    _quantityTEController.dispose();
    _priceTEController.dispose();
    _totalPriceTEController.dispose();
    _descriptionTEController.dispose();
    super.dispose();
  }
}
