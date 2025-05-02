class DebutModel {
  String manga;
  String anime;
  String novel;
  String movie;
  String game;
  String ova;

  DebutModel({
    this.manga = 'Not Found',
    this.anime = 'Not Found',
    this.novel = 'Not Found',
    this.movie = 'Not Found',
    this.game = 'Not Found',
    this.ova = 'Not Found',
  });

  factory DebutModel.fromMap(Map<String, dynamic> map) {
    return DebutModel(
      manga: map['manga'] ?? 'Not Found',
      anime: map['anime'] ?? 'Not Found',
      novel: map['novel'] ?? 'Not Found',
      movie: map['movie'] ?? 'Not Found',
      game: map['game'] ?? 'Not Found',
      ova: map['ova'] ?? 'Not Found',
    );
  }
}
