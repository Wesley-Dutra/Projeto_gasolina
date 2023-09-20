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
          padding: EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Digite um valor',
                  labelStyle: TextStyle(
                    color: Colors.amber
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.amber)
                  )
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
