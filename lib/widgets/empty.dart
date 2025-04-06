import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height *
              0.6, // Adjust the height as needed
          child: Center(
            child: Lottie.asset(
                'assets/lottie/empty.json'), // Display Lottie animation
          ),
        ),
      ],
    );
  }
}
