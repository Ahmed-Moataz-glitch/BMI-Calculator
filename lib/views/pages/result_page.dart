import 'package:bmi_calculator/views/widgets/calculate_bmi_widget.dart';
import 'package:bmi_calculator/views/widgets/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({super.key});

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)!.settings.arguments as CalculateBmi;
    return Scaffold(
      backgroundColor: Color(0xff1C2135),
      appBar: CustomAppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Your Result',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w700,
                color: Color(0xffffffff),
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(height: 25),
            Container(
              width: 319,
              height: 503,
              decoration: BoxDecoration(
                color: Color(0xff333244),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  SizedBox(height: 60),
                  Text(
                    arg.resultBmi,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: arg.categoryColor,
                    ),
                  ),
                  SizedBox(height: 33),
                  Text(
                    arg.calculateBMI.toStringAsFixed(1),
                    style: TextStyle(
                      fontSize: 64,
                      fontWeight: FontWeight.w700,
                      color: Color(0xffffffff),
                    ),
                  ),
                  SizedBox(height: 60),
                  Text(
                    arg.healthAdvice,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff8B8C9E),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Container(
          width: 360,
          height: 100,
          color: Color(0xffE83D67),
          child: Center(
            child: Text(
              'Re - Calculate',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: Color(0xffffffff),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
