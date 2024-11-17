import 'package:flutter/material.dart';
import 'package:r_icon_pro/r_icon_pro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'R Icon Pro Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const RIconProExampleHome(),
    );
  }
}

class RIconProExampleHome extends StatefulWidget {
  const RIconProExampleHome({super.key});

  @override
  State<RIconProExampleHome> createState() => _RIconProExampleHomeState();
}

class _RIconProExampleHomeState extends State<RIconProExampleHome> {

  List<Icon> staticIconList = [
    const Icon(RIcon.Accessibility),
    const Icon(RIcon.Alarm),
    const Icon(RIcon.Add_Circle , color: Colors.blueAccent,),
    const Icon(RIcon.Alarm_Play , size: 30,),
    const Icon(RIcon.Balloon),
    const Icon(RIcon.Battery_Charge_Minimalistic),
    const Icon(RIcon.Bill),
    const Icon(RIcon.Calendar_Date),
    const Icon(RIcon.Calendar_Add),
    const Icon(RIcon.Record_Circle),
    const Icon(RIcon.Reel),
    const Icon(RIcon.Refresh),
    const Icon(RIcon.Code_File),
    const Icon(RIcon.Figma),
    const Icon(RIcon.File_Check),
    const Icon(RIcon.Paperclip_Rounded),
    const Icon(RIcon.Four_K),
    const Icon(RIcon.Pen_New_Round),
    const Icon(RIcon.Code_File),
    const Icon(RIcon.Gallery_Send),
    const Icon(RIcon.Gallery),
    const Icon(RIcon.Camera),
    const Icon(RIcon.XXX),
    const Icon(RIcon.Body),
    const Icon(RIcon.Bell),
    const Icon(RIcon.Bell_Off),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "R Icon Example",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Take a look at some amazing examples for the RIcon pro package, We have 500+ icons available here",
              style: TextStyle(
                fontSize: 12,
                letterSpacing: .5,
                fontWeight: FontWeight.w300,
              ),
            ),

            const SizedBox(height: 20,),

            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                itemCount: staticIconList.length,
                itemBuilder: (context,index){
                  return Card(
                    child: staticIconList[index],
                    elevation: 1,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
