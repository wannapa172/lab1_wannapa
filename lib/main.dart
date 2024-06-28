import 'package:flutter/material.dart';

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
      ),
      home: MyAppPage(),
    );
  }
}

class MyAppPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> people = [
      {"name": "จักพรรดิ์ อนุไพร 643450065-4", "images": 'images/D.jpg'},
      {"name": "นริศรา วงค์บุตรศรี 643450328-8", "images": 'images/may.jpg'},
      {"name": "วรรณภา เบ้านาค 643450330-1", "images": 'images/nim.jpg'},
      {"name": "อฆพร ไร่ขาม 643450334-3", "images": 'images/m.jpg'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: Container(
          color: Color.fromARGB(255, 120, 227, 101), // กำหนดสีพื้นหลังที่ต้องการ
          padding: const EdgeInsets.all(100.20), // เพิ่ม padding รอบๆ ข้อความ
          child: const Text("My Flutter App"),
        ),
      ),
      body: ListView.builder(
        itemCount: people.length,
        itemBuilder: (context, index) {
          return displayNameItem(
            name: people[index]["name"]!,
            imagePath: people[index]["images"]!,
          );
        },
      ),
    );
  }

  Widget displayNameItem({required String name, required String imagePath}) {
    bool isHighlight = name == "วรรณภา เบ้านาค 643450330-1";
    return Container(
      padding: const EdgeInsets.all(10),
      color:
          isHighlight ? Color.fromARGB(255, 211, 217, 106) : Colors.transparent,
      child: Row(
        children: [
          Image(
            width: 100,
            image: AssetImage(imagePath),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 20,
              fontWeight: isHighlight ? FontWeight.bold : FontWeight.normal,
              color: isHighlight
                  ? Color.fromARGB(255, 237, 241, 237)
                  : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
