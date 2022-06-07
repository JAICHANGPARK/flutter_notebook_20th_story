import 'package:freezed_annotation/freezed_annotation.dart';

part 'cosmetic_item.freezed.dart';

@freezed
class CosmeticItem with _$CosmeticItem {
  factory CosmeticItem({
    String? title,
  }) = _CosmeticItem;
}
