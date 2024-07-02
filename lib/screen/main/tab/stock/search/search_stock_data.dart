import 'package:get/get_rx/get_rx.dart';
import 'package:get/get.dart';
import '../vo/vo_simple_stock.dart';

// import 'package:get/get_state_manager/get_state_manager.dart';

// import '../../../../../common/common.dart';
// import '../../../../../common/util/local_json.dart';

abstract mixin class SearchStockDataProvider {
  late final searchData = Get.find<SearchStockData>();
}

class SearchStockData extends GetxController {
  List<SimpleStock> stocks = [];
  RxList<String> searchHistoryList = <String>[].obs;
  RxList<SimpleStock> autoCompleteList = <SimpleStock>[].obs;

  @override
  void onInit() {
    searchHistoryList.addAll(['삼성전자', 'LG전자', '현대차', '넷플릭스']);
    loadLocalStockJson();
    // () async {
    //   stocks.addAll(await LocalJson.getObjectList("json/stock_list.json"));
    // }();
    super.onInit();
  }

  Future<void> loadLocalStockJson() async{
    final jsonList = await LocalJson.getObjectList<SimpleStock>("stock_list.json");
    stocks.addAll(jsonList);
  }

  void search(String keyword) {
    if(keyword.isEmpty){
      autoCompleteList.clear();
      return;
    }
    autoCompleteList.value = stocks.where((element) => element.stockName.contains(keyword)).toList();
  }

  // void addSearchHistory(String stockName) {
  //   searchHistoryList.insert(0, stockName);
  // }
}
