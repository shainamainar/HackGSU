import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wing Drop',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(title: 'Wing Drop'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, bool>values = {
    'Lemon Pepper': false,
    'KBBQ': false,
    'Hot': false,
    'Dry Rub': false,
    'Jerk': false,
  };
  void locate(){
    //TODO
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Wing Drop',
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('Wing Drop',), backgroundColor: Colors.amber,),
        body: Align(
          alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Image.asset('assets/logo.png', width: 300.0, height: 200.0,),
                Flexible(child: new ListView(
                  children: values.keys.map((String key) {
                    return new CheckboxListTile(
                        activeColor: Colors.amber,
                        title: new Text(key),
                        value: values[key],
                        onChanged: (bool value) {
                          setState(() {
                            values[key] = value;
                    });
                  },
                );
                  }).toList(),
                ),
                ),
                Flexible(child: Align(
                  child: RaisedButton(
                  onPressed: locate,
                  padding:  EdgeInsets.all(8.0),
                  textColor: Colors.white,
                  color: Colors.amber,
                  child: Text("Locate"),
                ),
                )
                )
        ]
      ),
    )
    )
    );
  }


}

