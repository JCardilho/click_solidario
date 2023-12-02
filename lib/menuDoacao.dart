
import 'package:click_solidario/pdoaalimento.dart';
import 'package:click_solidario/pdoacaomovel.dart';
import 'package:click_solidario/teladoacao.dart';
import 'package:flutter/material.dart';
import 'package:click_solidario/widgets/appbars.dart';
import 'package:click_solidario/widgets/banner.dart';

import 'cadrecebedoacao.dart';

class MenuDoacoesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBarInicio(),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: -210,
            left: -210,
            child:
                BannerInicio(),
          ),
          Center(
            child: Container(
              height: 650,
              width: 375,
              decoration: BoxDecoration(
                color: Colors.black12.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(width: 3),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 35.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PagDoacao(),
                        ),
                      );
                    },
                    child: Text('Doar Móveis'),
                  ),

                  SizedBox(height: 35.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PagDoacaoAlimento(),
                        ),
                      );
                    },
                    child: Text('Doar Alimentos'),
                  ),
                  SizedBox(height: 35.0),
                  ElevatedButton(
                    onPressed: () {Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DonationsScreen(),
                      ),
                    );},
                    child: Text('Entrar em Menu de Doações'),
                  ),
                  SizedBox(height: 35.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CadReceberDoacao(),
                        ),
                      );
                    },
                    child: Text('Cadastrar para Receber Doações'),
                  ),
                  SizedBox(height: 35.0),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
