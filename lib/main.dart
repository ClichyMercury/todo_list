import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  String title = "todo_list";

  TextEditingController emailctrl = TextEditingController();
  TextEditingController passwordctrl = TextEditingController();

  FocusNode emailFN = FocusNode();
  FocusNode passwordFN = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Welcome to your Todo list. Login to synchronise your tasks',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 45,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 35),
              Container(
                height: 70,
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                margin: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green,
                    style: BorderStyle.solid,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextField(
                  focusNode: emailFN,
                  textInputAction: TextInputAction.next,
                  autocorrect: false,
                  controller: emailctrl,
                  textAlignVertical: TextAlignVertical.center,
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    enabled: false,
                    errorText: 'enter your email',
                    border: InputBorder.none,
                    hintText: 'Email',
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 70,
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                margin: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 10.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.green,
                    style: BorderStyle.solid,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: TextField(
                  focusNode: passwordFN,
                  textInputAction: TextInputAction.done,
                  autocorrect: false,
                  controller: passwordctrl,
                  textAlignVertical: TextAlignVertical.center,
                  obscureText: false,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    enabled: false,
                    errorText: 'enter your Password',
                    border: InputBorder.none,
                    hintText: 'Password',
                  ),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {},
                child: Container(
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  margin: EdgeInsets.symmetric(
                    horizontal: 20.0,
                    vertical: 10.0,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: const Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
