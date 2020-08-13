import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Url Launcher',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Url Launcher Examples'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text(
                'Enviar mensagem no whatsapp',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: abrirWhatsApp,
              color: Colors.green,
            ),
            RaisedButton(
              child: Text(
                'Abrir o site da Flutterando',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: abrirUrl,
              color: Colors.blue[300],
            ),
            RaisedButton(
              child: Text(
                'Abrir o Gmail',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: abrirGmail,
              color: Colors.redAccent,
            ),
            RaisedButton(
              child: Text(
                'Abrir o Google Maps',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: abrirGoogleMaps,
              color: Colors.greenAccent,
            ),
            RaisedButton(
              child: Text(
                'Abrir o Facebook Messenger',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: abrirMessenger,
              color: Colors.blue,
            ),
            RaisedButton(
              child: Text(
                'Abrir os Contatos',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: abrirContatos,
              color: Colors.purpleAccent,
            ),
            RaisedButton(
              child: Text(
                'Fazer Ligação',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: fazerLigacao,
              color: Colors.black,
            ),
            RaisedButton(
              child: Text(
                'Enviar SMS',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: enviarSms,
              color: Colors.black45,
            )
          ],
        ),
      ),
    );
  }
}

abrirGmail() async {
  final Uri params = Uri(
    scheme: 'mailto',
    path: 'ianwandersong12@gmail.com',
    query: 'subject=Reportar&body=Detalhe aqui qual bug você encontrou: ',
  );
  String url = params.toString();
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    print('Could not launch $url');
  }
}

abrirUrl() async {
  const url = 'https://flutterando.com.br/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

abrirWhatsApp() async {
  var whatsappUrl = "whatsapp://send?phone=5586994324465&text=Olá,tudo bem ?";

  if (await canLaunch(whatsappUrl)) {
    await launch(whatsappUrl);
  } else {
    throw 'Could not launch $whatsappUrl';
  }
}

//method to launch maps
abrirGoogleMaps() async {
  const urlMap =
      "https://www.google.com/maps/search/?api=1&query=-22.9732303,-43.2032649";
  if (await canLaunch(urlMap)) {
    await launch(urlMap);
  } else {
    throw 'Could not launch Maps';
  }
}

abrirMessenger() async {
  var messengerUrl = 'http://m.me/ianwandersom';
  if (await canLaunch(messengerUrl)) {
    await launch(messengerUrl);
  } else {
    throw 'Could not launch $messengerUrl';
  }
}

abrirContatos() async {
  const url = 'content://com.android.contacts/contacts';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

fazerLigacao() async {
  const url = "tel:86994324465";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

enviarSms() async {
  const url = "sms:86994324465?body=Olá, tudo bem?";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
