import 'package:flutter/material.dart';
import 'package:sample_app/button.dart';

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0, // 입체감 제거
        actions: <Widget>[
          // 복수의 아이콘 버튼등을 오른쪽에 배치 할때
          const Button(), // 버튼 모듈을 하고 싶다.
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              debugPrint('Search button is clicked');
            },
          ),
        ],
      ),
      drawer: Drawer(
        // Drawer menu
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('assets/IMG_2488.JPG'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: const <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage('assets/IMG_2488.JPG'),
                  backgroundColor: Colors.white,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('assets/IMG_2488.JPG'),
                  backgroundColor: Colors.white,
                ),
              ],
              accountName: const Text('BBANTO'),
              accountEmail: const Text('cast3613@naver.com'),
              onDetailsPressed: () {
                debugPrint('onDetail button clicked');
              },
              decoration: BoxDecoration(
                  // 하단부분 곡선 부분 추가
                  color: Colors.red[200],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0),
                  )),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: const Text('HOME'),
              onTap: () {
                debugPrint('Home is clicked');
              },
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: const Text('Setting'),
              onTap: () {
                debugPrint('Setting is clicked');
              },
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: const Text('Q&A'),
              onTap: () {
                debugPrint('Q&A is clicked');
              },
              trailing: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
