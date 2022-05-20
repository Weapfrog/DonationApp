import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KanVer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AddLinkForm(),
    );
  }
}

class AddLinkForm extends StatefulWidget {
  @override
  _AddLinkFormState createState() => _AddLinkFormState();
}

class _AddLinkFormState extends State<AddLinkForm> {
  final _formKey = new GlobalKey<FormState>();
  String instalink;
  String facelink;
  String linkedinlink;
  String youtubelink;
  String twitterlink;

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
            onPressed: () => Navigator.pop(context),
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
          padding: const EdgeInsets.all(8),
          children: [Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: TextFormField(

                      decoration: InputDecoration(hintText: "İhtiyaç sahibinin adı soyadı"),
                      onSaved: (value) {
                        instalink = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(

                      decoration: InputDecoration(hintText: "İhtiyaç sahibinin yaşı"),
                      onSaved: (value) {
                        facelink = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(

                      decoration: InputDecoration(hintText: "İhtiyaç sahibinin kan grubu"),
                      onSaved: (value) {
                        linkedinlink = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(

                      decoration: InputDecoration(hintText: "İhtiyaç sebebi ve materyali "),
                      onSaved: (value) {
                        twitterlink = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(

                      decoration: InputDecoration(hintText: "Konumu"),
                      onSaved: (value) {
                        youtubelink = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(

                      decoration: InputDecoration(hintText: "İletişim bilgileri"),
                      onSaved: (value) {
                        youtubelink = value;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextFormField(

                      decoration: InputDecoration(hintText: "Açıklama"),
                      onSaved: (value) {
                        youtubelink = value;
                      },
                    ),
                  ),
                  Padding(padding:  const EdgeInsets.symmetric(vertical: 25.0),
                    child:
                    ElevatedButton(
                        child: Text("Submit"),
                        onPressed: () {
                          _formKey.currentState.save();

                        }),
                  )

                ],
              ))] ,
        ));
  }
}
