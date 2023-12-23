import 'package:flutter/material.dart';

class Recommendation extends StatefulWidget {
  const Recommendation({super.key});

  @override
  State<Recommendation> createState() => _RecommendationState();
}

class _RecommendationState extends State<Recommendation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          height: 200,
          width: 140,
          decoration: BoxDecoration(
              color: Colors.red[300], borderRadius: BorderRadius.circular(20)),
          child: const Row(
            children: [
              Icon(
                Icons.science_outlined,
                color: Colors.black,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Science',
                style: TextStyle(
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text('The Alchemist',
            style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500)),
      ],
    );
  }
}
