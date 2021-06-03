import 'package:autism_facts/screens/pdf_viewer_screen.dart';
import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  void getData(BuildContext context, String path, String title) async {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PDFViewerScreen(file: path, title: title),
        ));
  }

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
      body: RawScrollbar(
        thumbColor: Color.fromRGBO(0, 51, 82, 1),
        thickness: 10,
        radius: Radius.circular(20),
        interactive: true,
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Color.fromRGBO(0, 51, 82, 1),
                      splashColor: Colors.lightBlueAccent,
                      onPressed: () => getData(
                          context, "assets/screen4/PDF_1.pdf", "PDF_1.pdf"),
                      child: Text(
                        "Show PDF_1",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Color.fromRGBO(0, 51, 82, 1),
                      splashColor: Colors.lightBlueAccent,
                      onPressed: () => getData(
                          context, "assets/screen4/PDF_2.pdf", "PDF_2.pdf"),
                      child: Text(
                        "Show PDF_2",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Color.fromRGBO(0, 51, 82, 1),
                      splashColor: Colors.lightBlueAccent,
                      onPressed: () => getData(
                          context, "assets/screen4/PDF_3.pdf", "PDF_3.pdf"),
                      child: Text(
                        "Show PDF_3",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Color.fromRGBO(0, 51, 82, 1),
                      splashColor: Colors.lightBlueAccent,
                      onPressed: () => getData(
                          context, "assets/screen4/PDF_4.pdf", "PDF_4.pdf"),
                      child: Text(
                        "Show PDF_4",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Color.fromRGBO(0, 51, 82, 1),
                      splashColor: Colors.lightBlueAccent,
                      onPressed: () => getData(
                          context, "assets/screen4/PDF_5.pdf", "PDF_5.pdf"),
                      child: Text(
                        "Show PDF_5",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Color.fromRGBO(0, 51, 82, 1),
                      splashColor: Colors.lightBlueAccent,
                      onPressed: () => getData(
                          context, "assets/screen4/PDF_6.pdf", "PDF_6.pdf"),
                      child: Text(
                        "Show PDF_6",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Color.fromRGBO(0, 51, 82, 1),
                      splashColor: Colors.lightBlueAccent,
                      onPressed: () => getData(
                          context, "assets/screen4/PDF_7.pdf", "PDF_7.pdf"),
                      child: Text(
                        "Show PDF_7",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Color.fromRGBO(0, 51, 82, 1),
                      splashColor: Colors.lightBlueAccent,
                      onPressed: () => getData(
                          context, "assets/screen4/PDF_8.pdf", "PDF_8.pdf"),
                      child: Text(
                        "Show PDF_8",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Color.fromRGBO(0, 51, 82, 1),
                      splashColor: Colors.lightBlueAccent,
                      onPressed: () => getData(
                          context, "assets/screen4/PDF_9.pdf", "PDF_9.pdf"),
                      child: Text(
                        "Show PDF_9",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Color.fromRGBO(0, 51, 82, 1),
                      splashColor: Colors.lightBlueAccent,
                      onPressed: () => getData(
                          context, "assets/screen4/PDF_10.pdf", "PDF_10.pdf"),
                      child: Text(
                        "Show PDF_10",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Color.fromRGBO(0, 51, 82, 1),
                      splashColor: Colors.lightBlueAccent,
                      onPressed: () => getData(
                          context, "assets/screen4/PDF_11.pdf", "PDF_11.pdf"),
                      child: Text(
                        "Show PDF_11",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Color.fromRGBO(0, 51, 82, 1),
                      splashColor: Colors.lightBlueAccent,
                      onPressed: () => getData(
                          context, "assets/screen4/PDF_12.pdf", "PDF_12.pdf"),
                      child: Text(
                        "Show PDF_12",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Color.fromRGBO(0, 51, 82, 1),
                      splashColor: Colors.lightBlueAccent,
                      onPressed: () => getData(
                          context, "assets/screen4/PDF_13.pdf", "PDF_13.pdf"),
                      child: Text(
                        "Show PDF_13",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Color.fromRGBO(0, 51, 82, 1),
                      splashColor: Colors.lightBlueAccent,
                      onPressed: () => getData(
                          context, "assets/screen4/PDF_14.pdf", "PDF_14.pdf"),
                      child: Text(
                        "Show PDF_14",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Color.fromRGBO(0, 51, 82, 1),
                      splashColor: Colors.lightBlueAccent,
                      onPressed: () => getData(
                          context, "assets/screen4/PDF_15.pdf", "PDF_15.pdf"),
                      child: Text(
                        "Show PDF_15",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: RaisedButton(
                      padding: EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Color.fromRGBO(0, 51, 82, 1),
                      splashColor: Colors.lightBlueAccent,
                      onPressed: () => getData(
                          context, "assets/screen4/PDF_16.pdf", "PDF_16.pdf"),
                      child: Text(
                        "Show PDF_16",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              child: RaisedButton(
                padding: EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                color: Color.fromRGBO(0, 51, 82, 1),
                splashColor: Colors.lightBlueAccent,
                onPressed: () =>
                    getData(context, "assets/screen4/PDF_17.pdf", "PDF_17.pdf"),
                child: Text(
                  "Show PDF_17",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
