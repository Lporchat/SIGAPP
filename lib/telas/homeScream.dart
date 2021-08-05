import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:leite/shered/theme/app_colors.dart';
import 'package:leite/telas/qrScreem.dart';
import 'package:leite/telas/reciveScream.dart';

import 'cardsScreem.dart';

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
        centerTitle: true,
        backgroundColor: AppColors.primary,
      ),
      body: SafeArea(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              child: ListView(
                padding:
                    EdgeInsets.only(bottom: 4, top: 4, left: 16, right: 16),
                children: [
                  Container(height: 8),
                  DropdownSearch<String>(
                    mode: Mode.MENU,
                    showSelectedItem: true,
                    items: [
                      "Brazil",
                      "Tunisia",
                      'Canada',
                      "Leonardo",
                      "vamos la"
                    ],
                    label: "Municipio",
                    showClearButton: true,
                    onChanged: (data) => print(data),
                  ),
                  Container(
                    height: 10,
                  ),
                  DropdownSearch<String>(
                    // validator: (v) => v == null ? "required field" : null,
                    mode: Mode.MENU,
                    showSelectedItem: true,
                    items: [
                      "Brazil",
                      "Tunisia",
                      'Canada',
                      "Leonardo",
                      "vamos la"
                    ],
                    label: "Posto",
                    showClearButton: true,
                    onChanged: (data) => print(data),
                    // popupItemDisabled: (String? s) =>
                    //     s?.startsWith('I') ?? false,
                    // clearButtonSplashRadius: 10,
                    //selectedItem: "Tunisia",
                    // onBeforeChange: (a, b) {
                    //   if (b == null) {
                    //     AlertDialog alert = AlertDialog(
                    //       title: Text("Are you sure..."),
                    //       content: Text("...you want to clear the selection"),
                    //       actions: [
                    //         TextButton(
                    //           child: Text("OK"),
                    //           onPressed: () {
                    //             Navigator.of(context).pop(true);
                    //           },
                    //         ),
                    //         TextButton(
                    //           child: Text("NOT OK"),
                    //           onPressed: () {
                    //             Navigator.of(context).pop(false);
                    //           },
                    //         ),
                    //       ],
                    //     );

                    //     return showDialog<bool>(
                    //         context: context,
                    //         builder: (BuildContext context) {
                    //           return alert;
                    //         });
                    //   }

                    //   return Future.value(true);
                    // },
                  )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              child: GridView(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                  childAspectRatio: 1,
                ),
                scrollDirection: Axis.vertical,
                children: [
                  GestureDetector(
                    onTap: () {
                      print("testando 2");
                      _showLeite(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: AppColors.primary,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.send_rounded,
                              color: Colors.white,
                              size: 100,
                            ),
                            Text(
                              'Entregar',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("testando 1");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: AppColors.primary,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.sync,
                              color: Colors.white,
                              size: 100,
                            ),
                            Text(
                              'Sincronizar',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("va para outra tela");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ReciveScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        color: AppColors.primary,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.car_rental,
                              color: Colors.white,
                              size: 100,
                            ),
                            Text(
                              'Receber',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}

void _showLeite(
  context,
) {
  showDialog<String>(
    context: context,
    builder: (BuildContext context) => AlertDialog(
      title: Text('Digite a quantidade de leite por familia'),
      content: Container(
        height: 120,
        child: Column(
          children: [
            SizedBox(
              height: 45,
              child: TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: AppColors.primary,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CardsScreem()));
                    },
                    child: Text("Finalizar")),
              ),
            )
          ],
        ),
      ),
    ),
  );
}
