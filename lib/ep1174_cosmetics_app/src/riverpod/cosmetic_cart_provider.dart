import 'package:flutter_notebook_20th_story/ep1174_cosmetics_app/src/model/cosmetic_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cosmeticCartProvider = StateNotifierProvider((ref) => CosmeticCartController([]));

class CosmeticCartController extends StateNotifier<List<CosmeticItem>> {
  CosmeticCartController(super.state);

}
