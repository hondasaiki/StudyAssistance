

import 'package:flutter/material.dart';
import 'package:honda/second_page.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("schedule",style: TextStyle
          (fontSize:20,
        ),),
      ),
      body: Container(
            child:
            ListView(
            children: [
              Container(
                width: 10,
                height: 100,
              ),
              Row(
                children: [
              SizedBox(
                width:200,
                height:100,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>
                          SecondPage()),
                    );
                  },
                  child: const Text('week',style: TextStyle
                    (fontSize:20,
                  ),),
                ),
              ),
                  Container(
                    width: 10,
                    height: 100,
                  ),
               SizedBox(
                 width:200,
                 height:100,
                child: ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>
                        SecondPage()),
                  );
                },
                child: const Text('month',style: TextStyle
                  (fontSize:20,
                ),),
              ),
              ),

              ],
              ),
              Container(
                width: 100,
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(
                    width:200,
                    height:100,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>
                              SecondPage()),
                        );
                      },
                      child: const Text('year',style: TextStyle
                        (fontSize:20,
                      ),),
                    ),
                  ),
                  Container(
                    width: 10,
                    height: 100,
                  ),
                  SizedBox(
                    width:200,
                    height:100,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>
                              SecondPage()),
                        );
                      },
                      child: const Text('club',style: TextStyle
                        (fontSize:20,
                      ),),
                    ),
                  ),

                ],
              ),
              Container(
                width: 100,
                height: 50,
              ),

              SizedBox(
                width:200,
                height:100,
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>
                          SecondPage()),
                    );
                  },
                  child: const Text('+',style: TextStyle
                    (fontSize:50,
                  ),),
                ),
              ),
            ],
          ),
      ),
    );
  }
}


