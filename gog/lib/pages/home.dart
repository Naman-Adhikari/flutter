

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
	  backgroundColor: Colors.cyan,
	  appBar: AppBar( 
	    title: Text('GOG CULT', style: TextStyle(fontSize: 50, color:Colors.lime, fontWeight: FontWeight.w700)),
		backgroundColor: Colors.indigo,		
		elevation: 30,		
		leading: Icon(Icons.menu),		
		actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout))],		
	  ),
	  body: Center(
		 child: Container(
			height: 300,
			width: 300,
			decoration: BoxDecoration(
				color: Colors.teal,
				borderRadius: BorderRadius.circular(20),		
					),		
			padding: EdgeInsets.all(25),		
					child: Text(
						"Welcome to the GOG Cult",
					    style: TextStyle(
							color: Colors.yellow,
							fontSize: 38, 
							fontWeight: FontWeight.bold,
						),
					),


				),
	  ),
    );
  }
}  
  

