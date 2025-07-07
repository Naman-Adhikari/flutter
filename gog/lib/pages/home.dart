import 'members.dart';



import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  void usertapped() {
		print("Why you touching me mf?!!");
	}

  void usermolested() {
		print("I like that daddyyy!!! <3");
	}

  void userdobtapped() {
		print("I'll kill ur whole family!");
	}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
	  backgroundColor: Colors.black54,
	  appBar: AppBar( 
		automaticallyImplyLeading: true,		
	    title: Text('GOG CULT', style: TextStyle(fontSize: 50, color:Colors.white60, fontWeight: FontWeight.w700)),
		backgroundColor: Colors.black87,		
		elevation: 30,		
		leading: Builder(
  builder: (context) => IconButton(
    icon: Icon(Icons.menu, color: Colors.white60),
    onPressed: () => Scaffold.of(context).openDrawer(),
  ),
),		
		actions: [IconButton(onPressed: () {}, icon: Icon(Icons.logout, color: Colors.white60))],		
	  ),
	  drawer: Drawer(
				backgroundColor: Colors.deepPurple,
			),		
	  body: Stack(
		alignment: Alignment.center,	
		children: [
                  
			    Container( 
	                 decoration: BoxDecoration( 
		                 image: DecorationImage(image: AssetImage("/home/lostfromlight/NMN/Luminarium/citypunk.jpg"),
                         fit:BoxFit.cover,
                       ),
),
),
			 	Container( 
				  height: 550,
				  width: 550,
				  color: Colors.black38,
				  alignment: Alignment(0,0.9),
			      child:ElevatedButton( 
		     			child: Text("CORE MEMBERS", style:TextStyle(fontFamily: 'JetbrainsMono', fontSize: 30, color:Colors.black54),
					),
					style: ElevatedButton.styleFrom(elevation: 7, shadowColor: Colors.white, backgroundColor: Colors.white30),
                    onPressed: (){
			            Navigator.push(context, MaterialPageRoute(builder: (context) => Members(),));
		},
	),
		), 
			 	Container( 
				  height: 350,
				  width: 350,
				  color: Colors.black54),

			 	Container( 
				  height: 150,
				  width: 150,
				  color: Colors.black),

					 
				Center(
						child: GestureDetector( 
						  onLongPress: usermolested,	
						  onDoubleTap: userdobtapped,	
                          onTap: usertapped,
						  child: Container( 
								width: 50,
								height: 50,
								color: Colors.red,
								),	
						                     ),
		              ),
							
	

				],		

			),
); 
  }

}  
  



