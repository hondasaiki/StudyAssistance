import 'package:flutter/material.dart';
import 'package:honda/image_page.dart';
import 'package:honda/schedule_page.dart';
import 'package:honda/second_page.dart';
import 'package:honda/study_page.dart';
import 'package:honda/timepickerpage.dart';
import 'package:honda/todo_list_page.dart';



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'demo',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // 選択中フッターメニューのインデックスを一時保存する用変数
  int selectedIndex = 0;

  // 切り替える画面のリスト
  List<Widget> display = [StudyPage(), SchedulePage(), ImagePage(), TodoListPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: display[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(
              Icons.note_alt,
            ), label: 'study'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_month,
                ), label: 'schedule'),
            BottomNavigationBarItem(icon: Icon(
              Icons.add_photo_alternate,
            ), label: 'picture'),
            BottomNavigationBarItem(icon: Icon(
              Icons.how_to_reg,
            ), label: 'tasks'),
          ],
          // 現在選択されているフッターメニューのインデックス
          currentIndex: selectedIndex,
          // フッター領域の影
          elevation: 10,
          // フッターメニュータップ時の処理
          onTap: (int index) {
            selectedIndex = index;
            setState(() {});
          },
          // 選択中フッターメニューの色
          fixedColor: Colors.red,
            unselectedItemColor: Colors.black
        ));
  }


}