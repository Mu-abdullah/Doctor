import 'package:doctor/core/style/widgets/app_text.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 50,
        itemBuilder:
            (context, index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.blue,
                padding: const EdgeInsets.all(8.0),
                child: AppText("text", translate: false),
              ),
            ),
      ),
    );
  }
}
