import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  const Display({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Color color1 = const Color.fromRGBO(21, 18, 223, 1);
    Color color2 = const Color.fromRGBO(92, 167, 212, 1);
    Color color3 = const Color.fromRGBO(90, 92, 246, 1);
    Color color4 = const Color.fromRGBO(0, 212, 255, 1);
    Color color5 = const Color.fromRGBO(117, 167, 255, 1);

    LinearGradient gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        color1,
        color2,
        color3,
        color4,
        color5,
      ],
      stops: const [0.12, 0.46, 0.57, 0.83, 0.87],
      transform: const GradientRotation(120 * 3.14159 / 180),
    );
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 200,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: gradient,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Row(
              children: [
                Spacer(),
                Text(
                  "Sep 23-2023",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Text("Today a reader, tomorrow a leader",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.g_translate,
                      color: Colors.white,
                      size: 30,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.bookmark,
                      color: Colors.white,
                      size: 30,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.share,
                      color: Colors.white,
                      size: 30,
                    )),
              ],
            )
          ],
        ));
  }
}
