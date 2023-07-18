import 'package:architecture_sample/breeds_list/models/favorites.dart';

class BreedFavoritesPostResponse {
  final String message;
  final int id;

  const BreedFavoritesPostResponse({
    required this.message,
    required this.id,
  });

  factory BreedFavoritesPostResponse.fromJson(Map<String, dynamic> json) =>
      BreedFavoritesPostResponse(
        message: json['massage'] as String,
        id: json['id'] as int,
      );
}

class BreedFavoritesGetResponse {
  final int id;
  final String user_id;
  final String image_id;
  final String sub_id;
  final String created_at;
  final Image? image;

  BreedFavoritesGetResponse({
    required this.id,
    required this.user_id,
    required this.image_id,
    required this.sub_id,
    required this.created_at,
    required this.image,
  });
  factory BreedFavoritesGetResponse.fromJson(Map<String, dynamic> json) =>
      BreedFavoritesGetResponse(
        id: json['id'] as int,
        user_id: json['user_id'] as String,
        image_id: json['image_id'] as String,
        sub_id: json['sub_id'] as String,
        created_at:  json['created_at'] as String,
        image: json['image'] == null ? null : Image.fromJson(json['image'] as Map<String, dynamic>),
      );
}
extension ModelMapper on BreedFavoritesGetResponse {
  Favorites get entity => Favorites(
    id: id,
    image_id: image_id,
  );
}

class Image {
  final String? id;
  final String? url;

  const Image({required this.id, required this.url});

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json['id'] as String?,
        url: json['url'] as String?,
      );
}
