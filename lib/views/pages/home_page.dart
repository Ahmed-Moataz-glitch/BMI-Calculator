import 'package:bmi_calculator/views/widgets/age_card_widget.dart';
import 'package:bmi_calculator/views/widgets/calculate_bmi_widget.dart';
import 'package:bmi_calculator/views/widgets/custom_app_bar_widget.dart';
import 'package:bmi_calculator/views/widgets/gender_card_widget.dart';
import 'package:bmi_calculator/views/widgets/weight_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = true;
  int height = 150;
  int weight = 60;
  int age = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C2135),
      appBar: CustomAppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = true;
                    });
                  },
                  child: GenderCardWidget(isChosen: isMale, title: 'Male', icon: 'assets/icons/male_icon.png'),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMale = false;
                    });
                  },
                  child: GenderCardWidget(isChosen: !isMale, title: 'Female', icon: 'assets/icons/female_icon.png'),
                ),
              ],
            ),
            SizedBox(height: 25),
            Container(
              width: 319,
              height: 189,
              decoration: BoxDecoration(
                color: Color(0xff333244),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  SizedBox(height: 27),
                  Text(
                    'Height',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      color: Color(0xff8B8C9E),
                    ),
                  ),
                  SizedBox(height: 6),
                  Text.rich(
                    TextSpan(
                      text: height.toString(),
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: Color(0xffffffff),
                      ),
                      children: [
                        TextSpan(
                          text: 'cm',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ]
                    ),
                  ),
                  SizedBox(height: 20),
                  Slider(
                    value: height.toDouble(),
                    min: 100,
                    max: 220,
                    allowedInteraction: SliderInteraction.slideOnly,
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    activeColor: Color(0xffE83D67),
                    inactiveColor: Color(0xffffffff),
                    onChanged: (value) {
                      setState(() {
                        height = value.toInt();
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 29),
            Row(
              spacing: 10,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WeightCardWidget(
                  title: 'Weight',
                  weight: weight,
                  minusOnPressed: () {
                    setState(() {
                      weight > 3 ? weight-- : null;
                    });
                  },
                  plusOnPressed: () {
                    setState(() {
                      weight < 200 ? weight++ : null;
                    });
                  },
                ),
                AgeCardWidget(
                  title: 'Age',
                  age: age,
                  minusOnPressed: () {
                    setState(() {
                      age > 1 ? age-- : null;
                    });
                  },
                  plusOnPressed: () {
                    setState(() {
                      age < 100 ? age++ : null;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
            '/result',
            arguments: CalculateBmi(
              isMale: isMale,
              height: height,
              weight: weight,
              age: age,
            ),
          );
        },
        child: Container(
          width: 360,
          height: 100,
          color: Color(0xffE83D67),
          child: Center(
            child: Text(
              'Calculate',
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
