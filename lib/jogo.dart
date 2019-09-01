import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
	@override
	Widget build(BuildContext context) {
    	return Scaffold(
			appBar: AppBar(
				title: Text("Pedra, Papel e Tesoura"),
				backgroundColor: Colors.blue,
			),
			body: Center(
				child: Container(
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.center,
						children: <Widget>[
							Padding(
								padding: EdgeInsets.only(top: 32, bottom: 16),
								child: Text(
									"Escolha do APP:",
									style: TextStyle(
										fontWeight: FontWeight.bold,
										fontSize: 20
									),
								),
							),
							Image.asset(
								"images/padrao.png",
								height: 95,	
							),							
							Padding(
								padding: EdgeInsets.all(17),
								child: Text(
									"Escolha uma opção abaixo:",
									style: TextStyle(
										fontWeight: FontWeight.bold,
										fontSize: 20
									),
								),
							),
							Row(
								mainAxisAlignment: MainAxisAlignment.spaceEvenly,
								children: <Widget>[
									Image.asset(
										"images/pedra.png",						
										height: 100		
									),
									Image.asset(
										"images/papel.png",
										height: 100		
									),
									Image.asset(
										"images/tesoura.png",
										height: 100		
									),
								],
							),
						],
					),					
				),
			),
		);
  	}
}