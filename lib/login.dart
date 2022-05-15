import 'package:flutter/material.dart';

class login extends StatelessWidget {
  login({Key? key}) : super(key: key);
  final _name = TextEditingController();
  final _pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(
                'assets/images/63714494-c4d9c880-c7f6-11e9-8940-5a9636ecba36.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _name,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'username'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: _pass,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: 'password'),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                goto(context);
              },
              child: Text('login'))
        ],
      )),
    );
  }

  void goto(BuildContext cxt) {
    final _username = _name.text;
    final _password = _pass.text;
    if (_password != _username) {
      ScaffoldMessenger.of(cxt).showSnackBar(SnackBar(
        content: Text('invalid password or email'),
      ));
      showDialog(
          context: cxt,
          builder: (ctx1) {
            return AlertDialog(
              title: Text('message'),
              content: Text(' password or username error '),
              actions: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(ctx1);
                    },
                    child: Text('close'))
              ],
            );
          });
    }
  }
}
