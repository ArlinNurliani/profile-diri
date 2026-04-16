import 'package:flutter/material.dart';
import 'Page2.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: home(),
));


class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width, //lebar diatur sesuai dengan lebar layar 
        height: MediaQuery.of(context).size.height, //tinggi diatur sesuai dengan lebar layar
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"), 
            fit: BoxFit.cover
          ), 
        ),

      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.shortestSide,
            padding: EdgeInsets.all(20.0),
            alignment: Alignment.center,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(15.0), ),
              color: Color.fromRGBO(86, 95, 150, 1),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[

                      CircleAvatar(
                        radius: 100.0,
                        backgroundImage: AssetImage("images/arlin.jpeg"),
                      ), 
                      Text("Arlin Nurliani", 
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Color.fromARGB(248, 6, 3, 53))
                      ),

                      Text("Vacational High School Student at SMK Wikrama Bogor", 
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Color.fromARGB(248, 2, 1, 24))
                      ), 

                      TextButton(onPressed: (){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => Page2()), 
                        );
                      }, child:Text('See more')
                      ),
                    ],
                  ),
                ),
            ),
          )
        ],
      ),
      ),
    );
  }
}
