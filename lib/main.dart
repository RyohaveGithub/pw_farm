import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pw_farm/next_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key,  this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List<String> titleList =["Amazon","楽天","Yahoo!","Google"];
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("パスワードポスト"),
      ),
      body: ListView.builder(
        itemCount: titleList.length,
          itemBuilder: (BuildContext context,int i){
            return Column(
              children:[
                ListTile(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> NextPage(titleList[i])));
                  },
                  leading: const Icon(Icons.vpn_key),
                  title: Text(titleList[i]),
                ),
                const Divider(),
              ]

            );
      },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          titleList.add("aa");
          print(titleList);
          setState(() {
          }
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
