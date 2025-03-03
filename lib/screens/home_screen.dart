import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test2/constant/colors.dart';
import 'package:test2/provider/calc_provider.dart';
import 'package:test2/screens/widget_data.dart';
import 'package:test2/widgets/calc_button.dart' show CalculateButton;
import 'package:test2/widgets/textfield.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.sizeOf(context).height;
    final padding = EdgeInsets.symmetric(horizontal: 25, vertical: 30);
    final decoration = const BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
    );
    return Consumer<CalculatorProvider>(
      builder: (context, Provider, _) {
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Text("Calculator App"),
            backgroundColor: Colors.red,
          ),
          body: Column(
            children: [
              CustomTextField(controller: Provider.compController),
              const Spacer(),
              Container(
                height: screenHeight * 0.6,
                width: double.infinity,
                padding: padding,
                decoration: decoration,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) => buttonlist[index]),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        4,
                        (index) => buttonlist[index + 4],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(
                        4,
                        (index) => buttonlist[index + 8],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                  3,
                                  (index) => buttonlist[index + 12],
                                ),
                              ),
                              const SizedBox(height: 30),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                  3,
                                  (index) => buttonlist[index + 15],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 30),

                        CalculateButton(),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
