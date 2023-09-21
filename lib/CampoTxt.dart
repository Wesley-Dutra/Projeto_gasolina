import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Álcool ou Gasolina'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(35),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 25),
                child: Image.asset(
                  'images/gasolina.png',
                  width: 200,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Text(
                  'Saiba qual a melhor opção para abastecimento do seu carro:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Valor da Gasolina',
                      labelStyle: TextStyle(
                          color: Colors.amber
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.amber)
                      ),
                      hintText: 'Ex: 5.43'
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 20),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Valor do Álcool',
                      labelStyle: TextStyle(
                          color: Colors.amber
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.amber)
                      ),
                      hintText: 'Ex: 5.43'
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('CALCULAR'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  minimumSize: Size(200, 50)
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
