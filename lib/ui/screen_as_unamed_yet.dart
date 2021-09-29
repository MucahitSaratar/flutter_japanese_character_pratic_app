import 'package:flutter/material.dart';

// aksiyon

// Tasarim
MaterialApp registerscreen() {
  return MaterialApp(
    title: "Sözlük",
    theme: ThemeData(primarySwatch: Colors.yellow),
    home: homeofregister(),
  );
}

Scaffold homeofregister() {
  return Scaffold(
    backgroundColor: Color(0xFFDBE1E0),
    appBar: appbarofregisterscreen(),
    body: bodyofregisterscreen(),
  );
}

Container bodyofregisterscreen() {
  return Container(
    margin: EdgeInsets.all(20),
    child: formofregisterscreen(),
  );
}

Column formofregisterscreen() {
  return Column(
    children: [
      TextFormField(
        decoration: const InputDecoration(
            border: UnderlineInputBorder(), labelText: 'Enter your username'),
      ),
      TextFormField(
        decoration: const InputDecoration(
            border: UnderlineInputBorder(), labelText: 'Enter your password'),
        obscureText: true,
      ),
      FlatButton(
        textColor: Colors.black,
        onPressed: () {},
        child: const Text(
          'Register',
          maxLines: 1,
        ),
      ),
    ],
  );
}

AppBar appbarofregisterscreen() {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Register Screen",
          style: TextStyle(color: Colors.white),
        ),
        Text("学生")
      ],
    ),
  );
}
