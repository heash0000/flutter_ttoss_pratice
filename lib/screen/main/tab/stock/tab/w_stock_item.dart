import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

import '../vo/vo_stock.dart';

class StockItem extends StatelessWidget {
  final Stock stock;

  const StockItem(this.stock, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.backgroundColor,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(stock.stockImagePath, width: 50),
          width20,
          (stock.name).text.size(18).bold.make(),
          emptyExpanded,
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              stock.todayPercentageString
                  .text
                  .size(20)
                  .bold
                  .color(stock.getPriceColor(context))
                  .make(),
              "${stock.currentPrice.toComma()}원".text.color(context.appColors.lessImportant).make(),
              // height5,
              // stock.yesterdayClosePrice.toComma())
              //     .text
              //     .size(14)
              //     .color(context.appColors.dimmedText)
              //     .make(),
            ],
          ),
        ],
      ),
    );

    // return SizedBox(
    //   height: 70,
    //   child: Row(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       width10,
    //       Image.asset(stock.stockImagePath, width: 50),
    //       width20,
    //       (stock.name).text.size(18).bold.color(context.appColors.dimmedText).make(),
    //       emptyExpanded,
    //       Column(
    //         crossAxisAlignment: CrossAxisAlignment.end,
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           (stock.todayPercentageString)
    //               .text
    //               .size(20)
    //               .bold
    //               .color(stock.getTodayPercentageColor(context))
    //               .make(),
    //           height5,
    //           (stock.yesterdayClosePrice.toComma())
    //               .text
    //               .size(14)
    //               .color(context.appColors.dimmedText)
    //               .make(),
    //         ],
    //       ),
    //       width10,
    //     ],
    //   ),
    // );
  }
}
