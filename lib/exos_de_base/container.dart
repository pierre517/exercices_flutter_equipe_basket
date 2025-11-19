import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  final Color color;
  final int flex;
  final String text;
  const MyWidget({
    super.key,
    required this.color,
    required this.flex,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: GestureDetector(
        onTap: () {
          print('oui');
        },
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(255, 104, 104, 104).withValues(),
                blurRadius: 5,
                spreadRadius: 2,
                offset: Offset(5, 5),
              ),
            ],
          ),

          child: Center(
            child: Text(text, style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
