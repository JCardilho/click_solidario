import 'package:flutter/material.dart';
import 'package:click_solidario/widgets/appbars.dart';

class DonationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBarInicio(),
      ),
      body: ListView(
        children: const [
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Donations(
              'Doação de Moveis',
            ),
          ),
          Donations(
            'Doação de Moveis',
          ),
          Donations(
            'Doação de Moveis',
          ),
          Donations(
            'Doação de Moveis',
          ),
          Donations(
            'Doação de Moveis',
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}

class Donations extends StatefulWidget {
  final String nome;

  const Donations(this.nome, {Key? key}) : super(key: key);

  @override
  State<Donations> createState() => _TasksState();
}

class _TasksState extends State<Donations> {
  @override
  int nivel = 0;

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black12.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
          border: Border.all(width: 3),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Colors.purple,
              ),
              height: 140,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 200,
                        child: Text(
                          widget.nome,
                          style: const TextStyle(
                              fontSize: 24, overflow: TextOverflow.ellipsis),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          height: 52,
                          width: 52,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.topLeft, // Alinhar na parte inferior do Container
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.verified_sharp,
                      color: Colors.redAccent,
                      size: 16,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'verificado:',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
