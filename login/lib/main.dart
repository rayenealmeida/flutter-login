import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:ThemeData(
        primarySwatch: Colors.brown,

      ),
      home: const MyHomePage(title: "Login"),
     
    );
  }
}

class MyHomePage extends StatefulWidget{
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
  
}

class _MyHomePageState extends State<MyHomePage>{
  TextStyle style = const TextStyle(fontFamily: 'Montserrat', fontSize: 20.0 );
  
  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      obscureText: false,
      style: style,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
        final passwordField = TextField(
      obscureText: true,
      style: style,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: const Color.fromARGB(255, 211, 189, 181),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: (){},
        child: Text("Login",
        textAlign: TextAlign.center,
        style: style.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
       ),
      )
    );
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 155.0,
                child: Image.asset("images/panda.jpg",
                fit: BoxFit.contain,
                ),
                ),
                const SizedBox(
                  height: 45.0),
                  emailField,
                const SizedBox(
                  height: 25.0),
                  passwordField,
                  const SizedBox(
                  height: 35.0),
                  loginButton,
              ],
           
            )
            ),
        ),
        

        ),
    );
  }
}