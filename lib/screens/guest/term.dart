import 'package:flutter/material.dart';

class TermScreen extends StatefulWidget {
  const TermScreen({super.key});

  @override
  State<TermScreen> createState() => _TermScreenState();
}

class _TermScreenState extends State<TermScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text(
          "Terme & condition",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () => {print('retour')},
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                        text: const TextSpan(
                          text: "",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: AutofillHints.countryName,
                          ),
                          children: [
                            TextSpan(
                              text: """Bienvenue sur Akemi E-Message !\n""",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(text: """

Veuillez lire attentivement les termes et conditions suivants qui régissent votre utilisation de notre application de messagerie. En téléchargeant, installant ou utilisant cette application, vous acceptez d'être lié par ces termes et conditions.

1. Utilisation de l'Application

Vous êtes autorisé à utiliser notre application de messagerie uniquement à des fins personnelles et non commerciales. Vous acceptez de ne pas utiliser cette application pour transmettre tout contenu illégal, diffamatoire, offensant, ou toute autre forme de contenu inapproprié. Vous êtes responsable de maintenir la confidentialité de votre compte et de vos informations d'identification.

2. Contenu Utilisateur

En utilisant notre application, vous acceptez que tout contenu que vous publiez ou partagez soit de votre seule responsabilité. Vous accordez à Akemi E-Message une licence mondiale, non exclusive, transférable, gratuite et sous-licenciable pour utiliser, reproduire, modifier, adapter, publier, traduire et distribuer votre contenu.

3. Propriété Intellectuelle

Tous les droits de propriété intellectuelle liés à l'application, y compris les marques, logos, graphiques, textes, et autres contenus, appartiennent à Akemi E-Message. Vous n'êtes pas autorisé à utiliser, reproduire ou distribuer tout élément protégé par des droits de propriété intellectuelle sans autorisation.

4. Limitation de Responsabilité

Akemi E-Message ne peut en aucun cas être tenu responsable des dommages directs, indirects, spéciaux, consécutifs ou punitifs résultant de l'utilisation ou de l'incapacité à utiliser l'application.

5. Modifications des Conditions

Akemi E-Message se réserve le droit de modifier ces termes et conditions à tout moment. Les modifications prendront effet dès leur publication sur l'application. Il est de votre responsabilité de vérifier régulièrement les termes et conditions mis à jour.

En utilisant notre application, vous reconnaissez avoir lu, compris et accepté ces termes et conditions. Si vous n'êtes pas d'accord avec ces termes, veuillez ne pas utiliser notre application.

Pour toute question ou préoccupation concernant ces termes et conditions, veuillez nous contacter à support@akemiemessage.com.

Date d'entrée en vigueur : 1er avril 2024
"""),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: SizedBox(
              width: 300.0,
              child: ElevatedButton(
                onPressed: () => print("Hello"),
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
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                ),
                child: Text("Accepter et Continuer".toUpperCase()),
              ),
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
