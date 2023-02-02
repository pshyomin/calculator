import 'package:calculator/utils/layout_manager.dart';
import 'package:flutter/material.dart';

import '../utils/theme_manager.dart';
import 'widgets/calculator_num_button.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  CalculatorState createState() => CalculatorState();
}

class CalculatorState extends State<Calculator> {
  double num1 = 0;
  String operand = '';
  double num2 = 0;
  double output = 0;

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
            height: layoutManager.getLayoutHeight(0.25),
          ),
          // 계산기 첫번째 줄
          Container(
            margin: const EdgeInsets.only(bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorNumButton(
                  number: 'AC',
                  layoutManager: layoutManager,
                  background: Colors.grey,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                  onPressButton: (value) {
                    //
                  },
                ),
                CalculatorNumButton(
                  number: '±',
                  layoutManager: layoutManager,
                  background: Colors.grey,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                  onPressButton: (value) {
                    //
                  },
                ),
                CalculatorNumButton(
                  number: '%',
                  layoutManager: layoutManager,
                  background: Colors.grey,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                  onPressButton: (value) {
                    //
                  },
                ),
                CalculatorNumButton(
                  number: '÷',
                  layoutManager: layoutManager,
                  background: Colors.orange,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                  onPressButton: (value) {
                    //
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorNumButton(
                  number: '7',
                  layoutManager: layoutManager,
                  background: const Color.fromRGBO(31, 31, 31, 1),
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                  onPressButton: (value) {
                    //
                  },
                ),
                CalculatorNumButton(
                  number: '8',
                  layoutManager: layoutManager,
                  background: const Color.fromRGBO(31, 31, 31, 1),
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                  onPressButton: (value) {
                    //
                  },
                ),
                CalculatorNumButton(
                  number: '9',
                  layoutManager: layoutManager,
                  background: const Color.fromRGBO(31, 31, 31, 1),
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                  onPressButton: (value) {
                    //
                  },
                ),
                CalculatorNumButton(
                  number: 'x',
                  layoutManager: layoutManager,
                  background: Colors.orange,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                  onPressButton: (value) {
                    //
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorNumButton(
                  number: '4',
                  layoutManager: layoutManager,
                  background: const Color.fromRGBO(31, 31, 31, 1),
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                  onPressButton: (value) {
                    //
                  },
                ),
                CalculatorNumButton(
                  number: '5',
                  layoutManager: layoutManager,
                  background: const Color.fromRGBO(31, 31, 31, 1),
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                  onPressButton: (value) {
                    //
                  },
                ),
                CalculatorNumButton(
                  number: '6',
                  layoutManager: layoutManager,
                  background: const Color.fromRGBO(31, 31, 31, 1),
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                  onPressButton: (value) {
                    //
                  },
                ),
                CalculatorNumButton(
                  number: '―',
                  layoutManager: layoutManager,
                  background: Colors.orange,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                  onPressButton: (value) {
                    //
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorNumButton(
                  number: '1',
                  layoutManager: layoutManager,
                  background: const Color.fromRGBO(31, 31, 31, 1),
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                  onPressButton: (value) {
                    //
                  },
                ),
                CalculatorNumButton(
                  number: '2',
                  layoutManager: layoutManager,
                  background: const Color.fromRGBO(31, 31, 31, 1),
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                  onPressButton: (value) {
                    //
                  },
                ),
                CalculatorNumButton(
                  number: '3',
                  layoutManager: layoutManager,
                  background: const Color.fromRGBO(31, 31, 31, 1),
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                  onPressButton: (value) {
                    //
                  },
                ),
                CalculatorNumButton(
                  number: '+',
                  layoutManager: layoutManager,
                  background: Colors.orange,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                  onPressButton: (value) {
                    //
                  },
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CalculatorNumButton(
                  number: '0',
                  layoutManager: layoutManager,
                  background: const Color.fromRGBO(31, 31, 31, 1),
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                  onPressButton: (value) {
                    //
                  },
                ),
                CalculatorNumButton(
                  number: '.',
                  layoutManager: layoutManager,
                  background: const Color.fromRGBO(31, 31, 31, 1),
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                  onPressButton: (value) {
                    //
                  },
                ),
                CalculatorNumButton(
                  number: '=',
                  layoutManager: layoutManager,
                  background: Colors.orange,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                  onPressButton: (value) {
                    //
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget calculatorNumButton(String number, LayoutManager layoutManager,
      Color background, TextStyle textStyle) {
    bool isHover = false;

    return Container(
      padding: const EdgeInsets.all(3),
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
                backgroundColor: isHover == false ? background : Colors.black12,
              ),
              child: Text(
                number,
                style: textStyle,
              ),
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
                backgroundColor: isHover == false ? background : Colors.black12,
              ),
              child: Container(
                width: layoutManager.getWidth(0.27),
                alignment: Alignment.centerLeft,
                child: Text(
                  number,
                  style: textStyle,
                ),
              ),
            ),
    );
  }

  buttonPress(String text) {}
}
