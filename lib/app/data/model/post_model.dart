class PostModel {
  String fotoProfile;
  String namaAkun;
  bool isSponsor;
  String postingGambar;
  bool isLike;
  int jumlahLike;
  String description;
  PostModel({
    required this.fotoProfile,
    required this.namaAkun,
    this.isSponsor = false,
    required this.postingGambar,
    this.isLike = false,
    required this.jumlahLike,
    required this.description,
  });
}
