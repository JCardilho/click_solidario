
import 'package:click_solidario/widgets/appbars.dart';

import 'package:click_solidario/widgets/banner1.dart';
import 'package:flutter/material.dart';



class CadastroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBarInicio(),
      ),
      resizeToAvoidBottomInset: false, // Evita que o teclado sobreponha a tela
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
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Preencha os dados para se cadastrar:',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      SizedBox(height: 20.0),
                      TextField(
                        decoration: InputDecoration(labelText: 'Email'),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(labelText: 'Nome'),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(labelText: 'CPF(123.456.789-01)'),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(labelText: 'Endereço(rua,numero e bairro)'),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(labelText: 'Bairro, Numero'),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(labelText: 'Cidade'),
                      ),SizedBox(height: 10.0),
                      TextField(
                        // obscureText: true,
                        decoration: InputDecoration(labelText: 'Estado'),
                      ),
                      SizedBox(height: 70.0),
                      ElevatedButton(
                        onPressed: () {
                          Text("Cadastrado com sucesso");
                        },
                        child: Text('Cadastrar'),
                      ),
                      SizedBox(height: 250.0),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
