import 'package:flutter/material.dart';
import 'package:leite/telas/homeScream.dart';

class loginScream extends StatefulWidget {
  const loginScream({Key? key}) : super(key: key);

  @override
  _loginScreamState createState() => _loginScreamState();
}

class _loginScreamState extends State<loginScream> {
  TextEditingController login = TextEditingController();
  TextEditingController senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Color.fromARGB(255, 89, 117, 181),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 90, bottom: 0, left: 0, right: 0),
                  child: new Image.asset(
                    'assets/sigpaa.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 70, bottom: 0, left: 0, right: 0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.458,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.circular(30.0),
                      ),
                    ),
                    //
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, bottom: 0, left: 10, right: 10),
                          child: TextFormField(
                              controller: login,
                              obscureText: false,
                              decoration: InputDecoration(
                                  fillColor: Colors.black,
                                  hintText: "Matricula",
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 89, 117, 181)),
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Color.fromARGB(255, 89, 117, 181),
                                  ),
                                  //borda selecionada
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 89, 117, 181),
                                      width: 2.0,
                                    ),
                                  ),
                                  //borda sem esta selecionada
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 89, 117, 181),
                                      width: 2.0,
                                    ),
                                  ))),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10, bottom: 0, left: 10, right: 10),
                          child: TextFormField(
                              controller: senha,
                              obscureText: true,
                              decoration: InputDecoration(
                                  fillColor: Colors.black,
                                  hintText: "Senha",
                                  hintStyle: TextStyle(
                                      color: Color.fromARGB(255, 89, 117, 181)),
                                  prefixIcon: Icon(
                                    Icons.vpn_key,
                                    color: Color.fromARGB(255, 89, 117, 181),
                                  ),

                                  //borda selecionada
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 89, 117, 181),
                                      width: 2.0,
                                    ),
                                  ),
                                  //borda sem esta selecionada
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(255, 89, 117, 181),
                                      width: 2.0,
                                    ),
                                  ))),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                                top: 30, bottom: 0, left: 10, right: 10),
                            child: ConstrainedBox(
                              constraints: BoxConstraints.tightFor(
                                  width: 300, height: 55),
                              child: ElevatedButton(
                                child: Text("login"),
                                style: ElevatedButton.styleFrom(
                                  //cor do botão
                                  primary: Color.fromARGB(255, 89, 117, 181),
                                  //cor do texto
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                  ),
                                ),
                                onPressed: () {
                                  print(login.text);
                                  print(senha.text);
                                  if (login.text == "Admin" &&
                                      senha.text == "admin") {
                                    print("Deu certo, acessou");
                                    //para puxar a proxima tela e dechar a primeira e retirar o icone
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                HomeScream()));
                                  } else {
                                    print("Cadastro errado");
                                  }
                                },
                              ),
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
