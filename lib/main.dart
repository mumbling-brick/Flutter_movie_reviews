import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ); // 홈페이지 보여주기;
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 음식 사진 데이터
    List<Map<String, dynamic>> dataList = [
      {
        "category": "탑건: 매버릭",
        "imgUrl": "https://i.ibb.co/sR32PN3/topgun.jpg",
      },
      {
        "category": "마녀2",
        "imgUrl": "https://i.ibb.co/CKMrv91/The-Witch.jpg",
      },
      {
        "category": "범죄도시2",
        "imgUrl": "https://i.ibb.co/2czdVdm/The-Outlaws.jpg",
      },
      {
        "category": "헤어질 결심",
        "imgUrl": "https://i.ibb.co/gM394CV/Decision-to-Leave.jpg",
      },
      {
        "category": "브로커",
        "imgUrl": "https://i.ibb.co/MSy1XNB/broker.jpg",
      },
      {
        "category": "문폴",
        "imgUrl": "https://i.ibb.co/4JYHHtc/Moonfall.jpg",
      },
    ];

    // 화면에 보이는 영역
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Movie Reviews",
              style: TextStyle(fontSize: 28),
            ),
            IconButton(
              icon: const Icon(Icons.person_outline),
              onPressed: () {},
            )
          ],
        ),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: dataList.length,
          itemBuilder: (BuildContext context, int index) {
            String category = dataList[index]['category'];
            String image = dataList[index]['imgUrl'];

            return Card(
                child: Stack(alignment: Alignment.center, children: [
              Image.network(
                image,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
              Text(
                category,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                ),
              ),
            ]));
          }),
    );
  }
}
