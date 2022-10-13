import 'package:flutter/material.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:need_food/screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final Duration initialDelay =const Duration(seconds: 1);
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NeedFood',
      home: const MyHomePage(title: 'NeedFood'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/fon.jpg"), fit: BoxFit.cover),
        ),
        child: SafeArea(
          child:SingleChildScrollView(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 90,),
              DelayedDisplay(child: Center(child: Text('NeedFood',style: TextStyle(fontSize: 75,color: Colors.orangeAccent,fontFamily: 'google',fontWeight: FontWeight.w300),)),),
              SizedBox(height: 45,),
              DelayedDisplay(child: Text('Sign In',style: TextStyle(fontSize: 45,fontFamily: 'google',color: Colors.orange),),),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your login',
                  ),
                ),
              ),
              SizedBox(height: 0,),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter your password',
                  ),
                ),
              ),
              TextButton(onPressed: () {
                final snackBar = SnackBar(
                  content: const Text(
                      'Did you really forget your password?'
                  ),
                  action: SnackBarAction(label: 'Yes', onPressed: () {}
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
                  child: Text(
                    'Forgot Password ?',
                    style: TextStyle(fontSize: 21),
                  ),
              ),
              SizedBox(height: 5,),
              DelayedDisplay(
                child:Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Screen()),
                      );
                    },
                    child: Text('Login',style: TextStyle(fontFamily: 'crimson',fontSize: 30),),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(40),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 200,)
            ],
          ),
        ),
       ),
     ),
   ),
    );
  }
}
