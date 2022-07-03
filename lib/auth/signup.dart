// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10,) ,
          Center(child: Image.asset('images/logo.jpg')),
          Container(
            padding: const EdgeInsets.all(20),
            child: Form(
                child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                      )),
                ),
                 TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Nom Compet",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                      )),
                )
                const SizedBox(
                  height: 10,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                      hintText: "Mot de passe",
                      prefixIcon: Icon(Icons.person),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                      )),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: 
                 [
                    const Text('Si vous étes pas inscris ,'),
                    InkWell(
                      onTap:() {
                        
                      },
                      
                      child: const Text('Click ici !',style: TextStyle(color: Colors.blue),),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                ElevatedButton(
                
                  child: const Text(
                    'Créer Compte',
                    style: TextStyle(fontSize: 14),
                  ),
                  onPressed: () => {print('logeed')},
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
