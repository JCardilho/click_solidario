import 'package:click_solidario/widgets/appbars.dart';
import 'package:click_solidario/widgets/banner.dart';
import 'package:click_solidario/widgets/textos.dart';
import 'package:flutter/material.dart';

import 'cadastrar.dart';
import 'esqueciSenha.dart';
import 'menuDoacao.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBarInicio(),
      ),
      body: _body(),
    );
  }

  _body() {
    return Stack(
      children: [
        Positioned(
          bottom: -210,
          left: -210,
          child: BannerInicio(),
        ),
        // Adicione o Container com a borda acima da imagem
        Positioned(
          bottom: 20,
          left: 10,
          child: Container(
            height: 650,
            width: 375,
            decoration: BoxDecoration(
              color: Colors.black12.withOpacity(0.1), // Cor da borda com transparência
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 3),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  TextoSubtituloInicio(
                      "LEVAMOS QUEM ESTÁ DISPOSTO A DOAR, ATÉ QUEM PRECISA DE AJUDA"),
                  SizedBox(
                    height: 10,
                  ),
                  TextoFraseInicio(
                      "A doação transforma o amor abstrato em um ato concreto!"),
                  // Adicione o código de login aqui
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextField(
                          decoration: InputDecoration(labelText: 'Email'),
                        ),
                        SizedBox(height: 20.0),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(labelText: 'Senha'),
                        ),
                        SizedBox(height: 20.0),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MenuDoacoesPage(),
                              ),
                            );
                          },
                          child: Text('Entrar'),
                        ),
                        SizedBox(height: 20.0),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => EsqueciSenhaPage(),
                              ),
                            );
                          },
                          child: Text('Esqueci a Senha'),
                        ),
                        SizedBox(height: 20.0),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CadastroPage(),
                              ),
                            );
                          },
                          child: Text('Cadastrar'),
                        ),
                        SizedBox(height: 250.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
