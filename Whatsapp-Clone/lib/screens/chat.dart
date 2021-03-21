import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chatmodel.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, i) => Column(
        children: [
          Divider(
            height: 15.0,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage("assets/person.png"),
              radius: 30.0,
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  data[i].name,
                  style: TextStyle(fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  data[i].time,
                  style: TextStyle(fontSize: 15.0, color: Colors.grey,),
                ),
              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 7.0),
              child: Text(
                data[i].message,
                style: TextStyle(fontSize: 15.0, color: Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
