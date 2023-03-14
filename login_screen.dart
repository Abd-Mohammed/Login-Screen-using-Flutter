/*
* Author: Abd Al-Rahman Odeh.
* */

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
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
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email address',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted: (String value)
                  {
                    print(value);
                  },
                  onChanged:(String value)
                  {
                    print(value);
                  },
                ),
                const SizedBox(
                  height: 40.0,
                ),
                TextFormField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    ) ,
                  keyboardType: TextInputType.visiblePassword,
                  onFieldSubmitted: (String value)
                  {
                    print(value);
                  },
                  onChanged:(String value)
                  {
                    print(value);
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(
                      onPressed:()
                      {
                        print(emailController.text);
                        print(passwordController.text);
                      },
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
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
    );
  }

}