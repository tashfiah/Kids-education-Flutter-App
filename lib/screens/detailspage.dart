import 'package:flutter/material.dart';
import 'package:kids_edu_app/screens/data.dart';
import 'package:get/get.dart';
import 'package:kids_edu_app/widgets/custom_header.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({required this.animal});
  final AnimalInfo animal;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          animal.name,
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: animal.color,
      ),
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            height: 300,
            decoration: BoxDecoration(
                color: animal.color,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                )),
            child: GestureDetector(
              child: Center(
                child: Hero(
                  tag: animal.iconImage,
                  child: Image(
                    image: AssetImage(animal.iconImage),
                  ),
                ),
              ),
              onTap: () {
                Get.back();
              },
            ),
          ),
          Container(
            height: 300,
            color: Colors.white,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Header(text: animal.name),
                  SubHeader(text: animal.paragraph),
                  SizedBox(
                    height: 10,
                  ),
                  Header(text: "Speed"),
                  SubHeader(text: animal.lifespan),
                  SizedBox(
                    height: 10,
                  ),
                  Header(text: animal.name),
                  SubHeader(text: animal.speed),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Container(
            padding: EdgeInsets.only(left: 20, top: 10),
            color: Colors.white,
            width: double.infinity,
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Header(text: 'Images'),
                  Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: animal.images.length,
                          itemBuilder: (context, index) => PictureCard(
                                imageURL: animal.images[index],
                              )))
                ],
              ),
            ),
          )),
        ],
      ),
    ));
  }
}
