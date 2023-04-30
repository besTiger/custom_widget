import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomWidget extends StatelessWidget {
  final String title;
  final String description;
  final String icon;
  final String buttonText;
  final VoidCallback onClick;

  const CustomWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.icon,
    required this.buttonText,
    required this.onClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF97AC7A),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: SvgPicture.asset(icon),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                color: Color(0xFF201A1D),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Flexible(
              child: Text(
                description,
                style: const TextStyle(
                  color: Color(0xFF201A1D),
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: onClick,
              child: Text(
                buttonText,
                style: const TextStyle(
                  color: Color(0xFF5A383B),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
