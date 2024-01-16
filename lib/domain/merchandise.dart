import 'package:freezed_annotation/freezed_annotation.dart';

part 'merchandise.freezed.dart';
part 'merchandise.g.dart';

@freezed
class Merchandise with _$Merchandise {
  // ignore: invalid_annotation_target
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Merchandise({
    required String id,
    required String name,
    required String description,
    required int price,
    required String imageUrl,
    required DateTime createdAt,
  }) = _Merchandise;

  factory Merchandise.fromJson(Map<String, dynamic> json) =>
      _$MerchandiseFromJson(json);
}
