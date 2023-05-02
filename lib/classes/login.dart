import 'package:Cloud_Login_Signup/classes/forgetpassword.dart';
import 'package:Cloud_Login_Signup/classes/signup.dart';
import 'package:flutter/material.dart';

class myLogin extends StatefulWidget {
  const myLogin({Key? key}) : super(key: key);

  @override
  State<myLogin> createState() => _myLoginState();
}

class _myLoginState extends State<myLogin> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        // titleSpacing: 3.0,
        title: const Text(
          'Log in',
            style: TextStyle(color: Colors.white,fontSize: 23),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[400],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Icon(
                  Icons.cloud,
                  size: 130,
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  'Welcome Back',
                  style: TextStyle(fontSize: 23),
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: TextField(
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      label: const Text(
                        "Input Email",
                        style: TextStyle(color: Colors.black),
                      ),
                      hintText: 'Enter Email',
                      helperText: "Username or Email",
                      icon: const Icon(
                        Icons.email,
                        color: Colors.black,
                      ),
                      focusColor: Colors.blue,
                      filled: true,
                      fillColor: Colors.grey,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: _obscureText,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      label: const Text(
                        "Input Password",
                        style: TextStyle(color: Colors.black),
                      ),
                      hintText: 'Enter Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.black,
                        ),
                      ),
                      // helperText: "Username or Email",
                      icon: const Icon(Icons.lock, color: Colors.black),
                      filled: true,
                      fillColor: Colors.grey,
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 1,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => myforgetpassword()));
                          },
                          child: const Text(
                            "Forgot your password?",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black),
                          ))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //Text("Login"),
                         TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Login",
                            style: TextStyle(color: Colors.black, fontSize: 17),
                          ),
                        ),
                    Text('or',style: TextStyle(color: Colors.black,fontSize: 21),)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (Context) => const mySignup(),
                          ),
                        );
                      },
                      child: const Text(
                        'Signup',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
