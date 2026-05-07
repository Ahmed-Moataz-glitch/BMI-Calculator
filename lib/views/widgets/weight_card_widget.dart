import 'package:flutter/material.dart';

class WeightCardWidget extends StatefulWidget {
  final String title;
  final int weight;
  final VoidCallback minusOnPressed;
  final VoidCallback plusOnPressed;
  const WeightCardWidget({super.key, required this.title, required this.weight, required this.minusOnPressed, required this.plusOnPressed});

  @override
  State<WeightCardWidget> createState() => _WeightCardWidgetState();
}

class _WeightCardWidgetState extends State<WeightCardWidget> {
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
            '${widget.weight}',
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
