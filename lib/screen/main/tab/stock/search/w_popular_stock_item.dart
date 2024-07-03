import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';
import 'package:fast_app_base/screen/main/tab/stock/vo/vo_popular_stock.dart';

class PopularStockItem extends StatelessWidget {
  final PopularStock stock;
  final int number;
  const PopularStockItem({super.key, required this.stock, required this.number});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        (number + 1).text.bold.white.size(16).make(),
        // SizedBox(
        //   width: 40,
        //   child: number.text.make(),
        // ),
        width20,
        stock.name.text.bold.white.size(16).make(),
        emptyExpanded, 
        stock.todayPercentageString.text.color(stock.getPriceColor(context)).size(16).make()
      ],
    ).pSymmetric(v:20, h:20);
  }
}