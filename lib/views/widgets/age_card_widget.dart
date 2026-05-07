import 'package:flutter/material.dart';

class AgeCardWidget extends StatefulWidget {
  final String title;
  final int age;
  final VoidCallback minusOnPressed;
  final VoidCallback plusOnPressed;
  const AgeCardWidget({super.key, required this.title, required this.age, required this.minusOnPressed, required this.plusOnPressed});

  @override
  State<AgeCardWidget> createState() => _AgeCardWidgetState();
}

class _AgeCardWidgetState extends State<AgeCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 180,
      decoration: BoxDecoration(
        color: Color(0xff333244),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          SizedBox(height: 15),
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              color: Color(0xff8B8C9E),
            ),
          ),
          Text(
            '${widget.age}',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w700,
              color: Color(0xffffffff),
            ),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: widget.minusOnPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff8B8C9E),
                    shape: const CircleBorder(),
                  ),
                  child: const Text(
                    '-',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                  onPressed: widget.plusOnPressed,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff8B8C9E),
                    shape: const CircleBorder(),
                  ),
                  child: const Text(
                    '+',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
