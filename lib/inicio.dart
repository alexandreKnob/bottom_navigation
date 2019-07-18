import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  double _altura = 200;
  Color _minhacor = Colors.blueAccent;


  @override
  void initState() {
    super.initState();
    _altura =  400;
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text("Início"),
        ),

        Center(child:
        AnimatedContainer(

          duration: Duration(seconds: 1),
          curve: ElasticInCurve(0.7),
          height: _altura,
          width: 200,
          color: _minhacor,
          child: Center(
            child: Text("Alexandre"),
          ),
        ),

    ),

        FlatButton(
          color: Colors.blueAccent,
          child: Text("animam saporra"),
          onPressed: (){
            _altura = 30;
            _minhacor = Colors.red;
            setState(() {});
          },
        )
      ],
    );
  }
}
