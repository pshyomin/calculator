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
            height: layoutManager.getLayoutHeight(0.25),
          ),
          // 계산기 첫번째 줄
          Container(
            margin: const EdgeInsets.only(bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculatorNumButton(
                  'AC',
                  layoutManager,
                  Colors.grey,
                  const TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                  ),
                ),
                calculatorNumButton(
                  '±',
                  layoutManager,
                  Colors.grey,
                  const TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                  ),
                ),
                calculatorNumButton(
                  '%',
                  layoutManager,
                  Colors.grey,
                  const TextStyle(
                    color: Colors.black,
                    fontSize: 32,
                  ),
                ),
                calculatorNumButton(
                  '÷',
                  layoutManager,
                  Colors.orange,
                  const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculatorNumButton(
                  '7',
                  layoutManager,
                  const Color.fromRGBO(31, 31, 31, 1),
                  const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
                calculatorNumButton(
                  '8',
                  layoutManager,
                  const Color.fromRGBO(31, 31, 31, 1),
                  const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
                calculatorNumButton(
                  '9',
                  layoutManager,
                  const Color.fromRGBO(31, 31, 31, 1),
                  const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
                calculatorNumButton(
                  'x',
                  layoutManager,
                  Colors.orange,
                  const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculatorNumButton(
                  '4',
                  layoutManager,
                  const Color.fromRGBO(31, 31, 31, 1),
                  const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
                calculatorNumButton(
                  '5',
                  layoutManager,
                  const Color.fromRGBO(31, 31, 31, 1),
                  const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
                calculatorNumButton(
                  '6',
                  layoutManager,
                  const Color.fromRGBO(31, 31, 31, 1),
                  const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
                calculatorNumButton(
                  '―',
                  layoutManager,
                  Colors.orange,
                  const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculatorNumButton(
                  '1',
                  layoutManager,
                  const Color.fromRGBO(31, 31, 31, 1),
                  const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
                calculatorNumButton(
                  '2',
                  layoutManager,
                  const Color.fromRGBO(31, 31, 31, 1),
                  const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
                calculatorNumButton(
                  '3',
                  layoutManager,
                  const Color.fromRGBO(31, 31, 31, 1),
                  const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
                calculatorNumButton(
                  '+',
                  layoutManager,
                  Colors.orange,
                  const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calculatorNumButton(
                  '0',
                  layoutManager,
                  const Color.fromRGBO(31, 31, 31, 1),
                  const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
                calculatorNumButton(
                  '.',
                  layoutManager,
                  const Color.fromRGBO(31, 31, 31, 1),
                  const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
                ),
                calculatorNumButton(
                  '=',
                  layoutManager,
                  Colors.orange,
                  const TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                  ),
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
}
