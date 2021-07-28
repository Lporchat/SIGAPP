import 'package:flutter/material.dart';
import 'package:leite/shered/theme/app_colors.dart';
import 'package:leite/telas/homeScream.dart';

class loginScreem extends StatefulWidget {
  const loginScreem({Key? key}) : super(key: key);

  @override
  _loginScreemState createState() => _loginScreemState();
}

class _loginScreemState extends State<loginScreem> {
  TextEditingController login = TextEditingController();
  TextEditingController senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/sigpaa.png')),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            //
            child: Container(
              height: MediaQuery.of(context).size.height * 0.423,
              decoration: BoxDecoration(
                color: AppColors.primary,
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
                        // mudança de cor do input
                        style: TextStyle(color: AppColors.white),
                        decoration: InputDecoration(
                            fillColor: Colors.black,
                            hintText: "Matricula",
                            hintStyle: TextStyle(color: AppColors.white),
                            prefixIcon: Icon(
                              Icons.person,
                              color: AppColors.white,
                            ),
                            //borda selecionada
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: AppColors.white,
                                width: 2.0,
                              ),
                            ),
                            //borda sem esta selecionada
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: AppColors.white,
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
                        style: TextStyle(color: AppColors.white),
                        decoration: InputDecoration(
                            hintText: "Senha",
                            hintStyle: TextStyle(color: AppColors.white),
                            prefixIcon: Icon(
                              Icons.vpn_key,
                              color: AppColors.white,
                            ),

                            //borda selecionada
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: AppColors.white,
                                width: 2.0,
                              ),
                            ),
                            //borda sem esta selecionada
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              borderSide: BorderSide(
                                color: AppColors.white,
                                width: 2.0,
                              ),
                            ))),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(
                          top: 30, bottom: 0, left: 10, right: 10),
                      child: ConstrainedBox(
                        constraints: BoxConstraints.tightFor(
                            width: double.infinity, height: 60),
                        child: ElevatedButton(
                          child: Text("login", style: TextStyle(fontSize: 25)),
                          style: ElevatedButton.styleFrom(
                            //cor do botão
                            primary: AppColors.white,
                            //cor do texto
                            onPrimary: AppColors.primary,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
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
                                      builder: (context) => HomeScream()));
                            } else {
                              print("Cadastro errado");
                            }
                          },
                        ),
                      )),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
