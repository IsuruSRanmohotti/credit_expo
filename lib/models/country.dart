class CCRating {
  String country;
  String? sAndP;
  String? moodys;
  String? dbrs;

  CCRating({
    required this.country,
    required this.sAndP,
    required this.moodys,
    required this.dbrs,
  });

  @override
  String toString() {
    return '$country, $sAndP, $moodys, $dbrs';
  }
}
