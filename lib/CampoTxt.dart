import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _gasController = TextEditingController();
  TextEditingController _alcoolController = TextEditingController();
  var _txtDefault = 'Saiba qual a melhor opção para abastecimento do seu carro:';

  void _Calcular() {
    dynamic precGas = double.tryParse(_gasController.text) == null ? 0.0 : double.tryParse(_gasController.text);
    dynamic precAlcool = double.tryParse(_alcoolController.text) == null ? 0.0 : double.tryParse(_alcoolController.text);


    if (precGas == 0.0 || precAlcool == 0.0) {
      setState(() {
        _txtDefault = 'Ambos os campos devem ser informados!';
      });
    } else if (precGas < precAlcool) {
      setState(() {
        _txtDefault = 'Pelos valores informados, a gasolina vale mais a pena ser utilizada!';
      });
    } else if (precGas > precAlcool) {
      setState(() {
        _txtDefault = 'Pelos valores informados, o álcool vale mais a pena ser utilizado!';
      });
    } else {
      setState(() {
        _txtDefault = 'Ambos os valores são iguais!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Álcool ou Gasolina'),
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
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
                      '$_txtDefault',
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
                      controller: _gasController,
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
                      controller: _alcoolController,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => _Calcular(),
                    child: Text('CALCULAR'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amberAccent.shade400,
                        minimumSize: Size(200, 50)
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      )
    );
  }
}
