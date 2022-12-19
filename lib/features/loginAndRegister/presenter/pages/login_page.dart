import 'package:flutter/material.dart';
import 'package:todo_list/features/loginAndRegister/widgets/main_button.dart';
import 'package:todo_list/features/loginAndRegister/widgets/text_fild.dart';

class LoginPage extends StatefulWidget {
  LoginPage({
    Key? key,
  }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userName = TextEditingController();
  TextEditingController userPass = TextEditingController();
  final FocusNode _userNameFocusNode = FocusNode();
  final FocusNode _userPassFocusNode = FocusNode();

  String get email => userName.text;
  String get password => userPass.text;

  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(top: 50.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //SizedBox(height: 50.0),
              Image.asset("assets/images/pngwing.com.png"),
              _buildHeader(),
              SizedBox(height: 10.0),
              Text(
                'Please sign in to your account',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 60.0),
              textFild(
                enabled: _isLoading == false,
                focusNode: _userNameFocusNode,
                textInputAction: TextInputAction.next,
                keyBordType: TextInputType.emailAddress,
                controller: userName,
                image: 'user.svg',
                hintTxt: 'Email',
              ),
              textFild(
                enabled: _isLoading == false,
                focusNode: _userPassFocusNode,
                textInputAction: TextInputAction.done,
                controller: userPass,
                image: 'hide.svg',
                isObs: false,
                hintTxt: 'Password',
              ),
              SizedBox(height: 10.0),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 20.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password ?',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Mainbutton(
                      onTap: () {},
                      text: 'Sign in',
                      btnColor: Colors.green,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    if (_isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return Text(
      'Welcome Back !',
      style: TextStyle(
        fontSize: 14,
        color: Colors.green,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
