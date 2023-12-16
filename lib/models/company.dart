class Company {
  String name;
  String ratings;

  Company({
    required this.name,
    required this.ratings,
  });

  @override
  String toString() {
    return '$name, $ratings';
  }
}