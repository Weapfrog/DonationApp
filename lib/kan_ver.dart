import 'package:flutter/material.dart';

class KanBul extends StatefulWidget {
  @override
  KanBulState createState() {
    return KanBulState();
  }
}

class KanBulState extends State<KanBul> {

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.red,
                  Colors.redAccent,
                  Colors.red,
                  Colors.redAccent
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.1, 0.4, 0.7, 0.9])),
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                    color: Colors.grey.shade300,
                    margin: EdgeInsets.all(20),
                    elevation: 20,
                    child: ListTile(
                        leading: CircleAvatar(
                            backgroundImage:
                            AssetImage("C:/flutter_projects/bagis_uygulamasi/assets/resimler/berke.png"),
                            radius: 30),
                        title: Text("ACİLL ISTANBUL İCİ A RH+"),
                        subtitle: Text("Lorem Ipsum"),
                        trailing: IconButton(
                            icon: Icon(Icons.arrow_forward),
                            onPressed: () {

                            })),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
