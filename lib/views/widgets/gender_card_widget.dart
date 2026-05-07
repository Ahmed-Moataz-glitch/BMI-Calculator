import 'package:flutter/material.dart';

class GenderCardWidget extends StatefulWidget {
  final String title;
  final String icon;
  final bool isChosen;
  const GenderCardWidget({super.key, required this.isChosen, required this.title, required this.icon});

  @override
  State<GenderCardWidget> createState() => _GenderCardWidgetState();
}

class _GenderCardWidgetState extends State<GenderCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 180,
      decoration: BoxDecoration(
        color: widget.isChosen ? Color(0xffE83D67) : Color(0xff333244),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Image.asset(
            widget.icon,
            width: 144,
            height: 144,
          ),
          Text(
            widget.title, 
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: widget.isChosen ? Color(0xffffffff) : Color(0xff8B8C9E),
            ),
          ),
        ],
      ),
    );
  }
}
