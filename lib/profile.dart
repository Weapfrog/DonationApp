
import 'package:flutter/material.dart';
import 'loginscreen.dart';


class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ayarlar"),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Color.fromRGBO(0, 100, 128, 1),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginScreen())),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
            ),
            color: Color.fromRGBO(0, 100, 128, 1),
            onPressed: () => print("ayarlar"),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              SizedBox(
                child: Container(
                  height: 25,
                ),
              ),
              Center(
                child: Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 2,
                            blurRadius: 10,
                            color: Colors.black.withOpacity(0.1),
                            offset: Offset(0, 10))
                      ],
                      border: Border.all(
                          width: 4,
                          color: Theme.of(context).scaffoldBackgroundColor),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/resimler/berke.png"),
                      )),
                ),
              ),
              SizedBox(
                height: 10,
                width: 10,
              ),
              Center(
                child: Text(
                  "Berke ÖZTÜRK",
                  style: TextStyle(
                      color: Color.fromRGBO(0, 100, 128, 1),
                      fontFamily: "MontserratItalic",
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
