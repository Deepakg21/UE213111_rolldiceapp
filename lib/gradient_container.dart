import 'package:flutter/material.dart';
import 'dart:math';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          const Color.fromARGB(255, 243, 100, 33),
          Color.fromARGB(255, 171, 255, 150)
        ])),
        child: const ImageWidget());
  }
}

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  var noOfImage = 4;
  var randomObj = Random();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/dice-$noOfImage.png', width: 200),
          TextButton(
            onPressed: () {
              setState(() {
                if (noOfImage == 1) {
                } else {
                  noOfImage--; // 1,2,3,4,5,6
                }
              });
            },
            style: TextButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 17, 4, 14)),
            child: const Text('Previous', style: TextStyle(fontSize: 20)),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                if (noOfImage == 5) {
                } else {
                  noOfImage++; // 1,2,3,4,5,6
                }
              });
            },
            style: TextButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 17, 4, 14)),
            child: const Text('Next', style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
