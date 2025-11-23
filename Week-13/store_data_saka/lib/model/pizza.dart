class Pizza {
  Pizza({
    required this.id,
    required this.pizzaName,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'pizzaName': pizzaName,
      'description': description,
      'price': price,
      'imageUrl': imageUrl,
    };
  }

  Pizza.fromJson(Map<String, dynamic> json)
    : id = int.tryParse(json['id'].toString()) ?? 0,
      pizzaName = (json['pizzaName']?.toString() ?? 'No name'),
      description = (json['description']?.toString() ?? 'No description'),
      price = double.tryParse(json['price'].toString()) ?? 0.0,
      imageUrl = (json['imageUrl']?.toString() ?? '');

  final int id;
  final String pizzaName;
  final String description;
  final double price;
  final String imageUrl;
}
