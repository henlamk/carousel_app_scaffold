class Undetermined {
  final String title;
  final String description;
  final String pitch;
  final String city;
  final String imagePath;
  final String logoPath;

  Undetermined({
    this.title,
    this.description,
    this.city,
    this.imagePath,
    this.logoPath,
    this.pitch,
  });

  factory Undetermined.fromJson(Map<String, dynamic> json) {
    return Undetermined(
      title: json['title'],
      description: json['description'],
      city: json['city'],
      imagePath: json['imagePath'],
      logoPath: json['logoPath'],
      pitch: json['pitch'],
    );
  }
}
