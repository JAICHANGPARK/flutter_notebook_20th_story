import 'package:flutter_notebook_20th_story/ep1174_cosmetics_app/src/model/cosmetic_item.dart';
import 'package:flutter_notebook_20th_story/ep1174_cosmetics_app/src/ui/cosmetic_woman_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cosmeticCartProvider = StateNotifierProvider<CosmeticCartController, List<CosmeticItem>>(
  (ref) => CosmeticCartController(
    [
      ...cosItems,
    ],
  ),
);

class CosmeticCartController extends StateNotifier<List<CosmeticItem>> {
  CosmeticCartController(super.state);

  updateItemCount(int index) {
    CosmeticItem item = state[index];
    int _oldCount = item?.count ?? 1;
    state[index] = item.copyWith(count: _oldCount++);
  }
}
