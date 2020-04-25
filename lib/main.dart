import 'package:flutter/material.dart';
import 'package:fluttertutorial/bounci_page_route.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));



class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: MaterialButton(
          color: Colors.lightBlue,
          child: Text('Second Button', style: TextStyle(color: Colors.white),),
          onPressed: (){
            Navigator.push(context,
                BouncyPageRoute(widget: SecondScreen()));
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text(
          'Click',

        ),
        onPressed: () {},
        backgroundColor: Colors.red[600],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Center(
        child: Text('Second Screen'),
      ),
    );
  }
}
