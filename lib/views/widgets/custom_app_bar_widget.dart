import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'BMI Calculator',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Color(0xffffffff),
        ),
      ),
      centerTitle: true,
      elevation: 10,
      backgroundColor: Color(0xff24263B),
    );
  }
  
  @override
  Size get preferredSize => const Size(360, 50);
}