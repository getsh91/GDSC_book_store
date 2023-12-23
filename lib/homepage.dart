import 'package:book_store/recommendation.dart';
import 'package:flutter/material.dart';
import 'package:book_store/catagories.dart';
import 'package:book_store/display.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePages();
}

class HomePages extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'GDSC Book Store',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: const Icon(
          Icons.sort,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              // Container(
              //     margin: const EdgeInsets.all(10),
              //     child: Row(
              //       children: [
              //         const TextField(
              //           decoration: InputDecoration(
              //               border: OutlineInputBorder(
              //                   borderRadius:
              //                       BorderRadius.all(Radius.circular(20))),
              //               hintText: 'Looking for...',
              //               suffixIcon: Icon(
              //                 Icons.search,
              //                 color: Colors.black,
              //                 size: 40,
              //               )),
              //         ),
              //         const SizedBox(
              //           width: 10,
              //         ),
              //         Container(
              //           height: 50,
              //           width: 50,
              //           decoration: BoxDecoration(
              //               color: const Color.fromRGBO(58, 117, 221, 1),
              //               borderRadius: BorderRadius.circular(20)),
              //           child: IconButton(
              //               onPressed: () {},
              //               icon: const Icon(
              //                 Icons.filter_alt_outlined,
              //                 color: Colors.white,
              //                 size: 30,
              //               )),
              //         )
              //       ],
              //     )),
              Display(),
              Container(
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Catagories',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Catagories(),
                          Catagories(),
                          Catagories(),
                          Catagories(),
                          Catagories(),
                          Catagories(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Recommended',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.black,
                          size: 20,
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Recommendation(),
                    Recommendation(),
                    Recommendation(),
                    Recommendation(),
                    Recommendation(),
                    Recommendation(),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
