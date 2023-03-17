/*
* Author: Abd Al-Rahman Odeh.
* */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/shared/components/components.dart';

class LoginScreen extends StatefulWidget{

  @override
  State<LoginScreen> createState() => _LoginScreenState();

  void showPassword() {}
}

class _LoginScreenState extends State<LoginScreen> {

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  var showPass = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  defualtFormField(controller: emailController,
                      type: TextInputType.emailAddress,
                      text: 'Email Address',
                      prefix: Icons.email,
                      validate: (value) {
                        if(value!.isEmpty){
                          return 'Email Address can\'t be empty';
                        }
                        return null;
                      },
                  ),

                  const SizedBox(
                    height: 40.0,
                  ),

                  defualtFormField(
                      controller: passwordController,
                      type: TextInputType.visiblePassword,
                      text: 'Password',
                      isPassword: showPass,
                      suffix: showPass ? Icons.visibility : Icons.visibility_off,
                      prefix: Icons.lock,
                      validate: (value){
                        if(value!.isEmpty){
                          return 'Password can\'t be empty';
                        }
                        return null;
                      },
                      suffixPressed: () {
                        setState(() {
                          showPass = !showPass;
                        });
                      },
                  ),

                  const SizedBox(
                    height: 20.0,
                  ),

                  defultButton(
                      width: double.infinity,
                      background: Colors.blue,
                      function: (){
                        if(formKey.currentState!.validate()){
                          print(emailController.text);
                          print(passwordController.text);
                        }
                      },
                      text: 'LOGIN'
                  ),

                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center ,
                    children: [
                      const Text(
                          'Don\'t have an account?'
                      ),
                      TextButton(
                        onPressed: ()
                        {

                        },
                        child: const Text(
                            'Register here'
                        ),
                      )
                    ], // Row-children
                  ),
                ], // Column-children
              ),
            ),
          ),
        ),
      ),
    );
  }
}
