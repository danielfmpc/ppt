import 'dart:math';

import 'package:flutter/material.dart';

class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {
	var _imagemApp = AssetImage("images/padrao.png");
	var _mensagem = "Escolha uma opção abaixo:";

	void _opcaoSelecionada(String escolhaUsuario){
		var opcao = ["pedra", "papel", "tesoura"];
		var numero = Random().nextInt(opcao.length);
		var escolhaApp = opcao[numero];

		switch (escolhaApp) {
		  	case "pedra":
				setState(() {
					this._imagemApp = AssetImage("images/pedra.png");	
				});
				break;
			case "papel":
				setState(() {
					this._imagemApp = AssetImage("images/papel.png");	
				});
				break;
			case "tesoura":
				setState(() {
					this._imagemApp = AssetImage("images/tesoura.png");	
				});
				break;
		  	default: this._imagemApp = AssetImage("images/padrao.png");
		}

		if(escolhaUsuario == "pedra" && escolhaApp == "tesoura"){
			setState(() {
			  this._mensagem = "Você ganhou :D";
			});
		} else if(escolhaUsuario == "tesoura" && escolhaApp == "papel"){
			setState(() {
			  this._mensagem = "Você ganhou :D";
			});
		} else if(escolhaUsuario == "papel" && escolhaApp == "pedra"){
			setState(() {
			  this._mensagem = "Você ganhou :D";
			});
		} else if(escolhaUsuario == escolhaApp){
			this._mensagem = "Empatou :|";
		} else {
			this._mensagem = "Você perdeu :C";
		}
	}



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
							Image(image: this._imagemApp, height: 95),							
							Padding(
								padding: EdgeInsets.all(17),
								child: Text(
									this._mensagem,
									style: TextStyle(
										fontWeight: FontWeight.bold,
										fontSize: 20
									),
								),
							),
							Row(
								mainAxisAlignment: MainAxisAlignment.spaceEvenly,
								children: <Widget>[
									GestureDetector(
										onTap: () => _opcaoSelecionada("pedra"),
										child: Image.asset("images/pedra.png", height: 100),
									),
									GestureDetector(
										onTap: () => _opcaoSelecionada("papel"),									
										child: Image.asset("images/papel.png", height: 100),
									),
									GestureDetector(
										onTap: () => _opcaoSelecionada("tesoura"),									
										child: Image.asset("images/tesoura.png", height: 100),
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