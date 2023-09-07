import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            color: Colors.black12,
          ),
          Container(
              child: SearchBody()),
        ],
      ),
    );
  }
}

class SearchBody extends StatefulWidget{
  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {
  var filterTags = [
    'Flutter',
    'Android',
    'Ui/Ux'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(itemBuilder: (context,index){
          return ElevatedButton(onPressed: () {},
              child: Text(
                filterTags[index],
                style: TextStyle(
                  fontWeight: FontWeight.w500
                ),
              )
          );
        }
        )
      ],
    );
  }
}

// class OfflineTutors extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: [
//             Text('Offline Tutors',
//             style: TextStyle(
//               color: Color(0xff333D52),
//               fontWeight: FontWeight.w700
//             ),),
//
//             SizedBox(
//               width: 85,
//             ),
//
//             TextButton(onPressed: (){
//
//             }, child: Text('See all',
//             style: TextStyle(
//               color: Color(0xff586172)
//             ),)
//
//             )
//           ],
//         ),
//         Row(
//           children: [
//             Icon(Icons.filter)
//           ],
//         )
//       ],
//     );
//   }
//
// }

