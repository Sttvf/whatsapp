import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: const Color.fromARGB(255, 0, 127, 104),
                  child: const Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.all(15), child: Text('WhatsApp', style: TextStyle(fontSize: 50, color: Colors.white, decoration: null)),),
                          Spacer(),
                          Padding(padding: EdgeInsets.all(15), child: Icon(Icons.camera_alt_outlined, color: Colors.white, size: 30)),
                          Padding(padding: EdgeInsets.all(15), child: Icon(Icons.search, color: Colors.white, size: 30)),
                          Padding(padding: EdgeInsets.all(15), child: Icon(Icons.more_vert, color: Colors.white, size: 30)),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.fromLTRB(40, 15, 15, 15), child: Icon(Icons.groups_2, color: Colors.white, size: 40)),
                          Spacer(),
                          Padding(padding: EdgeInsets.all(15), child: Text('Chats', style: TextStyle(fontSize: 30, color: Colors.white, decoration: null)),),
                          Spacer(),
                          Padding(padding: EdgeInsets.all(15), child: Text('Estados', style: TextStyle(fontSize: 30, color: Colors.white, decoration: null)),),
                          Spacer(),
                          Padding(padding: EdgeInsets.fromLTRB(15, 15, 40, 15), child: Text('Llamadas', style: TextStyle(fontSize: 30, color: Colors.white, decoration: null)),),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.white,
            child: Row(
              children: [
                Container(alignment:Alignment.centerLeft, child: 
                Image.network('https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_960_720.png', width: 50, height: 50,),),
                Column(children: [
                  Row(children: [
                    Text("Andrés")
                  ],)
                ],)
              ],
            ),
          )
        )
      ],
    );
  }
}