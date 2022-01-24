import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main()
{
  return runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  final spinkit= SpinKitFadingCircle(
    itemBuilder: (BuildContext context ,int index ){
      return DecoratedBox(
        decoration: BoxDecoration(
          color: index.isEven ? Colors.deepOrange :Colors.blue,

        ),
      );
    },
  );

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SpinKitRing(color: Colors.black38,duration: Duration(milliseconds: 3000),size: 100,),

    );
  }
}




