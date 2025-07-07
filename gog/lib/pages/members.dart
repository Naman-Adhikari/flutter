

import 'dart:io';

import 'package:flutter/material.dart';

class Members extends StatelessWidget {
	const Members({super.key});

	@override 
    Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
	          title: Text('OG CULTISTS', style: TextStyle(fontSize: 50, color:Colors.white60, fontWeight: FontWeight.w700)),
			  backgroundColor: Colors.black87,
			  elevation: 30,	
			  leading: BackButton(color: Colors.white60,),	

			),

			body: Stack( 
				children: [
			       
			       Container( 
	                 decoration: BoxDecoration( 
		                 image: DecorationImage(image: AssetImage("/home/lostfromlight/NMN/Luminarium/cloud.png"),
                         fit:BoxFit.cover,
                       ),
		),
		),
		],
		),


			);

	}
}
