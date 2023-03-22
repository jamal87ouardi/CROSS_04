import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reservation Hotel'),
      ),
      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children:  <Widget>[
          const Padding(
            padding:  EdgeInsets.fromLTRB(0, 0, 100, 10),
            child: Text(
              'Nombre de nuits:',
            ),
          ),
          Padding(
            padding:  const EdgeInsets.fromLTRB(50, 0, 50, 80),
            child:TextField(

              decoration: InputDecoration (
                filled: true,
                hintText: "Nuits",
                fillColor: Colors.orange[400],
              ),
            ),
          ),

          const Padding(
            padding:  EdgeInsets.fromLTRB(0, 0, 100, 10),
            child: Text(
              'Type de chambre:',
            ),
          ),

          Padding(
            padding:  EdgeInsets.fromLTRB(100, 0, 0, 0),
            child: RadioListTile(
              title: Text("Simple"),
              value: "simple",
              groupValue: "type_chambre",
              onChanged: (value){
                setState(() {

                });
              },
            ),
          ),

          Padding(
            padding:  EdgeInsets.fromLTRB(100, 0, 0, 0),
            child: RadioListTile(
              title: Text("Double"),
              value: "double",
              groupValue: "type_chambre",
              onChanged: (value){
                setState(() {

                });
              },
            ),
          ),

          Padding(
            padding:  EdgeInsets.fromLTRB(100, 0, 0, 40),
            child: RadioListTile(
              title: Text("Multiple"),
              value: "multiple",
              groupValue: "type_chambre",
              onChanged: (value){
                setState(() {

                });
              },
            ),
          ),


          ElevatedButton(
            onPressed: () {},
            child: const Text('Calculer'),
          ),


        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
