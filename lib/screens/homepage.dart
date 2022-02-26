import 'package:flutter/material.dart';
import 'package:kids_edu_app/widgets/animal_cards.dart';
import 'package:kids_edu_app/screens/data.dart';
import 'package:get/get.dart';
import 'package:kids_edu_app/screens/detailspage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<AnimalInfo> animals = [];
  @override
  void initState() {
    animals = animallist;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Learn',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
            ),
          ),
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.filter_list,
            color: Colors.amber,
            size: 40.0,
          ),
          actions: <Widget>[Image(image: AssetImage('assets/c_deer.png'))],
        ),
        body: ListView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.all(10.0),
            itemCount: animals.length,
            itemBuilder: (context, index) => AnimalCard(
                  animal: animals[index],
                  onPressed: () {
                    Get.to(DetailsPage(
                      animal: animals[index],
                    ));
                  },
                )),
      ),
    );
  }
}
