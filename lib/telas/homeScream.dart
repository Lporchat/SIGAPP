import 'package:flutter/material.dart';

class HomeScream extends StatefulWidget {
  const HomeScream({Key? key}) : super(key: key);

  @override
  _HomeScreamState createState() => _HomeScreamState();
}

class _HomeScreamState extends State<HomeScream> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SIGAPP"),
        backgroundColor: Color.fromARGB(255, 89, 117, 181),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              scrollDirection: Axis.vertical,
              children: [
                Card(
                  elevation: 5,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color.fromARGB(255, 89, 117, 181),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Icon(
                          Icons.qr_code_rounded,
                          color: Colors.white,
                          size: 100,
                        ),
                      ),
                      Text(
                        'Ler QRCode',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 5,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color.fromARGB(255, 89, 117, 181),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Icon(
                          Icons.qr_code_rounded,
                          color: Colors.white,
                          size: 100,
                        ),
                      ),
                      Text(
                        'Ler QRCode',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 5,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color.fromARGB(255, 89, 117, 181),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Icon(
                          Icons.qr_code_rounded,
                          color: Colors.white,
                          size: 100,
                        ),
                      ),
                      Text(
                        'Ler QRCode',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 5,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color.fromARGB(255, 89, 117, 181),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Icon(
                          Icons.qr_code_rounded,
                          color: Colors.white,
                          size: 100,
                        ),
                      ),
                      Text(
                        'Ler QRCode',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 5,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color.fromARGB(255, 89, 117, 181),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Icon(
                          Icons.qr_code_rounded,
                          color: Colors.white,
                          size: 100,
                        ),
                      ),
                      Text(
                        'Ler QRCode',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 5,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  color: Color.fromARGB(255, 89, 117, 181),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Icon(
                          Icons.qr_code_rounded,
                          color: Colors.white,
                          size: 100,
                        ),
                      ),
                      Text(
                        'Ler QRCode',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      )),
    );
  }
}
