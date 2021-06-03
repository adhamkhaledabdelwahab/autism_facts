import 'package:autism_facts/custom_widgets/video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _Screen3State createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {

  late VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/screen3/screen3.mp4')
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((_) => _controller.pause());
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
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
          child: Container(
            child: Column(
              children: [
                VideoPlayerWidget(controller: _controller),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: RichText(
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    text: TextSpan(
                        text:  """ﻋﻦ اﻟﻜﻠﻴﻪ
ﻛﻠﻴﺔ ﻋﻠﻮم ذوي اﻻﺣﺘﻴﺎﺟﺎت اﻟﺨﺎﺻﺔ ﺑﺠﺎﻣﻌﺔ ﺑﻨﻲ ﺳﻮﻳﻒ " sciences needs special of faculty "
""" + "\n",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.red,
                            fontWeight: FontWeight.bold
                        ),
                        children: [
                          TextSpan(
                              text:
                              """- اول ﻛﻠﻴﺔ ﻣﻦ ﻧﻮﻋﻬﺎ ﻋﻠﻲ ﻣﺴﺘﻮى اﻟﺸﺮق اﻷوﺳﻂ، و ﻓﻲ ﺟﺎﻣﻌﺔ اﻟﺰﻗﺎزﻳﻖ اﺗﻔﺘﺤﺖ ﻛﻠﻴﺔ "ﻋﻠﻮم اﻹﻋﺎﻗﺔ و اﻟﺘﺄﻫﻴﻞ" " أول دﻓﻌﺔ ﻛﺎﻧﺖ 2017
 
-اي اﻟﻔﺮق ﺑﻴﻨﻬﻢ!!
ﻛﻠﻴﺔ ﻋﻠﻮم ذوي اﻻﺣﺘﻴﺎﺟﺎت اﻟﺨﺎﺻﻪ ﻟﻴﻬﺎ اﻷوﻟﻮﻳﺔ ﻓﻴﻤﺎ ﻣﻌﻨﺎه اﻧﻬﺎ ﺑﺘﺨ ّﺮج ﻣﻌﻠﻢ اول و اﺧﺼﺎﺋﻲ ﻓﻲ ﻧﻔﺲ اﻟﻮﻗﺖ، ﻛﻠﻴﺔ اﻟﺰﻗﺎزﻳﻖ ﺑﺘﺨ ّﺮج ﻣﻌﻠﻢ أو أﺧﺼﺎﺋﻲ وﻳﻜﻤﻦ اﻻﺧﺘﻼف اﻧﻚ ﺑﺘﺨﺘﺎر ﻣﺴﺎر واﺣﺪ ﻓﻴﻬﻢ إﻧﻤﺎ ﻓﻲ ﺑﻨﻲ ﺳﻮﻳﻒ اﻟﻤﺴﺎرﻳﻴﻦ ﻣﻊ ﺑﻌﺾ ﻓﻲ ﺑﺮﻧﺎﻣﺞ
واﺣﺪ .
-ﻫﻞ اﻟﻜﻠﻴﻪ ﺗﻘﺘﺼﺮ ﻋﻠﻲ ﻃﻼب ادﺑﻲ ﻓﻘﻂ او ﻋﻠﻤﻲ ﻓﻘﻂ؟ اﻟﻜﻠﻴﻪ ﺗﻤﺸﻞ اﻟﻔﺌﺘﻴﻦ ﻣﻦ ﻃﻠﺒﺔ اﻟﺜﺎﻧﻮﻳﺔ اﻟﻌﺎﻣﺔ  ادﺑﻲ و ﻋﻠﻤﻲ ) ﻋﻠﻮم / رﻳﺎﺿﺔ (
-اول دﻓﻌﻪ ﻟﻠﻜﻠﻴﻪ ﻛﺎﻧﺖ اﻣﺘﻲ؟
اﻟﻜﻠﻴﻪ ﻓﺘﺤﺖ ﻓﻲ 2016 و ﻛﺎن ﻟﻴﻨﺎ ﻣﻘﺎﺑﻠﺔ ﺷﺨﺼﻴﺔ ﺑﺘﺤﺪد ﻣﻦ ﻟﻬﻢ اﻟﺤﻖ ﻓﻲ دﺧﻮل اﻟﻜﻠﻴﺔ .

-اي اﻗﺴﺎم اﻟﻜﻠﻴﻪ؟ اﻟﻜﻠﻴﺔ ﻟﻴﻬﺎ ﺗﻨﺴﻴﻖ داﺧﻠﻲ ﺑﻤﻌﻨﻰ ﺑﺘﻨﻘﺴﻢ ﻟــ" ﻋﺎم" و "اﺳﺎﺳﻲ"
-ﻋﺎم: دول ﺑﻴﺘﻌﺎﻣﻠﻮا ﻣﻊ اﻋﺪادي و ﺛﺎﻧﻮي
- اﺳﺎﺳﻲ: و دول ﺑﻴﺘﻌﺎﻣﻠﻮا ﻣﻊ اﺑﺘﺪاﺋﻲ.


- ﻋﺎم ﺑﺘﻨﻘﺴﻢ اﻟﻲ:
) ﺟﻴﻮﻟﻮﺟﻲ . ﺑﻴﻮﻟﻮﺟﻲ ، ﻛﻴﻤﻴﺎء ، و اﻟﻔﻴﺰﻳﺎء  ( ﻻﻗﺴﺎم ﻋﻠﻤﻲ
و ) ﺟﻐﺮاﻓﻴﺎ ، ﺗﺎرﻳﺦ (ﻟﻘﺴﻢ ادﺑﻲ
و ﻓﻴﻪ ) ﻋﺮﺑﻲ و اﻧﺠﻠﺶ ﻻي ﺗﺨﺼﺺ(


- أﺳﺎﺳﻲ ﺑﺘﻨﻘﺴﻢ ــ ) ﻋﻠﻮم ، دراﺳﺎت ، ﻋﺮﺑﻲ ، اﻧﺠﻠﺶ ، ﻋﻠﻮم ﺣﺎﺳﺐ (

"ﻃﺎﻟﺐ ﻋﻠﻤﻲ ﻣﺘﺎح ﻗﺪاﻣﻪ ﺗﺨﺼﺼﺎت ﺷﻌﺐ ﻋﻠﻤﻲ ﺑﺲ و ﻃﺎﻟﺐ ادﺑﻲ ﺷﻌﺐ ادﺑﻲ ﺑﺲ "

-اﻟﻜﻠﻴﻪ ﻛﺎم ﺳﻨﻪ؟
- اﻟﻜﻠﻴﺔ 4 ﺳﻨﻴﻦ و ﻣﻤﻜﻦ ﺗﻌﻤﻞ دراﺳﺎت ﻋﻠﻴﺎ " دﺑﻠﻮﻣﺔ ، ﻣﺎﺟﻴﺴﺘﻴﺮ " ﺑﻌﺪ ﻣﺎ ﺗﺨﻠﺺ ﺑﺲ ﻓﻲ اﻟﻤﺠﺎل اﻟﻲ ﻫﺘﺘﺨﺼﺺ ﻓﻴﻪ ﺑﺲ ، و ﻓﻴﻪ ﻧﻈﺎم اﻟﺴﺎﻋﺎت اﻟﻤﻌﺘﻤﺪة اﻧﻚ ﻣﻤﻜﻦ ﺗﺎﺧﺪ ﻣﻮاد ﻣﻦ اﻟﺴﻨﺔ اﻟﺠﺎﻳﺔ و ﺗﺨﻠﺺ ﻓﻲ 3 ﺳﻨﻴﻦ course" "summer
-ﺑﻨﺘﺨﺼﺺ اﻣﺘﻲ ﻓﻲ اﻻﻋﺎﻗﻪ؟
- ﺑﺘﺨﺘﺎر ﻣﺠﺎل اﻻﻋﺎﻗﺔ اﻟﻲ ﺗﺤﺒﻪ ﻣﻦ ﺳﻨﺔ ﺗﺎﻧﻴﺔ ﺗﻜﻤﻞ ﻓﻴﻪ ال 3 ﺳﻨﻴﻦ ال ﺑﺎﻗﻴﺔ، وﻳﻔﻀﻞ ﻳﻜﻮن اﺧﺘﻴﺎرك ﻟﻠﻤﺠﺎل أو اﻟﺘﺨﺼﺺ
ﻋﻦ ﺗﺪرﻳﺐ ﻋﻤﻠﻲ ﻧﺰﻟﺘﻮا ﻓﻲ اﻻﺟﺎزه.


- اﻻﻓﻀﻞ أﺳﺎﺳﻲ و ﻻ ﻋﺎم؟
ده ﺑﻴﺮﺟﻊ ﻟﺮﻏﺒﺘﻚ اﻧﺖ ﺑﺲ أﺳﺎﺳﻲ ﻓﻴﻬﺎ ﻛﻞ ﻣﺠﺎﻻت اﻻﻋﺎﻗﺎت


-  أﺳﺎﺳﻲ ﻣﺠﺎﻻت اﻹﻋﺎﻗﺔ اﻳﻪ وﻋﺎم اﻳﻪ؟
اﺳﺎﺳﻲ: ) ﺻﻌﻮﺑﺎت ﺗﻌﻠﻢ ، إﻋﺎﻗﺔ ﺳﻤﻌﻴﺔ ، ﺑﺼﺮﻳﺔ ، ذﻫﻨﻴﺔ ، ﺗﻮﺣﺪ ، ﺗﺨﺎﻃﺐ ال ﻫﻲ * إﺿﺮاﺑﺎت اﻟﻨﻄﻖ و اﻟﻜﻼم * ، ﻣﻮﻫﻮﺑﻴﻦ و
ﻣﺘﻔﻮﻗﻴﻦ ( ﻓﻴﻪ ﻗﺴﻢ ﺗﺎﻧﻲ اﺳﻤﻮ اﻷﺟﻬﺰه اﻟﺘﻌﻮﻳﻀﻴﺔ ودا ﺑﻴﻜﻮن ﻟﻜﻠﻴﺎت ﺗﺎﻧﻴﺔ و ﻫﻨﺪﺳﺔ ﻃﺒﻴﻪ وﻃﺐ ﺑﺸﺮي .

- ﻋﺎم:  ) إﻋﺎﻗﺔ ﺳﻤﻌﻴﺔ ، ﺑﺼﺮﻳﺔ ، ﺗﺨﺎﻃﺐ ، ﺻﻌﻮﺑﺎت ﺗﻌﻠﻢ (

-ﺑﻨﺪرس ﻛﺎم ﻣﺎده؟ - ﺑﺘﺪرس 8 ﻣﻮاد ﺗﺮم اول و زﻳﻬﻢ ﺗﺮم ﺗﺎﻧﻲ ، ﻓﻴﻪ 4 ﻣﻮاد ﻣﺸﺘﺮﻛﺔ ﺑﻴﻦ ﺟﻤﻴﻊ اﻻﻗﺴﺎم ﻓﻲ ﻋﺎم و أﺳﺎﺳﻲ اﻟﻤﻮاد اﻷدﺑﻴﺔ "
اﻟﺘﺮﺑﻮﻳﺔ " و 4 ﻓﻲ اﻟﺸﻌﺒﺔ ال ﺗﺨﺘﺎرﻫﺎ زي اﻧﺠﻠﻴﺰي وﻋﺮﺑﻲ وﻫﻜﺬا

- ﺑﺘﺘﺨﺮج اﻳﻪ أو ﺑﺘﺸﺘﻐﻞ اﻳﻪ؟
* اﺧﺼﺎﺋﻲ ﺗﺮﺑﻴﺔ ﺧﺎﺻﺔ ﻓﻲ ﺗﺨﺼﺼﻚ * ﻣﺪرس ﺑﻐﺮﻓﺔ ﻣﺼﺎدر " ﻫﺘﻔﻬﻤﻬﺎ ﺑﻌﺪﻳﻦ ﻓﻲ اﻟﻜﻠﻴﺔ " * ﻣﺪرس ﻋﺎدي ﺣﺴﺐ اﻟﺘﺨﺼﺺ اﻷﻛﺎدﻳﻤﻲ
* ﻣﺪرس ذوي اﺣﺘﻴﺎﺟﺎت ﺧﺎﺻﻪ
* ﻣﻤﻜﻦ ﺗﻌﻤﻞ دراﺳﺎت ﻋﻠﻴﺎ و ﺗﺒﻘﻰ اﺧﺼﺎﺋﻲ ﻧﻔﺴﻲ ﻣﺶ دﻛﺘﻮر ﻣﺠﺮد اﻧﻚ ﺑﺘﺘﻌﺎﻣﻞ ﻣﻊ اﻟﺤﺎﻟﺔ ﺑﺲ ﺗﻬﻴﻴﺊ ﻧﻔﺴﻲ ﻳﻌﻨﻲ
* ﻣﻤﻜﻦ ﺗﻔﺘﺢ ﻣﺮﻛﺰ ﻓﻲ ﻣﺠﺎل اﻹﻋﺎﻗﺔ ﺑﺘﺎﻋﺘﻚ


- اﻟﻜﻠﻴﺔ ﺣﻠﻮة و ﻻ وﺣﺸﺔ ؟!
اﻟﻜﻠﻴﺔ ﺟﻤﻴﻠﺔ ﺟﺪاا و ﻣﺠﺎﻟﻬﺎ ﻣﻄﻠﻮب ﺑﺮا ﺟﺪاا ﻓﻲ اﻟﺪول اﻟﻌﺮﺑﻴﺔ و اﻷﺟﻨﺒﻴﺔ و ﻟﻴﻬﺎ اﻫﺘﻤﺎم ﺧﺎص ﻓﻲ دول اﻟﻮﻃﻦ اﻟﻌﺮﺑﻲ و
ﻓﺮﺻﺔ اﻟﺴﻔﺮ ﺳﻬﻠﺔ.

-ﻓﻴﻪ ﻛﻼم أن ﻃﺎﻟﺐ ﻋﻼج ﻃﺒﻴﻌﻲ و ﻫﻨﺪﺳﺔ ﻳﻘﺪروا ﻳﻌﻤﻠﻮا دراﺳﺎت ﻋﻠﻴﺎ ﻓﻲ ﻗﺴﻢ اﻷﺟﻬﺰة اﻟﺘﻌﻮﻳﻀﻴﺔ ﻣﺘﺎح ﻟﻴﻬﻢ ﻫﻤﺎ ﺑﺲ ﻣﺶ
اﺑﻨﺎء اﻟﻜﻠﻴﺔ اﻟﻠﻲ ذﻛﺮﺗﻬﺎ ﻓﻮق


- اﻟﻜﻠﻴﺔ ﻣﻮﻗﻌﻬﺎ ﻓﻴﻦ!! "ﺷﺮق اﻟﻨﻴﻞ اﻟﻤﺠﻤﻊ ال ﻓﻴﻪ ﻫﻨﺪﺳﺔ و ﺗﻤﺮﻳﺾ"

"و دا ﻟﻴﻨﻚ ﺻﻔﺤﺔ اﻹرﺷﺎد اﻟﺘﺎﺑﻌﺔ ﻟﻠﻜﻠﻴﺔ ﻟﻠﻲ ﺣﺎﺑﺐ ﻳﺴﺘﻔﺴﺮ ﻋﻦ اي ﺣﺎﺟﺔ و اﻻدﻣﻦ دﻛﺎﺗﺮة ﻓﻲ اﻟﻜﻠﻴﺔ
""",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.black,
                              )
                          )
                        ]
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Linkify(
                    onOpen: _onOpen,
                    textScaleFactor: 2,
                    text: "https://www.facebook.com/specialneedsfaculty",
                  ),
                ),
              ],
            ),
          )
        ),
      )
    );
  }

  Future<void> _onOpen(LinkableElement link) async {
    if (await canLaunch(link.url)) {
      await launch(link.url);
    } else {
      throw 'Could not launch $link';
    }
  }
}
