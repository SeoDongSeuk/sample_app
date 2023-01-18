import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0, // 입체감 제거
        leading: IconButton( // 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할 때
          icon: Icon(Icons.menu),
          onPressed: () {
            print('menu button is clicked');
          },
        ),
        actions: <Widget>[ // 복수의 아이콘 버튼등을 오른쪽에 배치 할때
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('Shopping button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search button is clicked');
            },
          ),
        ],
      ),
    );
  }
}

