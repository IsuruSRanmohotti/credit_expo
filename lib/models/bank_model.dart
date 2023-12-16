class Bank {
  String name;
  String rating;

  Bank({required this.name, required this.rating});

  factory Bank.fromJson(Map<String, dynamic> json) {
    return Bank(
      name: json['Bank'] ?? '',
      rating: json['Rating'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Bank': name,
      'Rating': rating,
    };
  }

  @override
  String toString() {
    return 'Bank{name: $name, rating: $rating}';
  }
}
