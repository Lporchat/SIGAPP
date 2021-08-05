import 'package:flutter/material.dart';
import 'package:leite/shered/theme/app_colors.dart';
import 'package:leite/telas/qrScreem.dart';

class CardsScreem extends StatefulWidget {
  const CardsScreem({Key? key}) : super(key: key);

  @override
  _CardsScreemState createState() => _CardsScreemState();
}

class _CardsScreemState extends State<CardsScreem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              // color: Colors.amber,
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Card(
                        margin: EdgeInsets.all(10),
                        elevation: 10,
                        child: ListTile(
                          title: Text("asd"),
                          leading: CircleAvatar(
                            child: Text("asd"),
                            backgroundColor: AppColors.primary,
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        elevation: 20,
                        child: ListTile(
                          title: Text("asd"),
                          leading: CircleAvatar(
                            child: Text("asd"),
                            backgroundColor: AppColors.primary,
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        elevation: 20,
                        child: ListTile(
                          title: Text("asd"),
                          leading: CircleAvatar(
                            child: Text("asd"),
                            backgroundColor: AppColors.primary,
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        elevation: 20,
                        child: ListTile(
                          title: Text("asd"),
                          leading: CircleAvatar(
                            child: Text("asd"),
                            backgroundColor: AppColors.primary,
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        elevation: 20,
                        child: ListTile(
                          title: Text("asd"),
                          leading: CircleAvatar(
                            child: Text("asd"),
                            backgroundColor: AppColors.primary,
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        elevation: 20,
                        child: ListTile(
                          title: Text("asd"),
                          leading: CircleAvatar(
                            child: Text("asd"),
                            backgroundColor: AppColors.primary,
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        elevation: 20,
                        child: ListTile(
                          title: Text("asd"),
                          leading: CircleAvatar(
                            child: Text("asd"),
                            backgroundColor: AppColors.primary,
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        elevation: 20,
                        child: ListTile(
                          title: Text("asd"),
                          leading: CircleAvatar(
                            child: Text("asd"),
                            backgroundColor: AppColors.primary,
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        elevation: 20,
                        child: ListTile(
                          title: Text("asd"),
                          leading: CircleAvatar(
                            child: Text("asd"),
                            backgroundColor: AppColors.primary,
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        elevation: 20,
                        child: ListTile(
                          title: Text("asd"),
                          leading: CircleAvatar(
                            child: Text("asd"),
                            backgroundColor: AppColors.primary,
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        elevation: 20,
                        child: ListTile(
                          title: Text("asd"),
                          leading: CircleAvatar(
                            child: Text("asd"),
                            backgroundColor: AppColors.primary,
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        elevation: 20,
                        child: ListTile(
                          title: Text("asd"),
                          leading: CircleAvatar(
                            child: Text("asd"),
                            backgroundColor: AppColors.primary,
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        elevation: 20,
                        child: ListTile(
                          title: Text("asd"),
                          leading: CircleAvatar(
                            child: Text("asd"),
                            backgroundColor: AppColors.primary,
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        elevation: 20,
                        child: ListTile(
                          title: Text("asd"),
                          leading: CircleAvatar(
                            child: Text("asd"),
                            backgroundColor: AppColors.primary,
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        elevation: 20,
                        child: ListTile(
                          title: Text("asd"),
                          leading: CircleAvatar(
                            child: Text("asd"),
                            backgroundColor: AppColors.primary,
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, bottom: 10, top: 20),
            child: Container(
                height: 60,
                child: ElevatedButton(
                    child: Text("Ler QRCode", style: TextStyle(fontSize: 25)),
                    style: ElevatedButton.styleFrom(
                      //cor do botão
                      primary: AppColors.primary,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => QRViewExample()));
                    })),
          ),
        ));
  }
}
