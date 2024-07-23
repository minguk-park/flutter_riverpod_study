import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonWidget extends StatelessWidget {
  final String label;
  final String route;

  const ButtonWidget({super.key, required this.label, required this.route});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        context.push(route);
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue[300],
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            label,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}