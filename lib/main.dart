import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  //Title Section
  Widget title = Container(
    padding: const EdgeInsets.all(45),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Icon(
                  Icons.perm_identity,
                  color: Colors.lightGreen,
                  size: 80,
                ),
              ),
              Text(
                'Draco Malfoy',
                style: TextStyle(
                  color: Colors.green[700],
                  fontSize: 24,
                ),
              ),
            ],
          ),
        ),
        Text(
          'Sangre sucia inmunda ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ],
    ),
  );
  Widget Botones = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(CupertinoIcons.heart_fill, color:Colors.lightBlue,),
        Icon(CupertinoIcons.arrowshape_turn_up_left_fill, color:Colors.lightBlue),
      ],
    ),
  );

  Widget Tab = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Me Gusta', style: TextStyle(color: Colors.lightBlue),),
        Text('Compartir', style: TextStyle(color: Colors.lightBlue),),
      ],
    ),
  );
  Widget texto = Container(
    padding: const EdgeInsets.all(32),
    child: Text(
      'Es un mago de sangre pura y el único hijo de Lucius y Narcissa Malfoy.'
      'Por ser el hijo de un mortífago, a Draco le enseñaron a creer firmemente'
      'en la importancia de la pureza de sangre. Asistió al Colegio Hogwarts de'
      'Magia y Hechicería desde 1991 hasta 1998 y fue seleccionado en la Casa Slytherin.'
      'Durante sus años en Hogwarts, se hizo amigo de Vincent Crabbe, Gregory Goyle, Pansy Parkinson'
      'y otros compañeros de Slytherin, mientras él rápidamente desarrolló una rivalidad con Harry Potter.',
      softWrap: true,
    ),
  );
  @override
  Widget build (BuildContext context){
    return MaterialApp(
      title: 'Biografía',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Biografía',
          ),
        ),
        body: Column(
          children: [
            title,
            texto,
            Botones,
            Tab,
          ],
        ),
      ),
    );
  }
}