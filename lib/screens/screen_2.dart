import 'package:autism_facts/custom_widgets/video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {

  late VideoPlayerController _controller;

  @override
  void initState() {
    _controller = VideoPlayerController.asset('assets/screen2/screen2.mp4')
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
                Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "ما هو هو التوحد وما هي    اسبابه !؟",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'serif'
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "** للتوحد ..",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'serif'
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """هو اضطراب عصبي نمائي مهم تظهر فيه أعراض في مرحلة الطفولة المبكرة ولكن تبداء أعراض التوحد في المراحل المبكرة من مراحل النمو لدى بعض الأطفال ، و يعاني البعض منهم من الانحدار أو الاضطرابات في النمو الطبيعي. ينشأ الشك حول التوحد عندما يتأخر حديث الطفل أو يكون غير ذي صلة ، وغير مستجيب. تأتي الاسرة للطبيب لأن الطفل لا يتكلم حتى لو كان زملاؤه يتحدثون ، أو لأنه كان  يستطيع أن يقول كلمات مفردة مثل "الأم والأب" من قبل ،لكن  نسي هذه الكلمات في الأشهر الأخيرة.  

تظهر المشاكل الحسية بين الأعراض التي تظهر في مرض التوحد. تقلل المشاكل الحسية من امتثال الفرد للبيئة. يقلل من تكيف الفرد مع الحياة. مثلا تستمر المشاكل مثل الحساسية تجاه الصوت العالي ، والحساسية للمس ، والحساسية للضوء ، والمشاكل المتعلقة بالتوازن والاهتمام مع زيادة مشاكل النظام الاجتماعي المتغير مع تطور الفرد
""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "** اسباب التوحد ..",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """حقيقهً لا يوجد سبب معروف لمرض  (التوحّد / اضطراب طيف التوحّد / مرض الذاتوية / اضطراب التوحّد الكلاسيكي ). .
 ولكن نظرًا لتعقيد المرض واختلاف أعراضه وشدتها من شخص لآخر فمن المرجح وجود أكثر من سبب للمرض، وقد يلعب كل من " البيئة _ علم الوراثة " دورًا في ذلك،
 وتجدر الإشارة إلى وجود العديد من الخلافات حول حقيقة وجود صلة بين اضطراب طيف التوحّد واللقاحات التي تُعطى في فترة الطفولة، ولكن لم تثبت الأبحاث المكثفة التي أُجريت وجود أي علاقة بينهما ..
 لذلك تم سحب الدراسة الأصليّة التي أشعلت الجدل قبل سنوات وذلك لضعف التصميم وأساليب البحث المستخدمة فيها المشكوك بأمرها ..
ويجب التنويه إلى أنّ الإمتناع عن أخذ اللقاحات قد يؤدي إلى تعريض الأطفال والآخرين لخطر الإصابة بأمراض خطيرة وانتشارها، بما في ذلك السعال الديكيّ "Whooping" cough" .. أو الحصبة "Measles" أو النكاف "Mumps" ..
ومن أهم الأسباب التي قد تؤدي للإصابة باضطراب طيف التوحّد ما يأتي :-
""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            "[١]أسباب جينيّة :-",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """ يعتقد أغلب الباحثين أنّ بعض الجينات التي يرثها الطفل من والديه يمكن أن تجعله أكثر عرضًة لخطر الإصابة باضطراب طيف التوحّد، ومن المعروف أنّ التوحّد يعدّ من الحالات التي من الممكن أن تنتقل في العائلة..
 فعلى سبيل المثال: يمكن للأشقاء الأصغر سنًا لطفل مصاب بالتوحّد أن يصابوا بالتوحّد أيضًا، كما من الشائع إصابة التوأمين المتطابقين بالتوحّد، ومن الجدير بالذكر أنّه لم يتم تحديد ارتباط جينات محدّدة بمرض اضطراب طيف التوحّد، ولكن من الممكن لجينات المصاب أن تُعطي سمات بعض المتلازمات الجينية النادرة، مثل: متلازمة الكروموسوم اكس الهش ( Fragile X syndrome) ومتلازمة ويليام (Williams syndrome) ومتلازمة أنجلمان (Angelman syndrome) .
""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            "[٢]تشوهات في الدماغ :-",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """ يُعتقد أنّ التوحّد مرتبط بنمو الدماغ أثناء الحمل أو بعد الولادة، وقد أظهرت دراسات مختلفة نشاطًا غير طبيعي أو عيوبًا تركيبية في مناطق من الدماغ لدى بعض المصابين بالتوحّد، كما تمّ تحديد مستويات غير طبيعيّة لبعض النواقل العصبيّة مثل السيروتونين لدى بعض المصابين بالتوحّد، وهذا قد يلعب دورًا في تشويه الرسائل المستقبلة والمرسلة من الدماغ، ومع ذلك فإنّه يجب إجراء المزيد من الأبحاث لتحديد سبب المرض .""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            "[٣] العوامل البيئيّة :-",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """ يحاول الباحثون اكتشاف إن كانت عوامل مثل الالتهابات الفيروسيّة، أو الأدوية، أو المضاعفات أثناء الحمل، أو ملوثات الهواء، تلعب دورًا في تحفيز اضطراب طيف التوحّد .. ويفحص الباحثون، في الآونة الأخيرة، احتمال أن تكون عدوى فيروسية، أو تلويثا بيئيا (تلوث الهواء، تحديدا)، على سبيل المثال، عاملا محفزا لنشوء وظهور مرض التوحد .""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            "[4] عوامل أخرى:-",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """ ثمة عوامل أخرى، أيضا، تخضع للبحث والدراسة في الآونة الأخيرة، تشمل: مشاكل أثناء مخاض الولادة، أو خلال الولادة نفسها، ودور الجهاز المناعي في كل ما يخص الذاتوية. ويعتقد بعض الباحثين بأن ضررا (إصابة) في اللوزة (Amygdala) - وهي جزء من الدماغ  يعمل ككاشف لحالات الخطر - هو أحد العوامل لتحفيز ظهور مرض التوحد.
تتمحور إحدى نقاط الخلاف المركزية في كل ما يتعلق بالتوحد في السؤال عما إذا كانت هنالك أية علاقة بين التوحد وبين جزء من اللقاحات (Vaccines) المعطاة للأطفال، مع التشديد، بشكل خاص، على:
التطعيم (اللقاح) الثلاثي  .. MMR Triple vaccine   الذي يعطي ضد النكاف..  Mumps  الحصبة    Measles .. الحُمَيراء (الحصبة الألمانية - Rubella / German Measles)
لقاحات أخرى تحتوي على الثيميروسال   Thimerosal، وهو مادة حافظة تحتوي على كمية ضئيلة من الزئبق.
""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            "** وقد نتطرق احيانا الي الجينات التي تعكس لنا الطريقة التي يتم بها بناء إلانسان ..",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """حيث ان الجينات والمواد الغذائية تتفاعل لتمكين الخلية الواحدة (البويضة الملقحة) من المضاعفة والتفرق لتشكيل أنظمة وأجهزة خلايا متعددة، .. ولكل منها وظائف محددة خاصة بها. 
وهي التفاعل المستمر بين الشفرة الوراثية والمواد الغذائية (علم المورثات الغذائية) التي تنمي الإنسان في الرحم وفي السنوات الأولى، وكذلك يحافظ على صحة ووظيفة أفضل في مختلف مراحل العمر. 
ومع ذلك، تشير الأبحاث الحديثة أن مرض التوحد قد ينشأ عندما يكون لدى الطفل القابلية الوراثية و / أو أن نسبة الحمض الدهني أوميغا 3 غير طبيعي في غشاء الخلية قد تعرض إلى واحد أو أكثر من المسببات البيئية (التعرض للمعادن الثقيلة، أو فيروس أو بكتيريا)  .. ، مما أدى إلى عطب الخلايا (غالبا في الأمعاء والدماغ). وهذا يمكن أن يحدث "في الرحم" (أثناء الحمل) .. أو بعد الولادة (ما بعد الولادة). في نهاية المطاف هذه التفاعلات المختلة يمكن أن تؤثر على أجهزة الجسم، والأكثر وضوحا في الجهاز الهضمي، والغدد الصماء، والجهاز المناعي والجهاز العصبي المركزي.
 إن تعقيد الآلاف إن لم يكن الملايين من التفاعلات الممكنة قد تتحدى بشكل جيد الوصف. 
مع ذلك يمكننا بناء نموذج الطب الحيوي الأساسي لمرض التوحد استنادا إلى الأدلة العلمية المنشورة إلى اليوم. 
وفيما يلي عرض لبعض الآليات الأكثر شيوعا التي تتضمن ..
""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "مسببات اضطراب طيف التوحد :-",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            "الدليل الوراثي للاصابه بالتوحد : ..",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """هناك العديد من الدراسات الجينية تدعم الرأي القائل بأن التوحد عنصر وراثي، 
على سبيل المثال: أثبتت دراسة حديثة وجود صلة بين مرض التوحد وجين انجليرد 2 (EN2)، والتي قد تسهم في ما يصل إلى 40٪ من حالات التوحد في عموم السكان. 
و يساهم جين EN2 في التطور العصبي الطبيعي. 
وتقدم الدراسة دليلا جينيا إضافيا وهو أن جين EN2 قد يؤهب لاضطراب طيف التوحد، ويقترح المؤلفان أن الاضطرابات في التعبير عن الجين EN2 يمكن أن يغير بشكل كبير نمو الدماغ الطبيعي ".

وهناك أدلة متزايدة على أن الناس الذين يعانون من اضطرابات طيف التوحد (ASDs) لديها خلل في نظام هرمون السيروتونين.
على سبيل المثال: فإنه تم الإبلاغ عن التعدد الوظيفي للالسيروتونين الجيني الناقل منطقة المروج للتباحث في خطر اضطرابات طيف التوحد، ولتؤثر على حجم المادة الرمادية القشرية في الأطفال الصغار..
 النتائج تزيد من إمكانية العلاقة بين تعدد أشكال السيروتونين وتركيبة الدماغ في اضطرابات طيف التوحد التركيب قد يختلف بوصفها وظيفة من العمر و / أو التشخيص الفرعي لاضطرابات طيف التوحد.
""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """* الجينات وحدها لا يمكن أن تفسر الزيادة في حالات التوحد بين 1990-2000 (870٪). إذا كانت الوراثة هي إلقاء اللوم على كل جيل يكون لديه نفس حالات التوحد .
 بينما هناك جينات التي تهيئ للتوحد، ونحن نعرف أن هناك عنصر وراثي لمرض التوحد، وعلم الوراثة وحده لا يمكن أن يفسر الارتفاع الحالي للتوحد في الدول الصناعية. 
هذا يترك المواد الغذائية والسموم تتفاعل مع نقاط الضعف الوراثية كأقوى المرشحين مثل العوامل المسببة للتوحد .
""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """* سلامة أغشية الخلايا التي تحمي كل خلية يمكن أن تصبح ضعيفة، وترك الخلايا عرضة للخطر. 
إن هناك الكثير من الدعم في الدراسات الحيوانية والبشرية أن انخفاض امتصاص الأحماض الدهنية أوميغا 3 الناتج في أغشية الخلايا وضعف واضطرابات النمو العصبي.
 وهناك أدلة متزايدة على أن أوجه القصور في الأحماض الدهنية أو اختلالاتها قد يسهم في الاضطرابات العصبية النمائية في مرحلة الطفولة.
""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """* النقص في العناصر الغذائية الأساسية في نظامنا الغذائي الحديث، مثل الزنك والسيلينيوم، فيتامين ب 12، فيتامين ب 6 فيتامين دال، وحمض الفوليك، فقد يؤثر على التطور العصبي ويؤدي إلى الضعف في الأغشية الخلوية والعمليات الداخلية للخلايا. 
نقاط الضعف هذه تجعله عرضة للتأثير المدمر في معظم الأحيان من المستضدات البيئية والسموم. 
وقد استخدمت المكملات الغذائية في عدد من الدراسات والتي نجحت في تحسين وظائف المخ والسلوك عند اطفال التوحد
""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """* اختراق المنشطات الأفيونية ;نظرية فائض الأفيونية : اقترح بانكسب في عام 1979 "فائض المواد الأفيونية" نظرية التوحد. ووجد باحثون آخرون أن الببتيدات الأفيونية ("اكسورفينز" المشتقة من بروتينات الطعام المهضوم جزئيا) في البول من الأفراد الذين يعانون من التوحد. 
إن الجزيئات بهذا الحجم عادةً لا تعبر الغشاء المخاطي للأمعاء
""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """* المستضدات (مادة أجنبية سامة، والمعادن الثقيلة والفيروسات والبكتيريا) تهاجم الخلايا الضعيفة وتلحق الضرر بها، مما أدى إلى توقف الخلايا عن تنفذ وظيفتها بشكل طبيعي. يمكن للمستضدات اتلاف أو تغيير الشفرة الوراثية في الخلية، مما يسبب خللاً في الخلية.""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """* وهناك شواهد على أن نظام المثيلة المختل قد يؤدي لتغيير جيني غير طبيعي مما يؤدي إلى ظهور خلايا مختلة. فيتامين ب12 ، حمض الفوليك، فيتامين ب6 والمغنيسيوم يلعب دورا مركزيا في تنظيم عمليات الميثيل. يمكن أن يتعارض المثيلة غير طبيعي مع اروتين ميتالوثينين الذي ينظم نسب الزنك / النحاس والمعادن الأخرى في أغشية الخلايا. ويمكن أن يؤدي ضعف الهيكل الخلوي إلى اضطرابات نظامية متعددة، مما يؤثر على الجهاز الهضمي، والمناعة والغدد الصماء والجهاز العصبي المركزي.""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """* التوازن الدقيق بين البكتيريا النافعة والضارة في الأمعاء يمكن أن يخل من المضادات الحيوية، والمواد الحافظة والمواد المضافة السامة والسموم البيئية، مما يؤدي إلى حالة تعرف باسم دايسبايوسيس المعوية (وهي حالة يتم بموجبها توزيع أنواع البكتيريا في الأمعاء بشكل غير طبيعي).""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """* بعض أنواع البكتيريا تنتج مقداراً ضئيلاً من الأمينات . 
عندما تكون هذه البكتيريا متضخمة، فإنها يمكن أن تنتج كميات كبيرة من الأمينات.
 ودلت الاكتشافات الأخيرة في علم الأعصاب أن هناك مواقع للمستقبلات في نفس المناطق في الدماغ كناقل عصبي (ناقل كيميائي) المستقبلات، تشير إلى أن فرط نمو بكتيريا الأمعاء يؤثر على وظائف الدماغ. 
وتشير هذه النتيجة أن الأمينات الزائدة يمكن أن يؤدي إلى تشوش إشارات المخ وتؤثر على التعلم والانتباه والمزاج. 
في نمو الدماغ هذا يمكن أن يكون له آثار خطيرة في التأثير على التطور.
""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """* غيرها من البكتيريا تنتج العديدات السكرية الشحمية التي يمكن أن تتسبب في عدد لا يحصى من الآثار التخريبية في الدماغ، مما يؤثر على الذاكرة والتعلم والانتباه والمزاج. وهي التهابات شديدة. عادة العديدات السكرية الشحمية لا يمكن أن تعبر بطانة الأمعاء ما لم يكن هناك أحشاء راشحة (زيادة نفاذية الأمعاء) في هذه الحالة يمكن أن تدخل مجرى الدم وتحمل إلى الدماغ.
و أشارت الأبحاث على مدى السنوات ال 20 الماضية على تأكيد وجود علاقة بين النظام الغذائي للأم وولادة الرضيع المصاب،
""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """* النساء الذين لديهم رضيع واحد مع وجود خلل في الأنبوب العصبي لديهم زيادة كبيرة في مخاطر الظهور من جديد (40-50 لكل ألف مقارنة مع 2 لكل ألف عن كل الولادات).""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """* وأثبتت تجربة عشوائية أجريت من قبل مجلس البحوث الطبية في المملكة المتحدة انخفاضا في الخطر بنسبة 72٪ من ظهوره من جديد عن طريق اختبار فترة (أي قبل وبعد الحمل) لمكملات حمض الفوليك ( 4 ملغرام يوميا).""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """* وتشير البحوث الوبائية الأخرى، بما في ذلك البحث الذي أنجز في أستراليا، أن الحوادث الأولية من عيوب الأنبوب العصبي يمكن أيضا أن يوقى منه عن طريق حمض الفوليك إما كمكمل أو في النظام الغذائي.""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """* قد تم تأكيد ذلك في تجربة عشوائية من هانغاريا، والتي وجدت أن بعض الفيتامينات التي تحتوي على 800 ميكرو غرام من حمض الفوليك كانت فعالة في الحد من حدوث عيوب الأنبوب العصبي في الولادة الأولى. 
مقتطف من مجلس الصحة الوطنية والبحوث الطبية للنشر نمو الدماغ الطبيعي ووظيفته تعتمد على النقل النشط من الفولات عبر حاجز الدم في الدماغ. 
""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "** عوامل خطر الإصابة بالتوحد",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'serif'
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        Text(
                          """قد تظهر الذاتوية لدى أي طفل من أي أصل أو قومية، لكن هنالك عوامل خطر معروفة تزيد من احتمال الإصابة بالذاتوية. وتشمل هذه العوامل :
•	جنس الطفل: أظهرت الأبحاث أن احتمال إصابة الأطفال الذكور بالذاتوية هو أكبر بثلاثة ـ أربعة أضعاف من احتمال إصابة الإناث  
•	التاريخ العائلي: العائلات التي لديها طفل من مرضى التوحد، لديها احتمال أكبر لولادة طفل أخر مصاب بالمرض. ومن الأمور المعروفة والشائعة هو أن الوالدين أو الأقارب الذين لديهم طفل من مرضى التوحد يعانون، هم أنفسهم، من اضطرابات معينة في بعض المهارات النمائية أو التطورية، أو حتى من سلوكيات ذاتوية معينة.
•	اضطرابات أخرى: الأطفال الذين يعانون من مشاكل طبية معينة هم أكثر عرضة للإصابة بالذاتوية. هذه المشاكل الطبية تشمل: متلازمة الكروموسوم X الهَشّ (Fragile x syndrome )، وهي متلازمة موروثة تؤدي إلى خلل ذهني، التَصَلُّبٌ الحَدَبِيّ (Tuberous sclerosis)، الذي  يؤدي إلى تكوّن وتطور أورام في الدماغ، الاضطراب العصبي المعروف باسم "متلازمة توريت" (Tourette syndrome) والصرع (Epilepsy) الذي يسبب نوبات صرعية.
•	سن الوالد: يميل الباحثون إلى الاعتقاد بأن الأبوة في سن متأخرة قد تزيد من احتمال الاصابة بالتوحد.
""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                        Text(
                          "قد أظهر بحث شامل جدا أن الأطفال المولودين لرجال فوق سن الأربعين عاما هم أكثر عرضة للإصابة بالذاتوية بـ 6 أضعاف من الأطفال المولودين لآباء تحت سن الثلاثين عاما. ويظهر من البحث أن لسن الأم تأثيرا هامشيا على احتمال الإصابة بالذاتوية",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "** لماذا تتنوع السلوكيات في التوحد !",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'serif'
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """يقطع هذا النموذج طريقاً طويلا لشرح سبب وجود هذا التنوع في سلوكيات التوحد. وهذا ما يفسر أيضا لماذا تنجح بعض التدخلات لبعض الأطفال دون غيرهم، وتسليط الضوء على الحاجة لإجراء الاختبارات الطبية الحيوية كأساس لصياغة الفرضيات وتبرير نهج العلاج ..""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """• إدخال المواد الكيميائية السامة (المضادات الحيوية والمعادن الثقيلة والمبيدات الحشرية والمواد المضافة والمواد الحافظة) في السلسلة الغذائية لدينا""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """• زيادة 20-40 من أوميغا 6 والزيوت في نظامنا الغذائي، والحد من استهلاك اوميغا 3 من الاسماك. .. وتسخين هذه الزيوت ينتج الأحماض الدهنية غير المشبعة، والتي تضر سلامة غشاء الخلية """,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """• عندما تتعرض هذه الخلايا في وقت لاحق للمواد الكيميائية السامة والمعادن الثقيلة والمستضدات مثل البكتيريا والفيروسات التي يمكن أن تتلفها بسهولة، وبالتالي تفشل في أداء وظائفها الطبيعية.""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """• إن نقص التغذية يتفاعل مع تعدد الأشكال الجينية الموجودة مسبقا الناتجة في الهياكل الخلوية والأجهزة الخلوية الداخلية والتي هي أقل من الأمثل. """,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """• عندما تتعرض هذه الخلايا في وقت لاحق للمواد الكيميائية السامة والمعادن الثقيلة والمستضدات مثل البكتيريا والفيروسات التي يمكن أن تتلفها بسهولة، وبالتالي تفشل في أداء وظائفها الطبيعية. """,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """• نفاد المواد الغذائية في طعامنا نظرا لارتفاع كثافة الزراعة من نفس التربة عاماً بعد عام على مدى عقود. """,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """• يمكن لبطء مدة الطهي لفترات طويلة أن تدمير الفيتامينات""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """• الطبخ بالميكروويف يدمر بعض الفيتامينات والبيوفلافونويدس""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """• الدجاج الذي ينمو أسرع بعدة مرات على نظام غذائي يغلب عليه المضادات الحيوية.""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """• طرق معالجة الأغذية التي تدمر المواد المغذية. """,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """• أساليب الزراعة التي حلت محل الأسمدة الكيماوية للتحلل الطبيعي للمادة العضوية من قبل البكتريا.""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """• الاستخدام المفرط للمضادات الحيوية لدى الرضع والأطفال. """,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "**علاج التوحد ..",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'serif'
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """لا يوجد علاج شافٍ حتي الان لاضطراب طيف التوحد، وليست هناك طريقة علاج واحدة تناسب جميع الحالات. والهدف من العلاج هو زيادة قدرة الطفل على أداء الأعمال بأكبر قدر ممكن من خلال الحد من أعراض اضطراب طيف التوحد ودعم النمو والتعلم لديه. يمكن للتدخل المبكر خلال سنوات ما قبل المدرسة أن يساعد طفلك على تعلم المهارات الاجتماعية والوظيفية والسلوكية الحيوية ومهارات التواصل.

وقد تساعد مجموعة من طرق العلاج والتدخلات المنزلية والمدرسية في علاج اضطراب طيف التوحد، كما قد تتغير احتياجات طفلك بمرور الوقت. يمكن لمقدم الرعاية الصحية أن يوصي بخيارات ويساعدك على التعرف على الموارد في منطقتك.

إذا تم تشخيص طفلك باضطراب طيف التوحد، تحدث إلى الخبراء بشأن وضع إستراتيجية للعلاج وتكوين فريق من المتخصصين لتلبية احتياجات طفلك.
""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "** قد تشمل خيارات العلاج :-",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'serif'
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            "[1] العلاجات السلوكية والاتصالية ..",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """ تعالج العديد من البرامج مجموعة من الصعوبات الاجتماعية واللغوية والسلوكية المرتبطة باضطراب طيف التوحد. وتركز بعض البرامج على الحد من السلوكيات المثيرة للمشاكل، وتعليم مهارات جديدة. وتركز البرامج الأخرى على تعليم الأطفال كيفية التصرف في المواقف الاجتماعية أو التواصل بشكل أفضل مع الآخرين. كذلك يمكن أن يساعد تحليل السلوك التطبيقي (ABA) الأطفال على تعلم مهارات جديدة وتعميم هذه المهارات في حالات متعددة من خلال نظام التحفيز القائم على المكافآت.""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            "[2] العلاجات التربوية ..",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """غالبًا ما يستجيب الأطفال المصابون باضطراب طيف التوحد جيدًا للبرامج التربوية التي تتميز بدرجة عالية من التنظيم. وتتضمن البرامج الناجحة عادةً فريقًا من الاختصاصيين، ومجموعة متنوعة من الأنشطة لتحسين المهارات الاجتماعية ومهارات الاتصال والسلوك. وغالبًا ما يظهر الأطفال قبل سن المدرسة ممن يحظون بتدخلات سلوكية فردية مركزة تقدمًا جيدًا.""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            "[3] العلاج الأسري. ",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """يمكن أن يتعلم الآباء وأفراد الأسرة الآخرون كيفية اللعب والتفاعل مع أطفالهم المرضى بطرق تحفز المهارات الاجتماعية وتعالج المشكلات السلوكية وتعلمهم مهارات الحياة اليومية والتواصل.""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            "[4] العلاجات الأخرى ..",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """ بناء على احتياجات طفلك، فإن علاج النطق لتحسن مهارات التواصل، والعلاج المهني لتعليم أنشطة الحياة اليومية، والعلاج الطبيعي لتحسين الحركة والتوازن قد يكون مفيدًا. وقد يوصي الطبيب النفسي باتباع طرق لعلاج مشاكل السلوك.""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            "[5] الأدوية.",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """ليس هناك أي دواء في إمكانه تحسين العلامات الأساسية لاضطراب طيف التوحد، ولكن هناك أدوية معينة تساعد في السيطرة على الأعراض.
 فعلى سبيل المثال، قد توصف بعض الأدوية لطفلك في حال كان يعاني من فرط النشاط؛ تستخدم الأدوية المضادة للذهان أحيانًا في علاج المشكلات السلوكية الحادة؛ كما قد توصف مضادات الاكتئاب لعلاج القلق. أطلع مقدمي الرعاية الصحية بشأن أي دواء أو مكمل غذائي يتناوله الطفل أولاً بأول. ففي بعض الأحيان، قد تتفاعل الأدوية مع المكملات الغذائية، وتُسبب آثارًا جانبية خطيرة.
""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            "[6] تحليل السلوك التطبيقي يُعدّ تحليل السلوك التطبيقي: Applied behavior analysis ..",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """أحد أنواع علاجات مرض التوحد المُثبت فعاليته في تحسين مهارات المُصابين وتقليل حاجتهم إلى بعض الخدمات الخاصّة، حيثُ يعمل على تطوير سلوكيات مُحددة، مثل: المهارات الاجتماعية، والتواصل، والقراءة، والمهارات الاكاديمية، بالإضافة إلى إكساب الطفل مهارات التعلم التكيّفي، والتي تتضمّن المهارات الحركية الدقيقة، وأسس النظافة الشخصية، والقدرات اللازمة لأداء المهام المنزلية، والالتزام بالمواعيد، وكذلك الكفاءة الوظيفية، وتجدر الإشارة إلى إمكانية اتباع التحليل السلوكي التطبيقي كعلاج لمُختلف الاضطرابات النفسية بغضّ النّظر عن عمر المُصاب، حيث يُمكن تطبيقه في المدرسة، أو المنزل، أو مكان العمل، أو العيادات الطبية وينقسم تحليل السلوك التطبيقي بدوره إلى عدّة أنواع.
 نذكرها فيما يأتي:
""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """التدريب التجريبي المنفصل: : Discrete trial training)
 حيثُ يعمل هذا النوع على تحديد سلوك معين يرغب المُصاب باكتسابه، ومن ثمّ تقسيمه إلى خطوات بسيطة لتسهيل تطبيقه.
""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """التدخل السلوكي المكثف المبكر: : Early intensive behavioral interventio
 ويُعتبر هذا النوع من العلاجات المُخصّصة للأطفال الذين تقل أعمارهم عن 5 سنوات. 
""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """التدريب على الاستجابة المحورية: Pivotal response treatment 
حيثُ يركّز على جوانب مهمة من مراحل تطور الطفل المُصاب، كالإدارة الذاتية، وتولي المسؤولية عند التعامل مع بعض المواقف الاجتماعية. 
""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """العلاجات العائلية :تتمثل العلاجات العائلية بتعليم الوالدين وأفراد العائلة بشكلٍ عام كيفية التفاعل واللعب مع أطفالهم المُصابين بالتوحّد، ممّا يضمن تحقيق مجموعة من النتائج، بما يتضمّن تعزيز مهارات التفاعل الاجتماعي، والتحكّم بالسلوكيات غير الصحيحة، وتعلّم مهارات الحياة اليومية، بالإضافة إلى التّواصل السليم.""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """التدخل السلوكي اللغوي :: Verbal behavior intervention
حيثُ يهدف هذا النوع إلى تحسين المهارات اللفظية لدى الطفل المُصاب بالتوحد. العلاجات التربوية تتضمّن العلاجات التربوية مجموعة من البرامج التربوية شديدة التنظيم، والتي تعمل على تحسين وتطوير المهارات الاجتماعية، والتواصل، والسلوكيات، ولنجاح هذا النّوع من العلاجات يجدُر توافر فريق من المُختصين، بالإضافة إلى مجموعة متنوعة من النشاطات، وقد أثبتت التجارب أنّ تطبيق هذه التدخلات السلوكية بشكلٍ مُكثّف وفردي لأطفال التوحّد الذين تقع أعمارهم ضمن فئة ما قبل المدرسة من شأنه تحقيق التطور المطلوب، والاستجابة الجيدة.
""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """علاج النطق :ُساعد علاج النطق على تجاوز مشاكل التواصل التي قد يُعاني منها المُصابين بمرض التوحد، ويُمكن تحقيق ذلك عن طريق الاستعانة بأخصائي النطق لتعليم المُصاب بالتوحّد كيفية مُطابقة تعابير وجهه مع ما يشعر به، وكيفية تفسير لغة الجسد، وطريقة الرد على الأسئلة، بالإضافة إلى العمل على تعليمه كيفية إيجاد وملاحظة الفروق الدقيقة في نبرات الصوت، والمُساعدة على تقوية طريقة النّطق وزيادة وضوحها.""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            "[7]العلاج الوظيفي يتضمّن العلاج الوظيفي: Occupationa  therapy ",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """تطوير المهارات اللازمة للحياة اليومية، وتحقيق نوع من الاعتماد على الذات والاستقلال، ففي البداية يتمّ تدريب المُصاب على ذلك خلال جلسات علاجية تتراوح مدّتها في العادة بين 30-60 دقيقة، وبعد مرور فترة مُعينة، يستطيع المُصاب البدء بتجربة وتطبيق هذه المهارات خارج أوقات جلسات التدريب، ومن المهارات التي يتمّ تعليمها للطّفل المُصاب بالتوحد خلال جلسات العلاج الوظيفي: ارتداء الملابس دون أي مساعدة، وأسس النظافة الشخصية، وبعض المهارات الحركية الدقيقة.

حصص المهارات الاجتماعية تهدف حصص المهارات الاجتماعية كما تُظهر التسمية إلى المُساعدة على تحسين طريقة التفاعل الاجتماعي للطّفل المُصاب بالتوحد مع الآخرين، بالإضافة إلى تعليمه كيفية تكوين روابط اجتماعية معهم، ويُمكن التدريب وتطبيق هذه الحصص في مُختلف الأماكن؛ كالمنزل، أو المدرسة، أو المجتمع، وتُدار هذه الحصص عن طريق الأخصائي، ومن المهمّ التعاون مع الأهالي وتدريبهم بما يُمكّن من تحسين مهارات الطفل الاجتماعية.

 ركوب الخيل العلاجي أظهرت الدراسات أنّ ركوب الخيل:  Hippotherapy يُساعد الأطفال الذين تتراوح أعمارهم بين 5 أعوام و16 عامًا على تطوير مهاراتهم الاجتماعية والنّطقية، وتُقلّل سرعة الانفعال لديهم، كما تُخفّف من حالة فرط النشاط في حال مُعاناة الطفل منها، حيثُ يقوم الأخصائيون في هذا النّوع من العلاجات بتوجيه الطفل المُصاب أثناء قيامه بركوب الخيل، فمن المعروف أنّ رياضة ركوب الخيل تُعتبر أحد أنواع العلاجات البدنية، فيتعلّم الطفل من خلالها كيفية التفاعل مع الخيل، والاستجابةً لتحرّكات الخيل.

 نظام التواصل عن طريق تبادل الصور يقوم نظام التواصل عن طريق تبادل الصور : Picture exchange Communication
على تعليم الأطفال المصابين بالتوحد استخدام الصور للدلالة والحصول على الأشياء وممارسة النّشاطات، أيّ أنّه مُصمّم لبعض الحالات الخاصة؛ كعدم التحدث، أو بطء الاستيعاب، أو إيجاد صعوبة في الفهم، وقد أوضحت الأبحاث أنّ اتباع هذا النّظام قد يُحقق بعض التطور في مشاكل التواصل التي يواجهها المُصابين بالتوحّد، إلّا أنّ تأثيره في مشاكل النّطق يكاد يكون معدومًا، ومن سلبيات هذا النظام أنّه لا يكوnن فعّالًا للأطفال الذين لا يرغبون بالتواصل بشكلٍ عام، أو الذين لا يمتلكون أيّ اهتمام أو رغبة تجاه أشياء أو أنشطة أو أطعمة مُعينة.

 العلاجات الدوائية تتوفر مجموعة من الأدوية التي قد يصِفها الطبيب المُختصّ للسّيطرة على بعض الأعراض لدى مريض التوحّد، فعلى سبيل المثال؛ قد يُعاني المُصاب بمرض التوحد من مشاكلٍ سلوكيةٍ شديدة، ويُمكن تخفيف المشاكل السلوكية المُصاحبة للتوحد بطرق علاجية مُختلفة؛ من بينها استخدام الأدوية المضادة للذهان  Antipsychotics)، وفي الحالات التي يُعاني فيها الطّفل من القلق فقد يصِف الطبيب مضادات الاكتئاب ( Antidepressants)، ويُشار إلى احتمالية وصف الطبيب لبعض الأدوية المُخصصة لعلاج اضطرابات فرط الحركة لمرضى التوحد عند الحاجة لذلك، وتجدر الإشارة هنا إلى ضرورة إخبار الطاقم الطبي عن أيّ أدوية أو مكمّلات غذائية يستخدمها الطّفل المُصاب بالتوحّد، نظرًا لاحتمالية حدوث بعض التفاعلات بينها، والتي قد تؤدي أحيانًا إلى أعراضٍ جانبية ضارّة. الاضطرابات الصحية الأخرى المُرافقة لمرض التوحد هناك مجموعة من الاضطرابات التي قد يُعاني منها العديد من الأفراد في مُختلف الفئات العمرية والتي قد تُصاحب الإصابة بمرض التوحد.
""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "** أبرزآليات العلاج :- ",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'serif'
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """مشاكل الانتقال إلى مرحلة البلوغ يواجه المصابين بمرض التوحد خلال مرورهم بمرحلة المراهقة بعض الصعوبات في فهم التغيرات الجسدية التي تطرأ على أجسادهم، بالإضافة إلى حقيقة أنّ المواقف الاجتماعية تزداد تعقيدًا خلال مرحلة المراهقة، وتكون السيطرة على المشاكل السلوكية خلال هذه المرحلة أكثر صعوبة، كما يقلّ تقبل الاختلافات بين الأفراد عامّةً، وهذه كلّها تُشكّل عوائق تتطلّب اتخاذ الطُرق المُناسبة للتّعامل معها والسّيطرة عليها.""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            """(1) اضطراب نقص الانتباه مع فرط النشاط يُعدّ اضطراب نقص الانتباه مع فرط النشاط
 ( Attention Deficit Hyperactivity Disorder)
""",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """أحد الاضطرابات الشائعة لدى المُصابين بمرض التوحد، ويُعاني المُصاب بهذه الحالة من صعوبةٍ في التركيز، بالإضافة إلى الاندفاع وفرط النشاط، ممّا يُسبب العديد من المشاكل في الحياة اليومية، سواء أكان ذلك في المدرسة، أم المنزل، أم العمل، وأمّا بالنسبة لعلاج المصابين بمرض التوحد ومتلازمة نقص الانتباه وفرط النشاط في آن واحد؛ فإنّ الخيار يجب أن يُدرس جيدًا قبل اعتماده، فالأدوية تُعدّ خيارًا أساسيًا في العادة لعلاج حالات فرط النشاط ونقص الانتباه، في حين أنّ الخيارات الدوائية لا تزال محدودة في حال الإصابة بمرض التوحد، ومن جهة أخرى تبيّن أنّ فعالية الأدوية المُنشطة -والتي شاع استخدامها في علاج فرط النشاط ونقص الانتباه- كانت أقل فعالية لدى الأطفال المصابين بالمرضين معًا، فضلًا عن الآثار الجانبية المُحتملة، ومنها فقدان الشهية، ولأنّ التغذية أمر مهم جدًا للمصابين بالتوحد تجنبًا لمعانتهم من سوء التغذية، واستحضارًا لما ذُكر أعلاه؛ فإنّ العلاجات السلوكية والمعرفية تُعدّ الخيار الأولي في علاج المصابين بالمرضين معًا، وقد يُلجأ لبعض أصناف الأدوية إن دعت الحاجة لذلك.""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            """(2) الصرع يُعرّف الصرع: Epileps""",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """على أنّه اضطراب يُصيب الدماغ، ويؤدّي إلى المُعاناة من نوبات التشنج بشكلٍ مُتكرر، ويُعتبر الصرع من أكثر المشاكل الصحيّة التي تظهر لدى المُصابين بالتوحد.
حيث نشرت المجلة البريطانية للطب النفسي ( British Journal of Psychiatry) 

في دراسةٍ نشرتها عام 2011م أنّ نسبة الإصابة بمرض الصرع تتراوح بين 11-39% لدى مرضى التوحد، أيّ أنّ نسبة الإصابة بالصرع تكون أعلى لدى المُصابين بالتوحد مقارنةً بعامّة الأفراد.
ومن الجدير بالذكر أنّ تقييم وعلاج الصرع لدى المُصابين بالتوحد لا يختلف عن الطُرق المُتبعة في الصرع كحالةٍ مستقلة، فمن الممكن استخدام الأدوية المضادة للصرع Anti-epileptic drugs) 
في حال فشل العلاجات غير الدوائية في السّيطرة على النّوبات، وتتضمّن العلاجات غير الدوائية:
""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            """(3) القلق :-""",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """ يُعتبر الشعور بالقلق خلال مراحل نمو الأطفال أمرًا طبيعيًا، إلا أنّ الأطفال المُصابين بالتوحّد يُعانون منه بشكلٍ أشدّ وأكثر تكرارًا مقارنةً بغيرهم، وعادةً ما تظهر لديهم أعراض القلق على هيئة سِمات لمرض التوحد، فمثلاً؛ يقومون بتكرار حركة مُعينة بشكلٍ ثابت، أو تزداد لديهم سلوكيات الاستحواذ والتملك، واتباع بعض الطقوس الخاصة بهم، بالإضافة إلى مقاومتهم لأيّ تغييرات قد تطرأ على روتينهم اليومي، وعلى أيّة حال قد يُساهم مرور الطّفل بتجربة الشعور بالقلق في اكتسابه المعرفة الكافية والقدرة على التحكّم بهذه المشاعر، ومن الممكن اللجوء إلى الطبيب النفسي للمساعدة في حالات القلق الشديدة، حيث يستطيع الطبيب العمل بشكلٍ مباشر مع الطفل وعائلته لتعليمهم بعض الاستراتيجيات التي تُساهم في التقليل من الشعور بالقلق، ويُمكن تلخيص النهج المُتبع في السّيطرة على الشعور بالقلق ببعض النّقاط""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            """(4) اتباع النظام الغذائي الكيتوني ( Ketogenic diet) 
وتحفيز العصب المبهم: Vagus nerve stimulation).
""",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """ اضطرابات النوم يُعاني المُصابين بمرض التوحد من اضطراباتٍ مُختلفةٍ في النوم؛ تتمثل بمواجهة صعوبة في النوم والاستيقاظ المتكرر أثناء النوم، بالإضافة إلى أنّ بعضهم يستيقظون باكرًا بشكلٍ يومي بغضّ النّظر عن وقت خلودهم إلى النوم، ويُمكن القول أنّ هذه الاضطرابات تظهر نتيجةً للعديد من العوامل؛ مثل: شعورهم بالقلق والاكتئاب بشكلٍ أكبر مُقارنةً بغيرهم من الأطفال، وبالتالي يبقون يقِظين ويقضون وقتًا طويلًا في التفكير، بما يحول دون استغراقهم في النوم، كما أنّ مُعاناة الطفل المصاب بالتوحد من اضطرابات الجهاز الهضمي التي سنبينُهما فيما بعد؛ تنعكس على قدرتهم على النّوم ليلًا، ويُشار إلى أنّ مشاكل السلوك التي تظهر لدى المُصابين بالتوحد قد تلعب دورًا في ظهور اضطرابات النوم؛ والتي ترتبط برفض الطفل الانصياع إلى الحدود المفروضة عليه أو التي تمّ وضعها له، ويُشار إلى أنّ العديد من الأدوية الموصوفة للطفل المُصاب بالتوحد تؤثر في نظام نومه، وقد تؤدي بدورها إلى العديد من مشاكل النوم، وعلى أيّة حال، توجد مجموعة من النصائح التي يُمكن على الأهل اتباعها في سبيل تحقيق ظروف نوم مُثلى لأطفالهم، ممّا قد يُساعد على التقليل من اضطرابات النوم.""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """وفيما يلي ذكر لبعض هذه النصائح: تجهيز غرفة النوم بحيث تكون مُعتمة وهادئة إلى حدٍّ ما، مما قد يُسهّل الاستغراق في النوم. وضع روتين معين للنوم والالتزام به. الحفاظ على ثبات واستقرار نظام النوم والاستيقاظ، حتّى في أيام الإجازات. 

الحرص على عدم إطعام الطّفل وإشرابه الأطعمة والسوائل التي تحتوي على الكافيين ( Caffeine). الحرص على ممارسة الطفل للتمارين الرياضية بشكلٍ يومي. اضطرابات الجهاز الهضمي تتضمّن اضطرابات الجهاز الهضمي التي قد يُعاني منها مريض التوحد: الإمساك أو الإسهال المزمن، ويُعتبر الإمساك مزمنًا عند استمراره لمدةٍ تصِل إلى أسبوعين أو أكثر، ويُعزى حدوثه إلى العديد من العوامل، منها: اتباع نظام غذائي مقيد لا يُغطي حاجة الجسم من الألياف الضرورية لحركة الأمعاء، واستخدام بعض أدوية علاج التوحد التي تُسبب الإمساك كأحد الأعراض الجانبية لاستخدامها، وبعض المشاكل السلوكية أو الحسّية التي قد تؤثر في ذهاب الطفل المُصاب بالتوحد إلى دورة المياه بشكلٍ مُنتظم، والإصابة بالاضطرابات الأيضية التي قد تؤثر في حركة الأمعاء فتجعلها بطيئة وغير طبيعية، وفي بعض الأحيان، قد يُصاب الطفل بالإمساك نتيجةً لمشاكلٍ عصبية أو تشريحية، وفيما يتعلق بالإسهال المزمن، فقد يحدث نتيجةً لعواملٍ عدّة؛ من بينها الإصابة بحالة عدم تحمّل اللاكتوز 
""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            """العلاج السلوكي المعرفي ( Cognitive-behavioral therapy)""",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """حيث يُساعد على اكتساب الأطفال بعض المهارات المهمّة لتغيير نظرتهم وتفكيرهم تجاه المواقف التي تُشعرهم عادةً بالقلق. التعرّض التدريجي للمواقف، حيثُ تتوافر مجموعة من التدخلات التي يستطيع الطبيب القيام بها لمُساعدة الطفل على مواجهة مخاوفه. تمارين الاسترخاء. العلاجات الدوائية، إذ تتوفر بعض الخيارات التي يُمكن استخدامها لعلاج القلق المُصاحب لمرض التوحد، ولا يُلجأ إليها إلّا في الحالات التي تفشل فيها الاستراتيجيات السلوكية الأخرى في السّيطرة على حالة القلق لدى الطّفل مع استمرار تأثيرها السلبي في حياته اليومية. الاكتئاب إنّ معدل الإصابة بالاكتئاب لدى مرضى التوحد أعلى مُقارنةً بغيرهم من السليمين، ويُمكن علاج الاكتئاب باستخدام بعض الأدوية والعلاجات السلوكية، وفي هذا السّياق يُشار إلى أنّ مثبطات استرداد السيروتونين الانتقائية: Selective serotonin reuptake inhibitors) 
	
تُستخدم كعلاج دوائي للأشخاص المُصابين بالاكتئاب بشكلٍ عامّ، إلا أنّ هذا النّوع من الأدوية لا يعمل بفعالية في حالات مرضى التوحد المُصابين بالاكتئاب، وبناءً على توصيات إدارة الغذاء والدواء يُمكن اللجوء إلى نوعين من أدوية مضادات الذهان لعلاج المشاكل السلوكية المُصاحبة لمرض التوحد، وهما: الريسيبيريدون ( Risperidone)، والأريبيبرازول ( Aripiprazole)

وأمّا فيما يتعلق بالعلاجات السلوكية؛ فيُعتبر العلاج السلوكي المعرفي من أكثر العلاجات استخدامًا للتخفيف من أعراض الاكتئاب المُصاحب لمرض التوحد.
 اضطرابات الأكل تُعتبر اضطرابات الأكل والسّمنة أحد المشاكل المُصاحبة لمرض التوحد، لذلك يجدُر بطبيب الأطفال معرفة كلّ ما يتعلق بهذه الحالات، ومناقشتها مع أهل الطفل، بما يتضمّن ارتباط ذلك بالاضطرابات الحسّية، والقلق، والأعراض الجانبية المُرافقة لاستخدام بعض الأدوية، والعُزلة الاجتماعية، ومستوى النشاط البدني للطفل، وصعوبة رضا الأطفال عن أصناف الطّعام التي يتمّ تقديمها إليهم، ويُنصح الأهل بتقديم أكثر من نوع طعام للطّفل ليقوم بالاختيار بينهم، مع الأخذ بعين الاعتبار أن تكون الوجبات المُقدمة ضمن النّظام الغذائي المُوصى به لهم، فعلى سبيل المثال؛ إذا ما كان النظام المُتبع يحتوي خضروات على وجبة العشاء، فيجب تقديم عدّة أنواع من الخضروات له ويبقى قرار اختيار النوع بين يدي الطفل نفسه، ويجب التأكد أنّ ابتعاد الطفل عن تناول نوع معين من الأغذية غيرُ مرتبطٍ بوجود حساسية لديه تجاهها، وإنّما مجرد سلوكنظرًا لعدم إمكانية التعافي من اضطراب طيف التوحد، يسعى العديد من الآباء إلى الحصول على علاجات تكميلية أو بديلة، ولكن لا تثبت فعالية هذه العلاجات سوى أبحاث قليلة إن وجدت. قد تعزز السلوكيات السلبية عن دون قصد. ويحتمل أن تكون بعض العلاجات البديلة خطيرة.
""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    "العلاجات التكميليه او البديله  :-",
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'serif'
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """التدليك. قد يبعث التدليك على الاسترخاء، ولكن لا يوجد دليل كافٍ لتحديد ما إذا كان يحسن من أعراض اضطراب طيف التوحد أم لا.""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """العلاج بالتعامل مع الخيل أو الحيوانات الأليفة. يمكن أن توفر الحيوانات الأليفة الرفقة والترفيه، ولكن هناك حاجة إلى مزيد من الأبحاث لتحديد ما إذا كان التفاعل مع الحيوانات يحسن أعراض اضطراب طيف التوحد أم لا.

""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      color: Colors.blueAccent,
                      child: Text(
                        """العلاجات التكميلية والبديلة ضارة، ولكن لا يوجد دليل على فائدتها""",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'serif'
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            """الأنظمة الغذائية الخاصة. """,
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """لا يوجد دليل على أن الأنظمة الغذائية الخاصة تعد علاجًا فعالاً لاضطراب طيف التوحد. وبالنسبة للأطفال في مرحلة النمو، يمكن أن تؤدي الأنظمة الغذائية الصارمة إلى نقص غذائي. إذا قررت اتباع نظام غذائي صارم، يُرجى التعاون مع أخصائي التغذية لوضع خطة وجبات مناسبة لطفلك.""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            """مكملات الفيتامينات والمعينات الحيوية. """,
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """على الرغم من أنها غير ضارة عند استخدامها بكميات طبيعية، فإنه لا يوجد دليل على أنها مفيدة لتحسين أعراض اضطراب طيف التوحد، ويمكن أن تكون المكملات الغذائية باهظة الثمن. تحدث مع الطبيب عن الفيتامينات وغيرها من المكملات الغذائية، وعن الجرعة المناسبة للطفل.""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            """العلاج بالوخز بالإبر.""",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """ تم استخدام هذا العلاج بهدف تحسين أعراض اضطراب طيف التوحد، ولكن لم تدعم الأبحاث فعالية الوخز بالإبر.""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      margin: EdgeInsets.only(right: 10),
                      color: Colors.blueAccent,
                      child: Text(
                        """بعض العلاجات التكميلية والبديلة الدليل على نفعها، ومن المحتمل أن تكون خطيرة""",
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'serif'
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            """العلاج بالاستخلاب""",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """. يقال إن هذا العلاج يزيل الزئبق والمعادن الثقيلة الأخرى من الجسم، ولكن لا توجد علاقة معروفة بينه وبين اضطراب طيف التوحد. لا تدعم أي أدلة بحثية العلاج بالاستخلاب لاضطراب طيف التوحد، ويمكن أن يكون خطيرًا للغاية. في بعض الحالات، لقي الأطفال الذين عولجوا بالاستخلاب مصرعهم.""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            """علاجات الأكسجين عالي الضغط.""",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """ إن الأكسجين عالي الضغط علاج ينطوي على تنفس أكسجين داخل غرفة مضغوطة. لم يثبت هذا العلاج فعالية في علاج أعراض اضطراب طيف التوحد، ولم يتم اعتماده لهذا الاستخدام من قبل إدارة الغذاء والدواء (Food and Drug Administration (FDA)).""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          margin: EdgeInsets.only(right: 10),
                          color: Colors.blueAccent,
                          child: Text(
                            """تسريبات الغلوبيولين المناعي الوريدية (IVIG).""",
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'serif'
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          """ لا يوجد دليل على أن استخدام تسريبات الغلوبيولين المناعي الوريدية (IVIG) تحسن من اضطراب طيف التوحد، ولم تعتمد إدارة الغذاء والدواء (FDA) منتجات الغلوبيولين المناعي لهذا الاستخدام.""",
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'serif'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    '10 نصائح تساعدك في التعامل مع طفل "التوحد" :-',
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'serif'
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """أولا: تقدير الحالة النفسية: الطفل المتوحد إنسان أولا وأخيرا، هناك ما يفرحه ويجعله سعيدا وهناك ما يحزنه ويجعله مكتئبا، حتى وإن كنا نجهل السبب فشأنه شأن الطفل العادي قد يكون في حالة نفسية وجسدية طيبة، فيتعاون مع الآخرين، وقد يكون في أحيان أخرى في حالة نفسية وجسدية سيئة لذلك لا يتجاوب مع من يتعامل معه ويرفض التعاون معه.""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """ثانيا: تنمية الثقة بالنفس والاستقلالية: يعاني الطفل التوحدي من فقدان الثقة وغياب المبادأة، ولذلك ينبغي أن نشجعه على فعل كل شيء بنفسه. وعلينا أن ننتبه إلى عدم زجره أو الصراخ في وجهه حينما لا يفعل ما نطلبه منه بشكل صحيح أو حينما يفعل شيئاً خاطئاً من تلقاء نفسه، لأن ذلك من شأنه أن يزيد من فقدان الثقة والاستقلالية لديه، ويجب علينا ألا نعوده على الاعتماد على الآخرين بل نعوده على الاستقلالية والاعتماد على ذاته، والذي سيتحقق من خلال عدم تلبية كل ما يطلبه الطفل من دون أن يبذل أي جهد.""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """ثالثا: محاولة تقريب ودمج الطفل مع أقرانه: يميل الأطفال المصابون بالتوحد إلى التعامل مع الكبار والاتصال بهم، ويكون تعاملهم مع الكبار أسهل من تعاملهم مع الأطفال الصغار، وقد يرجع هذا إلى تفهم الكبار للطفل المتوحد أو نتيجة لتعوده عليهم أو ربما لأنهم يحاولون تطويع أنفسهم لخدمته، ولذلك علينا تقريب الطفل المتوحد من الأطفال الآخرين ونعلمه كيف يلعب ويتفاعل معهم.""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """رابعا: شغل الطفل عن الحركات النمطية: إن أغلب الأطفال_التوحديين لديهم حركات نمطية مبتكرة يفعلونها ليل ونهار، وينزعجون حينما تنهاهم عن فعلها وتحاول وقفها، لذلك علينا أن ننهاهم عنها ليس بالكلام أو بأمرهم بالتوقف عنها أو محاولة وقفها عنوة أو معاقبتهم عند فعلها وإنما ننهاهم عنها ونمنعها بأن نشغلهم دائما ولا نتركهم مع أنفسهم يكررون هذه الحركات والأفعال النمطية.""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """خامسا: التركيز على التواصل: الإنسان لا يكون إنساناً إلا بوجود الآخرين ولا يكتسب مدى إنسانيته إلا بمدى تواصله معهم، ولذلك فمن المهم أن نركز في تعاملنا مع الطفل المتوحد على تنمية التواصل البصري واللفظي، فلا يكفي أن نعطي الطفل ما يريده أو يرغبه بمجرد نجاحه في مهمة ما طلبت منه، بل يجب ألا تعطيه هذا الشيء إلا عندما ينظر في وجهك، وكذلك تشجعه على النظر في وجه من يتحدث معه وبالنسبة للأطفال الذين توجد لديهم القدرة على الكلام فيجب أن نشجعه على الكلام حتى يحصل على ما يريد.""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """سادسا: التأكد من فهم الطفل لما نطلبه منه وقدرته على النجاح فيه: عندما نطلب من #الطفل مهمة ما أو فعل أي نشاط. علينا أولا أن نتأكد من مدى فهم الطفل لنا ولما نطلبه منه، لأنه أحيانا يكون رفض الطفل أو إبداؤه للمقاومة عند التدريب لا يرجع إلى عدم رغبته في التعاون مع معلمه أو والده أو لمجرد الرفض، وإنما إلى عدم فهمه لما نطلبه منه.""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """سابعا: التدريب على اللعب: أثبتت الأبحاث والدراسات أن للعب دوراً مهماً في النمو فهو أسلوب وطريقة لتفريغ الانفعالات وعلاج الاضطرابات الانفعالية. ولما كان للعب هذه الأهمية في حياة الإنسان فكان من المهم أن ندرب الطفل المتوحد على اللعب وكيفية الاستمتاع به ومشاركة الآخرين في اللعب، وبعض الأطفال التوحديين يفضلون الألعاب التركيبية والميكانيكية وتنظيم الألعاب في صفوف وأشكال منظمة وعلينا استغلال هذا في تدريبهم وتعلمهم لإحداث مزيد من التقدم.""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """ثامنا: توحيد طرق التعامل: قد لا يحدث تقدم في حالة الطفل المتوحد رغم اتباعنا لمعظم المبادئ والنصائح السابق ذكرها ويرجع عادة السبب في كثير من الأحيان إلى أن أسلوب التعامل في المنزل يختلف عن أسلوب التعامل في المدرسة أو المركز أو المؤسسة التي يوجد بها، لذلك يجب أن يكون الأسلوب الذي نتعامل به مع الطفل المتوحد أسلوبا واحدا في كل مكان يوجد به الطفل.""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """تاسعا: تدريب الطفل على الدفاع عن نفسه: الطفل المصاب بالتوحد لا يستطيع في الغالب الدفاع عن نفسه ولا يستطيع التعرف على مصدر الخطر، حتى إنه لا يستطيع أن يسترد ما أخذ منه ولو كان طعامه، وهذا الأمر يحزن الكثيرين من أسر الأطفال التوحديين، ولذلك فمن المهم أن ندربه على كيفية رد العدوان وكيفية الهروب من مصدر الخطر، وكيف يدافع عن نفسه وكيف يتعامل مع ما يعترض طريقه.""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.blue, width: 3),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      """عاشرا: تدريب الطفل على تقبل التغيير: إذا أردنا أن نبتعد عن الروتين في التعامل مع الطفل المتوحد فينبغي علينا أن نؤهل الطفل للتعامل مع التغيير وتقبله. علينا أن نجعل الطفل يعرف أن عليه أن يتعامل مع الواقع كما هو وليس كما يجب أن يكون الواقع، وعلينا أن نشرح ونوضح له ماذا سنفعل قبل قيامنا به، ولذلك يجب أن نبدأ بالتغيرات البسيطة في البداية ثم بعد ذلك بالتغيرات الكبيرة.""",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'serif'
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
              ],
            ),
          )
        ),
      )
    );
  }
}
