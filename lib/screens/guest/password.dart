// ignore_for_file: prefer_const_constructors
import 'dart:async';
import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  bool _isSecret = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _password = "";
  String? _passwordError;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: IconButton(
          onPressed: () => {print('retour')},
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Column(
            children: [
              Text(
                'password'.toUpperCase(),
                style: const TextStyle(
                  fontSize: 30.0,
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text("Enter your password"),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      obscureText: _isSecret,
                      onChanged: (value) {
                        setState(() {
                          _password = value;
                        });
                        _validatePassword(value);
                      },
                      validator: (value) => _passwordError,
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: () => {
                            setState(() {
                              _isSecret = !_isSecret;
                            }),
                          },
                          child: Icon(
                            _isSecret ? Icons.visibility : Icons.visibility_off,
                          ),
                        ),
                        hintText: 'Ex: Mi!?ake_Kun',
                        hintStyle: TextStyle(
                          color: Color.fromARGB(94, 0, 0, 0),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6)),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ElevatedButton(
                      onPressed: () => {
                        if (_formKey.currentState!.validate())
                          {
                            print(_password),
                          }
                      },
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(0),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.all(15.0),
                        ),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.blue),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                          const TextStyle(fontSize: 16.0),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                        ),
                      ),
                      child: Text("continue".toUpperCase()),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _validatePassword(String value) {
    if (value.isEmpty) {
      _passwordError = 'Veuillez entrer un mot de passe';
    } else if (value.length < 6) {
      _passwordError = 'Le mot de passe doit contenir au moins 6 caractères';
    } else {
      _passwordError = null;
    }
  }
}
