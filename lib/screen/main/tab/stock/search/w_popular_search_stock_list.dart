import 'package:animations/animations.dart';
import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/dart/extension/datetime_extension.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/populoar_stock_dummy.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/s_stock_detail.dart';
import 'package:fast_app_base/screen/main/tab/stock/search/w_popular_stock_item.dart';
import 'package:flutter/material.dart';

class PopularSearchStockList extends StatefulWidget {
  const PopularSearchStockList({Key? key}) : super(key: key);

  @override
  State<PopularSearchStockList> createState() => _PopularSearchStockListState();
}

class _PopularSearchStockListState extends State<PopularSearchStockList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            '인기 검색'.text.bold.make(),
            emptyExpanded,
            '오늘 ${DateTime.now().formattedTime} 기준'.text.white.size(12).make(),
          ],
        ).pSymmetric(h: 20, v: 15),
        height20,
        ...popularStockList
          .mapIndexed((e, index) => OpenContainer<bool>(
            openColor: context.backgroundColor,
            closedColor: context.backgroundColor,
            openBuilder: (BuildContext context, VoidCallback _) {
              return StockDetailScreen(stockName: e.name);
            },
            closedBuilder: (BuildContext context, VoidCallback action) {
              return PopularStockItem(stock: e, number: index + 1);
            },
          ))
          .toList(),
      ],
    ).pSymmetric(h: 20);
  }
}
