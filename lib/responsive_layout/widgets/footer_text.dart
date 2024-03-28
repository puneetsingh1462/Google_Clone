import 'package:flutter/material.dart';

class ftext extends StatelessWidget {
  final String title;
  const ftext({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){}, child: Text(title,style: const TextStyle(
      color: Color(0xff70757a),
    ),));
  }
}