import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text-field',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.cyanAccent,
      drawer: const Drawer(),
      appBar: AppBar(
        shadowColor: Colors.deepPurple,
        elevation: 10.0,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(12),
                bottomLeft: Radius.circular(12))),
        backgroundColor: Colors.lightBlueAccent,
        toolbarHeight: 80,
        title: const Text(
          'Text-Field',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Card(
            elevation: 20,
            color: Colors.black,
            shadowColor: Colors.redAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              width: 400,
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.amber, width: 2.0),
                gradient: const LinearGradient(
                  colors: [Colors.green, Colors.lightGreenAccent, Colors.green],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2), // Shadow color
                    blurRadius: 10, // Softness of the shadow
                    spreadRadius: 2, // Size of the shadow
                    offset: const Offset(5, 10), // Position of the shadow
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Login Page',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 80,
                    ),
                    const TextField(
                      maxLength: 10,
                      decoration: InputDecoration(
                          //prefixIcon: Icon(Icons.phone,),
                          //suffixIcon: Icon(Icons.warning_rounded),
                          labelText: 'Enter your email or Phone number',
                          labelStyle: TextStyle(color: Colors.purpleAccent),
                          border: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.indigoAccent, width: 2))),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      obscureText: true,
                      maxLength: 10,
                      controller: TextEditingController(),
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                          //filled: true,
                          fillColor: Colors.white60,
                          focusColor: Colors.green,
                          //prefixIcon: Icon(Icons.password),
                          labelText: 'Enter your password',
                          labelStyle: TextStyle(color: Colors.purpleAccent),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.amber)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 2)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.indigoAccent, width: 2))),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            minimumSize: const Size(double.infinity, 60),
                            backgroundColor: Colors.lightBlueAccent,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                                side: const BorderSide(color: Colors.amber))),
                        child: const Text('Login'),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      '@ all right are reserved 2024',
                      style: TextStyle(fontSize: 10),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
