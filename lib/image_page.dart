
//パッケージのインポート
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';


class ImagePage extends StatefulWidget {
  const ImagePage({ Key? key }) : super(key: key);
  @override
  _fifthPageState createState() => _fifthPageState();
}


class _fifthPageState extends State<ImagePage> {
  //変数の宣言
  File? image;
  final picker = ImagePicker();

  //カメラで撮影した画像を取得する命令
  Future getImageFromCamera() async {
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      if(pickedFile != null) {
        image = File(pickedFile.path);
      }
    });
  }


  //端末のアルバムに保存されている画像を取得する命令
  Future getImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if(pickedFile != null) {
        image = File(pickedFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:  ListView(
          children: [
            //呼び出しボタン
            image == null ? const Text('画像が選択されてません') : Container(
              height: 500,
              width: 400,
              child: Image.file(image!, fit: BoxFit.cover),
            ),

            ElevatedButton(
                onPressed: () {
                  getImageFromCamera();
                },
                child: const Text('カメラから画像を取得')



            ),
            //呼び出しボタン
            ElevatedButton(
                onPressed: () {
                  getImageFromGallery();
                },
                child: const Text('アルバムから画像を取得')
            ),
            const SizedBox(height: 5),

            //取得した画像を表示
  ],),



      ),

    );

  }
}