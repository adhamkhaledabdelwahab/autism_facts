import 'package:flutter/material.dart';

class University extends StatelessWidget {
  const University({Key?  key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 51, 82, 1),
        title: Text(title),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: RawScrollbar(
        thumbColor: Color.fromRGBO(0, 51, 82, 1),
        thickness: 10,
        radius: Radius.circular(20),
        interactive: true,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Expanded(child: getView("assets/university/image1.jpg",
                      "أ.د/منصور حسن رئيس جامعه بنى سويف")),
                  Expanded(child: getView("assets/university/image2.jpg",
                      "أ. د /هبه محمود ابوالنيل عميد كلية علوم ذوي الاحتياجات الخاصه")),
                ],
              ),
              Row(
                children: [
                  Expanded(child: getView("assets/university/image3.jpg",
                      "د/محمد شوقي مدرس بقسم التوحد")),
                  Expanded(child: getView("assets/university/image4.jpg",
                      "د/محمد عجوه مدرس بقسم التوحد")),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getView("assets/university/image5.jpg",
                      "د/احمد عبدالفتاح مدرس بقسم التوحد"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getView(String path, String title) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: EdgeInsets.all(10),
        width: 300,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
              image: AssetImage(path),
              fit: BoxFit.scaleDown
          ),
        ),
      ),
      Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 18,
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontFamily: 'serif'
        ),
      ),
    ],
  );
}
