class SubscriptionPlan {
  final String id;
  final String name;
  final String description;
  final double price;
  final String currencyCode;
  final Duration duration;
  final List<String> features;
  final bool isPopular;
  final double? discountPercentage;

  const SubscriptionPlan({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.currencyCode,
    required this.duration,
    required this.features,
    this.isPopular = false,
    this.discountPercentage,
  });

  double get pricePerMonth => price / duration.inDays * 30;
  
  bool get hasDiscount => discountPercentage != null && discountPercentage! > 0;
  
  double get discountedPrice => 
      hasDiscount ? price * (1 - discountPercentage! / 100) : price;

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'description': description,
    'price': price,
    'currencyCode': currencyCode,
    'duration': duration.inDays,
    'features': features,
    'isPopular': isPopular,
    'discountPercentage': discountPercentage,
  };

  factory SubscriptionPlan.fromJson(Map<String, dynamic> json) {
    return SubscriptionPlan(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'].toDouble(),
      currencyCode: json['currencyCode'],
      duration: Duration(days: json['duration']),
      features: List<String>.from(json['features']),
      isPopular: json['isPopular'] ?? false,
      discountPercentage: json['discountPercentage']?.toDouble(),
    );
  }
}
