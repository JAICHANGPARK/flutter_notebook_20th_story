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

  updateItemCount(int index, bool control) {
    List<CosmeticItem> items = state;
    CosmeticItem item = items[index];
    int _oldCount = item?.count ?? 1;
    if(control){
      _oldCount += 1;
    }else{
      _oldCount -= 1;
    }

    items[index] = item.copyWith(count: _oldCount);
    state = [...items];
  }


  remove(int index){
    List<CosmeticItem> items = state;
    items.removeAt(index);
    state = [...items];

  }


}
