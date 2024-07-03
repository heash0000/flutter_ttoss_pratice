import 'package:fast_app_base/common/common.dart';
import 'package:flutter/material.dart';

class StockDetailScreen extends StatelessWidget {
  final String name;

const StockDetailScreen(this.name, {super.key});
  // const StockDetailScreen({
  //   required this.name,
  //   Key? key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            '주식 상세'.text.make(),
          ],
        ),
      ),
    );
  }
}
