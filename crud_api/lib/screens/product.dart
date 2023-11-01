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

  factory Product.fromJson(Map<String, dynamic> productJson) {
    return Product(
      productJson['_id'],
      productJson['ProductName'] ?? '',
      productJson['ProductCode']  ?? '',
      productJson['Img']  ?? '',
      productJson['UnitPrice']  ?? '',
      productJson['Qty'] ?? '',
      productJson['TotalPrice'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      '_id' : id,
      'ProductName' : productName,
      'ProductCode' : productCode,
      'Img' : id,
      'UnitPrice' : id,
      'Qty' : id,
      'TotalPrice' : id,
    };
  }
}
