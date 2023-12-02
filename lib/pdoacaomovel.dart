import 'package:flutter/material.dart';
import 'package:click_solidario/widgets/appbars.dart';
import 'package:click_solidario/widgets/banner1.dart';

class PagDoacao extends StatelessWidget {
  final TextEditingController _descricaoController = TextEditingController();
  final TextEditingController _enderecoController = TextEditingController();
  final TextEditingController _dataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBarInicio(),
      ),
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Positioned(
            bottom: -210,
            left: -210,
            child: BannerOne(),
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
                        'Foto do Móvel:',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      SizedBox(height: 20.0),

                      TextField(
                        controller: _descricaoController,
                        decoration: InputDecoration(labelText: 'Descrição do movél'),
                      ),

                      SizedBox(height: 10.0),
                      TextField(
                        controller: _enderecoController,
                        decoration: InputDecoration(labelText: 'Endereço para retirada'),
                      ),
                      SizedBox(height: 10.0),
                      TextField(
                        controller: _dataController,
                        decoration: InputDecoration(labelText: 'Data de Disponibilidade'),
                      ),
                      SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: () {
                          // Lógica para carregar a foto
                          // Você pode abrir uma caixa de diálogo para selecionar uma imagem aqui
                        },
                        child: Text('Carregar Foto'),
                      ),
                      SizedBox(height: 10.0),
                      ElevatedButton(
                        onPressed: () {
                          // Lógica para cadastrar o móvel
                          final descricao = _descricaoController.text;
                          final endereco = _enderecoController.text;
                          final data = _dataController.text;
                          // Você pode adicionar a lógica de envio do pedido aqui
                          // Por exemplo, enviar os dados para um servidor ou armazená-los localmente.
                        },
                        child: Text('Cadastrar Móvel para Doação'),
                      ),
                      SizedBox(height: 350.0),
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
