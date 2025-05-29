import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:spotify_with_flutter/domain/entities/songs/songs.dart';

class SongModel {
  String? title;
  String? artist;
  num? duration;
  Timestamp? releaseDate;
  num? idImg;
  bool? isFavorite;
  String? songId;

  SongModel.fromJson(Map<String, dynamic> data) {
    title = data['title'];
    artist = data['artist'];
    duration = data['duration'];
    releaseDate = data['releaseDate'];
    idImg = data['idImg'];
    isFavorite = data['isFavorite'];
  }
}

extension SongModelX on SongModel {
  SongEntity toEntity() {
    return SongEntity(
      title: title!,
      artist: artist!,
      duration: duration!,
      releaseDate: releaseDate!,
      idImg: idImg!,
      isFavorite: isFavorite!,
      songId: songId!,
    );
  }
}
