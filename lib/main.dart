import 'package:bmi_app/page.dart';
import 'package:flutter/material.dart';

import 'back.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          inputDecorationTheme: InputDecorationTheme(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: BorderSide(width: 2, color: Colors.black)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: BorderSide(width: 2)))),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var wtinput1 = TextEditingController();
  var ftinput2 = TextEditingController();
  var ininput3 = TextEditingController();

  var result = "";
  var bgcolor = Colors.blue[100];

  size() {
    return SizedBox(height: 15);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: Container(
            height: double.infinity,
            color: bgcolor,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'BMI',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 32,
                          color: Colors.purple),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: wtinput1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: 'Weight',
                          prefixIcon: Icon(Icons.line_weight),
                          labelStyle: Theme.of(context)
                              .inputDecorationTheme
                              .labelStyle
                              ?.copyWith( fontWeight: FontWeight.w500, fontSize: 25)
                      ),
                    ),
                    size(),
                    TextField(
                      controller: ftinput2,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: 'Fit',
                          prefixIcon: Icon(Icons.height),
                          labelStyle: Theme.of(context).inputDecorationTheme.labelStyle?.copyWith(fontSize: 25, fontWeight: FontWeight.w500)),
                    ),
                    size(),
                    TextField(
                      controller: ininput3,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: 'Inch',
                          prefixIcon: Icon(Icons.height),
                          labelStyle: Theme.of(context)
                              .inputDecorationTheme
                              .labelStyle
                              ?.copyWith(
                                  fontSize: 25, fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(height: 45),
                    ElevatedButton(
                        onPressed: () {
                          var wt = wtinput1.text.toString();
                          var ft = ftinput2.text.toString();
                          var In = ininput3.text.toString();

                          if (wt != "" && ft != "" && In != "") {
                            // BMI  Calulater

                            var iWt = int.parse(wt);
                            var iFt = int.parse(ft);
                            var iIn = int.parse(In);

                            var tIn = (iFt * 12) + iIn;
                            var tCm = tIn * 2.54;
                            var tM = tCm / 100;
                            var bmi = iWt / (tM * tM);

                            var msg = "";

                            if (bmi > 25) {
                              msg = " You are OverWeight!!";
                              bgcolor = Colors.orange[300];
                            } else if (bmi < 18) {
                              msg = " You're UnderWeight!!";
                              bgcolor = Colors.red[300];
                            } else {
                              msg = "Yor're Healthy!!";
                              bgcolor = Colors.green[300];
                            }

                            setState(() {
                              result =
                                  "$msg \nYour BMI is:  ${bmi.toStringAsFixed(2)}";
                            });
                          } else {
                            setState(() {
                              result = "Please fill all the required blanks!!";
                              bgcolor = Colors.blue[100];
                            });
                          }
                        },
                        child: Text('CalCulate')),
                    SizedBox(height: 20),
                    Text(
                      result,
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context){
                            return BackDrop();
                          })
                      );
                    }, child: Text("BackDropFilter")),

                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return Pagess();
                          }));
                        },
                        child: Text("Next Page")),

                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
