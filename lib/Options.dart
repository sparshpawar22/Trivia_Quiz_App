import 'package:flutter/material.dart';

class Options extends StatelessWidget {
  final String option;
  final bool isSelected;
  final bool isCorrect;
  final Function(String) onSelected;

  const Options({
    super.key,
    required this.option,
    required this.isSelected,
    required this.isCorrect,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onSelected(option),
      child: Container(
        height: 48,
        width: 240,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            width: 3,
            color: isSelected
                ? (isCorrect ? Colors.green : Colors.red)
                : const Color(0xffA42FC1),
          ),
          color: isSelected
              ? (isCorrect ? Colors.green.withOpacity(0.2) : Colors.red.withOpacity(0.2))
              : Colors.white,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  option,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                if (isSelected)
                  Icon(
                    isCorrect ? Icons.check : Icons.close,
                    color: isCorrect ? Colors.green : Colors.red,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
