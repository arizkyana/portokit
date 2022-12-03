class ModelDestination {
  final int? id;
  final String title;
  final String location;
  final bool isFavorite;
  final int rating;
  final String photo;

  ModelDestination({
    this.id,
    required this.title,
    required this.location,
    required this.isFavorite,
    required this.rating,
    required this.photo,
  });

  factory ModelDestination.fromJSON(Map<String, dynamic> data) {
    return ModelDestination(
      id: data["id"],
      title: data["attributes"]["title"],
      location: data["attributes"]["location"],
      isFavorite: data["attributes"]["is_favorite"],
      rating: data["attributes"]["rating"],
      photo: data["attributes"]["photo"],
    );
  }
}
