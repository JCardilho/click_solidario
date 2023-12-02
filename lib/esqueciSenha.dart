import 'package:click_solidario/widgets/appbars.dart';
import 'package:click_solidario/widgets/banner.dart';
import 'package:click_solidario/widgets/banner1.dart';
import 'package:flutter/material.dart';

class EsqueciSenhaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
        const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBarInicio(),

      ),
      resizeToAvoidBottomInset: false, // Evita que o teclado sobreponha
      body: Stack(
        children: [
          Positioned(
            bottom: -210,
            left: -210,
            child: BannerOne(), // Reutilize o elemento de imagem da tela inicial
          ),
          Positioned(
            bottom: 20,
            left: 10,
            child: Container(
              height: 650,
              width: 375,
              decoration: BoxDecoration(
                color: Colors.black12.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 3),
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Digite seu email para redefinir a senha:',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    SizedBox(height: 20.0),
                    TextField(
                      decoration: InputDecoration(labelText: 'Email'),
                    ),
                    SizedBox(height: 20.0),
                    ElevatedButton(
                      onPressed: () { },
                      child: Text('Enviar Email'),
                    ),
                    SizedBox(height: 40.0),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
