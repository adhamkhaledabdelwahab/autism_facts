import 'package:autism_facts/screens/web_view_screen.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Screen5 extends StatefulWidget {
  const Screen5({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _Screen5State createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 51, 82, 1),
        title: Text(this.widget.title),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(15),
              child: RaisedButton(
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                color: Color.fromRGBO(0, 51, 82, 1),
                splashColor: Colors.lightBlueAccent,
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>
                        WebViewScreen(title: "لعبة بازل الفار المجنون",url: "https://www.bohgames.com/%d9%84%d8%b9%d8%a8%d8%a9-%d8%a8%d8%a7%d8%b2%d9%84-%d8%a7%d9%84%d9%81%d8%a7%d8%b1-%d8%a7%d9%84%d9%85%d8%ac%d9%86%d9%88%d9%86/"),)),
                child: Text(
                  "لعبة بازل الفار المجنون",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(15),
              child: RaisedButton(
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                color: Color.fromRGBO(0, 51, 82, 1),
                splashColor: Colors.lightBlueAccent,
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>
                        WebViewScreen(title: "لعبة بازل المشاهير",url: "https://www.bohgames.com/%d9%84%d8%b9%d8%a8%d8%a9-%d8%a8%d8%a7%d8%b2%d9%84-%d8%a7%d9%84%d9%85%d8%b4%d8%a7%d9%87%d9%8a%d8%b1/"),)),
                child: Text(
                  "لعبة بازل المشاهير",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void open(String path)async{
    if (await canLaunch(path)) {
      await launch(path);
    } else {
      throw 'Could not launch $path';
    }
  }
}
