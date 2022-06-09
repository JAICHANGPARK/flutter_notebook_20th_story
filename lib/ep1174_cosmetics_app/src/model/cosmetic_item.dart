import 'package:freezed_annotation/freezed_annotation.dart';

part 'cosmetic_item.freezed.dart';

@freezed
class CosmeticItem with _$CosmeticItem {
  factory CosmeticItem({
    String? title,
    String? review,
    List<String>? images,
    String? price,
    String? detail,
    String? useType,
    String? scent,
    String? liquidVolume,
    String? ml,
    int? count,
  }) = _CosmeticItem;
}
