import 'package:calculator/cubit/calculator_cubit.dart';
import 'package:calculator/utils/layout_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../utils/theme_manager.dart';
import 'widgets/calculator_num_button.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  CalculatorState createState() => CalculatorState();
}

class CalculatorState extends State<Calculator> {
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
      body: BlocBuilder<CalculatorCubit, String>(
        builder: (context, state) {
          return Column(
            children: <Widget>[
              Container(
                width: layoutManager.width,
                height: layoutManager.getLayoutHeight(0.25),
                margin: const EdgeInsets.fromLTRB(0, 0, 30, 10),
                alignment: Alignment.bottomRight,
                child: SizedBox(
                  width: layoutManager.width,
                  height: layoutManager.getLayoutHeight(0.2),
                  child: FittedBox(
                    fit: BoxFit.contain,
                    alignment: Alignment.bottomRight,
                    child: Text(
                      state,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: ThemeManager.themeTextColor(),
                      ),
                    ),
                  ),
                ),
              ),
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
                        context.read<CalculatorCubit>().manager(value);
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
                        context.read<CalculatorCubit>().manager(value);
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
                        context.read<CalculatorCubit>().manager(value);
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
                        context.read<CalculatorCubit>().manager(value);
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
                        context.read<CalculatorCubit>().manager(value);
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
                        context.read<CalculatorCubit>().manager(value);
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
                        context.read<CalculatorCubit>().manager(value);
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
                        context.read<CalculatorCubit>().manager(value);
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
                        context.read<CalculatorCubit>().manager(value);
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
                        context.read<CalculatorCubit>().manager(value);
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
                        context.read<CalculatorCubit>().manager(value);
                      },
                    ),
                    CalculatorNumButton(
                      number: '-',
                      layoutManager: layoutManager,
                      background: Colors.orange,
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                      ),
                      onPressButton: (value) {
                        context.read<CalculatorCubit>().manager(value);
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
                        context.read<CalculatorCubit>().manager(value);
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
                        context.read<CalculatorCubit>().manager(value);
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
                        context.read<CalculatorCubit>().manager(value);
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
                        context.read<CalculatorCubit>().manager(value);
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
                        context.read<CalculatorCubit>().manager(value);
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
                        context.read<CalculatorCubit>().manager(value);
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
                        context.read<CalculatorCubit>().manager(value);
                      },
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
