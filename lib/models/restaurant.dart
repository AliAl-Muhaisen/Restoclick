class Restaurant {
  static int _idCount = 0;
  final int id = _idCount;
  final String image;
  final String name;
  final String description;

  Restaurant({
    required this.image,
    required this.name,
    required this.description,
  }) {
    _idCount++;
  }
}
