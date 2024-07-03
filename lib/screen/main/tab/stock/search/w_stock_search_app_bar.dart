import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/util/app_keyboard_util.dart';
import 'package:flutter/material.dart';
import 'package:nav/nav.dart';

import '../../../../../common/widget/w_arrow.dart';
import '../../../../../common/widget/w_tap.dart';
import '../../../../../common/widget/w_text_field_with_delete.dart';

class StockSearchAppBar extends StatelessWidget implements PreferredSizeWidget{
  final TextEditingController controller;
  const StockSearchAppBar({required this.controller, super.key});

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: SizedBox(
        height: kToolbarHeight,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Tap(
                onTap: () {
                  Nav.pop(context);
                },
                child: const SizedBox(
                  width: 56,
                  height: kToolbarHeight,
                  child: Arrow(
                    direction: AxisDirection.left,
                  ),
                )),
            Expanded(
              child: TextFieldWithDelete(
                textInputAction: TextInputAction.search,
                controller: controller,
                texthint: "'커피'를 검색해보세요",
                onEditingComplete: () {
                  AppKeyboardUtil.hide(context);
                  //검색 버튼 눌렀을때 처리 //search
                },
              ).pOnly(top:6),
            ),
            width20,
            // Tap(
            //     onTap: () {
            //       //search
            //     },
            //     child: const Icon(Icons.search).pOnly(right: 15))
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);
}