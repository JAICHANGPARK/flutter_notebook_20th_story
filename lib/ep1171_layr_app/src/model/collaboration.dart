import 'package:freezed_annotation/freezed_annotation.dart';

part 'collaboration.freezed.dart';

@freezed
class Collaboration with _$Collaboration {
  factory Collaboration({
    String? title,
    String? duration,
    String? datatime,
    List<String>? profileImages,
  }) = _Collaboration;
}
