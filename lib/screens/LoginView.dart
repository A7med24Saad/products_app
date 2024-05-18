import 'package:flutter/material.dart';
import 'package:products_app/screens/RegisterView.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  static String id = 'Login View';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool flag = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Welcome To Shopping App',
                style: TextStyle(color: Colors.orange, fontSize: 25),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return "Email must not be empty";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.email),
                    contentPadding: const EdgeInsets.all(10),
                    label: const Text(
                      'Email',
                      style: TextStyle(color: Colors.orange),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.black)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.black))),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: flag,
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.trim().isEmpty) {
                    return "Password must not be empty";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          flag = !flag;
                        });
                      },
                      icon:
                          Icon(flag ? Icons.visibility_off : Icons.visibility),
                    ),
                    contentPadding: const EdgeInsets.all(10),
                    label: const Text(
                      'Password',
                      style: TextStyle(color: Colors.orange),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.black)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.black))),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 50,
                width: 200,
                //color: Colors.orange,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.orange),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 35,
                  ),
                  const Text(
                    'Do not have an account ?  ',
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => RegisterView(),
                        ));
                      },
                      child: const Text(
                        'Create Account',
                        style: TextStyle(color: Colors.orange),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
