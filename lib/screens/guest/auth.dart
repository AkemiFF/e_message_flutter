import 'package:flutter/material.dart';

class AuthScren extends StatefulWidget {
  const AuthScren({super.key});

  @override
  State<AuthScren> createState() => _AuthScrenState();
}

class _AuthScrenState extends State<AuthScren> {
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
                    text: "Nous allons\n".toUpperCase(),
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                    children: [
                      TextSpan(
                        text: "commencer\n".toUpperCase(),
                        style: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(text: "ici".toUpperCase()),
                    ],
                  ),
                ),
                const Text(
                  "Toute est dans le code",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                  ),
                ),
                const SizedBox(
                  height: 90,
                ),
                Form(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text("Entrer votre email"),
                      const SizedBox(
                        height: 10,
                      ),
                      TextFormField(
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
                        onPressed: () => print("Hello"),
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            const EdgeInsets.all(16.0),
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
                        child: Text("continuer".toUpperCase()),
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
