import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test2/constant/colors.dart';
import 'package:test2/provider/calc_provider.dart';

class Botton1 extends StatelessWidget {
  const Botton1({
    super.key,
    required this.label,
    this.textcolor = Colors.white,
  });
  final String label;
  final Color textcolor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<CalculatorProvider>(context, listen: false).setValue(label);
      },
      child: Material(
        elevation: 5,
        color: AppColors.secondary2Color,
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
          radius: 30,
          backgroundColor: AppColors.secondary2Color,
          child: Text(
            label,
            style: TextStyle(
              color: textcolor,
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
