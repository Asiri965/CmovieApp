class Movie {
  //Nullable wenna puluwan nisa data type eka issarhin "?" danawa
  String? posterPath;
  String? overView;
  int? id;
  String? title;
  String? backdropPath;

  Movie(
      {this.backdropPath, this.id, this.overView, this.posterPath, this.title});

  //API eke ena hama map eken ena values dgnna Movie contructor eka hara object ekak
  //hadagnnwa.. ekata me factory eka use karanwa
  factory Movie.fromJson(Map<String, dynamic> map) {
    return Movie(
        backdropPath: map['backdrop_path'],
        id: map['id'],
        overView: map['overview'],
        posterPath: map['poster_path'],
        title: map['title']);
  }
}
