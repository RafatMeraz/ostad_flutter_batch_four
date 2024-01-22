class CreateProfileParams {
  final String firstName;
  final String lastName;
  final String mobile;
  final String city;
  final String shippingAddress;

  CreateProfileParams({
    required this.firstName,
    required this.lastName,
    required this.mobile,
    required this.city,
    required this.shippingAddress,
  });

  Map<String, dynamic> toJson() => {
  "firstName": firstName,
  "lastName": lastName,
  "mobile": mobile,
  "city": city,
  "shippingAddress": shippingAddress
  };
}
