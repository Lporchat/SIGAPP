import 'package:flutter/material.dart';
import 'package:leite/shered/theme/app_colors.dart';

class ReciveScreen extends StatefulWidget {
  const ReciveScreen({Key? key}) : super(key: key);

  @override
  _ReciveScreenState createState() => _ReciveScreenState();
}

class _ReciveScreenState extends State<ReciveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Informações de recebimento"),
          centerTitle: true,
          backgroundColor: AppColors.primary),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(bottom: 4, top: 25, left: 16, right: 16),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Text(
                  "Informe a quantidade de leite entregue ao laticínios",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Bovino',
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                      ),
                      TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Caprino',
                          alignLabelWithHint: true,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
          child: Container(
              height: 60,
              child: ElevatedButton(
                  child: Text("Finalizar", style: TextStyle(fontSize: 25)),
                  style: ElevatedButton.styleFrom(
                    //cor do botão
                    primary: AppColors.primary,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  })),
        ),
      ),
    );
  }
}
