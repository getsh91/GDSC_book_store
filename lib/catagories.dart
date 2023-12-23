import 'package:flutter/material.dart';

class Catagories extends StatelessWidget {
  const Catagories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          color: Colors.grey[300], borderRadius: BorderRadius.circular(20)),
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
    );
  }
}
