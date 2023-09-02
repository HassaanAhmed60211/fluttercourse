import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Seeall.dart';

var menban = ['assets/bannermen.PNG'];

var menimg = [
  'assets/men10.PNG',
  'assets/men9.PNG',
  'assets/men8.PNG',
  'assets/men7.PNG',
  'assets/men6.PNG',
  'assets/men5.PNG',
  'assets/men4.PNG',
  'assets/men3.PNG',
  'assets/men2.PNG',
  'assets/men1.PNG'
];

var mentit = [
  'White Cotton Kurta',
  'Blue Cotton Kurta',
  'Maroon Blended Kameez',
  'Green Cotton Kameez',
  'Black Blended Unstitched',
  'Cotton Unstitched',
  'Kameez Shalwar',
  'Blended Unstitched',
  'Kameez Shalwar',
  'Unstitched Kameez '
];

var menpric = [
  '\$ 18.00',
  '\$ 19.00',
  '\$ 12.00',
  '\$ 16.00',
  '\$ 19.00',
  '\$ 10.00',
  '\$ 11.00',
  '\$ 20.00',
  '\$ 18.00',
  '\$ 15.00'
];

class Men extends StatefulWidget {
  const Men({super.key});

  @override
  State<Men> createState() => _MenState();
}

class _MenState extends State<Men> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 7.0, bottom: 3.0),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  "${menban[0]}",
                  fit: BoxFit.fitHeight,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 3.0, bottom: 3.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Feature Products",
                  style: TextStyle(
                      fontFamily: GoogleFonts.roboto().fontFamily,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Seeall(
                              290,
                              'Men',
                              menimg.toList(),
                              mentit.toList(),
                              menpric.toList()),
                        ));
                  },
                  child: Text(
                    "Show All",
                    style: TextStyle(
                        fontFamily: GoogleFonts.roboto().fontFamily,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[400]),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 2.0, bottom: 2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 250,
                    width: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            height: 120,
                            width: 150,
                            child: Card(
                              color: Colors.white,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    "${menimg[index]}",
                                    fit: BoxFit.fitHeight,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "${mentit[index]}",
                                        style: TextStyle(
                                            fontFamily:
                                                GoogleFonts.roboto().fontFamily,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "${menpric[index]}",
                                        style: TextStyle(
                                            fontFamily:
                                                GoogleFonts.roboto().fontFamily,
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[600]),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                          ),
                        );
                      },
                      itemCount: menimg.length - 5,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                left: 10.0, right: 10.0, top: 7.0, bottom: 3.0),
            child: Container(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.asset(
                  "assets/banner2men.jpg",
                  fit: BoxFit.fitWidth,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
