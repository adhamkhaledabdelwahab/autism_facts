import 'package:flutter/material.dart';

class Students extends StatelessWidget {
  const Students({Key? key, required this.title}) : super(key: key);

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
                  Expanded(child: getView(1,"نوران زارع")),
                  Expanded(child: getView(2,"فاطمه علي يسن سيد")),
                ],
              ),
              Row(
                children: [
                  Expanded(child: getView(3,"محمد عبد الرحمن محمود")),
                  Expanded(child: getView(4,"محمد عادل سالم")),
                ],
              ),
              Row(
                children: [
                  Expanded(child: getView(5,"محمد سامي احمد مرسي")),
                  Expanded(child: getView(6,"شيماء اشرف فتحي")),
                ],
              ),
              Row(
                children: [
                  Expanded(child: getView(7,"شروق طارق مصطفي")),
                  Expanded(child: getView(8,"ايمان سلامه طه احمد")),
                ],
              ),
              Row(
                children: [
                  Expanded(child: getView(9,"الاء طوسون عبدالمنعم")),
                  Expanded(child: getView(10,"آيه محمد عبدالرازق حسين")),
                ],
              ),
              Row(
                children: [
                  Expanded(child: getView(11,"أحمد جمعة محمد حسن")),
                  Expanded(child: getView(12,"أحمد جمال فاروق")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget getView(int num, String name) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        margin: EdgeInsets.all(20),
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          image: DecorationImage(
              image: AssetImage("assets/students/image$num.jpg"),
              fit: BoxFit.cover
          ),
        ),
      ),
      Text(
        name,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 20,
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontFamily: 'serif'
        ),
      ),
    ],
  );
}
