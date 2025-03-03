import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test2/constant/colors.dart';
import 'package:test2/provider/calc_provider.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:
          () => Provider.of<CalculatorProvider>(
            context,
            listen: false,
          ).setValue("="),

      child: Container(
        height: 180,
        width: 70,
        decoration: BoxDecoration(
          color: AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(40),
        ),
        child: const Center(child: Text("=", style: TextStyle(fontSize: 32))),
      ),
    );
  }
}
