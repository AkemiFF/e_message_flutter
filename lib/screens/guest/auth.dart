import 'package:flutter/material.dart';

class AuthScren extends StatefulWidget {
  const AuthScren({super.key});

  @override
  State<AuthScren> createState() => _AuthScrenState();
}

class _AuthScrenState extends State<AuthScren> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final RegExp emailRegex = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');
  String _email = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: "we are \n".toUpperCase(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 35,
                    ),
                    children: [
                      TextSpan(
                        text: "going\n".toUpperCase(),
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: "to start".toUpperCase()),
                      TextSpan(text: "\nhere".toUpperCase()),
                    ],
                  ),
                ),
                const Text(
                  "Everything is on code",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(
                  height: 90,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text("Enter your email"),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        onChanged: (value) => {
                          setState(() {
                            _email = value;
                          }),
                          if (value.isNotEmpty && emailRegex.hasMatch(value))
                            {
                              _formKey.currentState!.validate(),
                              print(("mail correct")),
                            }
                        },
                        validator: (value) =>
                            value!.isEmpty || !emailRegex.hasMatch(value)
                                ? "Please enter a valid mail"
                                : null,
                        decoration: const InputDecoration(
                          hintText: 'akemikun@domain.tit',
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
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            print(_email);
                          }
                        },
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
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
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
