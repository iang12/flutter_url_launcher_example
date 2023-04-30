import 'package:flutter/material.dart';
import 'package:flutter_url_launcher_example/url_links.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Url Launcher',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Url Launcher Examples'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
              onPressed: UrlLinks.abrirWhatsApp,
              child: const Text(
                'Enviar mensagem no whatsapp',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: UrlLinks.abrirUrl,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  Colors.blue[300],
                ),
              ),
              child: const Text(
                'Abrir o site da Flutterando',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: UrlLinks.abrirGmail,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.redAccent),
              ),
              child: const Text(
                'Abrir o Gmail',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: UrlLinks.abrirGoogleMaps,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
              ),
              child: const Text(
                'Abrir o Google Maps',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: UrlLinks.abrirMessenger,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
              child: const Text(
                'Abrir o Facebook Messenger',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: UrlLinks.abrirContatos,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.purpleAccent),
              ),
              child: const Text(
                'Abrir os Contatos',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: UrlLinks.fazerLigacao,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
              child: const Text(
                'Fazer Ligação',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: UrlLinks.enviarSms,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black45),
              ),
              child: const Text(
                'Enviar SMS',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
