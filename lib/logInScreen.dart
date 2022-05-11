import 'package:flutter/material.dart';
import 'userScreen.dart';

class FirstScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _contoller1 = TextEditingController();
  final _contoller2 = TextEditingController();

  FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
          child :Center(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _contoller1,
                validator: (value) {
                  if (value != 'ayafarid@gmail.com') {
                    return 'Your E-mail is not valid';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    hintText: 'Enter your E-mail please',
                    label: Text('E-mail')),
              ),
              TextFormField(
                controller: _contoller2,
                validator: (value) {
                  if (value != 'ayafarid070') {
                    return 'Wrong Password';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                    hintText: 'Enter your Password please',
                    label: Text('Password')),
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  bool? valid = _formKey.currentState!.validate();
                  if (valid == false) {
                    showDialog(
                        barrierDismissible: true,
                        barrierColor: Colors.black.withOpacity(0.3),
                        context: context,
                        builder: (c) {
                          return const SimpleDialog(
                            contentPadding: EdgeInsets.all(5),
                            children: [
                              Text(
                                  'your e-mail or your Password is wrong try again:)'),
                            ],
                          );
                        });
                  } else if (valid ==true){
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (s) {
                        return SecondScreen();
                      }),
                    );
                  }
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      )),);
  }
}
