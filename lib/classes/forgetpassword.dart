import 'package:Cloud_Login_Signup/classes/login.dart';
import 'package:flutter/material.dart';

class myforgetpassword extends StatefulWidget {
  const myforgetpassword({Key? key}) : super(key: key);

  @override
  State<myforgetpassword> createState() => _myforgetpasswordState();
}

class _myforgetpasswordState extends State<myforgetpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: const Text("Password Recovery"),
        centerTitle: true,
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
                height: 12,
              ),
              const Icon(Icons.rocket_launch, size: 130),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    filled: true,
                    label: const Text(
                      'Enter Recovery Email',
                      style: TextStyle(color: Colors.black),
                    ),
                    icon: const Icon(Icons.email, color: Colors.black),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              TextButton(
                onPressed: () {},
                child: const Text(
                  'Send Code',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
