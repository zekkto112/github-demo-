import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

List<String> images = [
  "assets/images/6-1597765162198.jpg",
  "assets/images/6-1597765162198.jpg",
  "assets/images/6-1597765162198.jpg",
  "assets/images/6-1597765162198.jpg",
];

class GioiThieuSP extends StatefulWidget {
  const GioiThieuSP({Key? key}) : super(key: key);

  @override
  State<GioiThieuSP> createState() => _GioiThieuSPState();
}

class _GioiThieuSPState extends State<GioiThieuSP> {
  int imagePos = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Gioi thieu SP"),
      ),
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                enlargeCenterPage: true,
                autoPlay: true,
                onPageChanged: (index,reason){
                  setState(() {
                    imagePos = index;
                  });
                }
              ),
              itemCount: images.length,
              itemBuilder:(context, index, realIndex) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: Image.asset(images[index],fit: BoxFit.cover,),
                );
              },
            ),
            Row(
              children: [
                Expanded(child: SizedBox()),
                Container(
                    color: Colors.grey[300],
                    child: Text('${imagePos+1}/${images.length}')
                ),
              ],
            )
          ],
        )
      )
    );
  }
}

