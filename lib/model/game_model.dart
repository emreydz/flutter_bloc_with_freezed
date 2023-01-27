import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_model.freezed.dart';
part 'game_model.g.dart';

@freezed
class GameModel with _$GameModel {
  factory GameModel(
      {required int id,
      required String title,
      required String worth,
      required String thumbnail,
      required String image,
      required String description,
      required String instructions,
      required String openGiveawayUrl,
      required String publishedDate,
      required String type,
      required String platforms,
      required String endDate,
      required int users,
      required String status,
      required String gamerpowerUrl,
      required String openGiveaway}) = _GameModel;
  factory GameModel.fromJson(Map<String, dynamic> json) =>
      _$GameModelFromJson(json);
}
