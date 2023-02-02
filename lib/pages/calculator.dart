import 'package:calculator/utils/layout_manager.dart';
import 'package:flutter/material.dart';

import '../utils/theme_manager.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LayoutManager layoutManager = LayoutManager(MediaQuery.of(context));

    return Scaffold(
      backgroundColor: ThemeManager.themeColor(),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ThemeManager.themeColor(),
        actions: [
          IconButton(
            onPressed: () {
              ThemeManager.themeChange();
            },
            icon: Icon(
              ThemeManager.themeIcon(Icons.dark_mode, Icons.light_mode),
              color: ThemeManager.themeColor(Colors.black, Colors.white),
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: layoutManager.width,
            height: layoutManager.getLayoutHeight(0.3),
            color: Colors.amberAccent,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              calculatorNumButton('1', layoutManager),
              calculatorNumButton('2', layoutManager),
              calculatorNumButton('3', layoutManager),
              calculatorNumButton('4', layoutManager),
            ],
          ),
        ],
      ),
    );
  }

  Widget calculatorNumButton(String number, LayoutManager layoutManager) {
    bool isHover = false;
    final int num = int.parse(number);

    return SizedBox(
      width: number != '0'
          ? layoutManager.getWidth(0.23)
          : layoutManager.getWidth(0.46),
      height: layoutManager.getLayoutHeight(0.12),
      child: number != '0'
          ? ElevatedButton(
              onPressed: () {
                debugPrint('Pressed $num');
              },
              onHover: (value) {
                debugPrint('Hover $num');
                isHover = value;
              },
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(8),
                backgroundColor:
                    isHover == false ? Colors.grey : Colors.black12,
              ),
              child: Text(number),
            )
          : ElevatedButton(
              onPressed: () {
                debugPrint('Pressed $num');
              },
              onHover: (value) {
                debugPrint('Hover');
                isHover = value;
              },
              style: ElevatedButton.styleFrom(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
                padding: const EdgeInsets.all(8),
                backgroundColor:
                    isHover == false ? Colors.grey : Colors.black12,
              ),
              child: Text(number),
            ),
    );
  }
}
