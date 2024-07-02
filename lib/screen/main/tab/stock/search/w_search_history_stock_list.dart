import 'package:fast_app_base/screen/main/tab/stock/search/stock_search_data.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/w_search_history_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchHistoryStockList extends StatefulWidget {
  const SearchHistoryStockList({Key? key}) : super(key: key);

  @override
  State<SearchHistoryStockList> createState() => _SearchHistoryStockListState();
}

class _SearchHistoryStockListState extends State<SearchHistoryStockList> {
  late final searchHistoryData = Get.find<SearchStockData>();

  get historyList => searchHistoryData.SearchHistoryStockList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: historyList.length,
          itemBuilder: (context, index) {
            return SearchHistoryItem(
              onTapDelete: () {
                setState(() {
                  historyList.removeAt(index);
                });
              },
              text: historyList[index],
            );
          },
        ));
  }
}
