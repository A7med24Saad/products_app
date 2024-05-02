import 'package:flutter/material.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Register',
                  style: TextStyle(color: Colors.orange, fontSize: 30),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person),
                      contentPadding: const EdgeInsets.all(15),
                      label: const Text(
                        'Name',
                        style: TextStyle(color: Colors.orange),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.grey)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.grey))),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      contentPadding: const EdgeInsets.all(15),
                      label: const Text(
                        'Email',
                        style: TextStyle(color: Colors.orange),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.grey)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.grey))),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      contentPadding: const EdgeInsets.all(15),
                      label: const Text(
                        'Password',
                        style: TextStyle(color: Colors.orange),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.grey)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.grey))),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      contentPadding: const EdgeInsets.all(15),
                      label: const Text(
                        'configure Password',
                        style: TextStyle(color: Colors.orange),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.grey)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.grey))),
                ),
              ],
            ),
          ),
        ));
  }
}
