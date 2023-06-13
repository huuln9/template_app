class CartItemModel {
  final String id;
  final String title;
  final int quantity;
  final double price;
  final String imageUrl;

  CartItemModel({
    required this.id,
    required this.title,
    required this.quantity,
    required this.price,
    required this.imageUrl,
  });

  CartItemModel copyWith({
    String? id,
    String? title,
    int? quantity,
    double? price,
    String? imageUrl,
  }) {
    return CartItemModel(
      id: id ?? this.id,
      title: title ?? this.title,
      quantity: quantity ?? this.quantity,
      price: price ?? this.price,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'quantity': quantity,
      'price': price,
      'imageUrl': imageUrl,
    };
  }

  static CartItemModel fromJson(Map<String, dynamic> json) {
    return CartItemModel(
      id: json['id'],
      title: json['title'],
      quantity: json['quantity'],
      price: json['price'],
      imageUrl: json['imageUrl'],
    );
  }
}