import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLinks {
  static void abrirGmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: 'ianwandersong12@gmail.com',
      query: 'subject=Reportar&body=Detalhe aqui qual bug você encontrou: ',
    );
    String url = params.toString();
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      debugPrint('Could not launch $url');
    }
  }

  static void abrirUrl() async {
    const url = 'https://flutterando.com.br/';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  static void abrirWhatsApp() async {
    var whatsappUrl = "whatsapp://send?phone=5586994324465&text=Olá,tudo bem ?";

    if (await canLaunchUrl(Uri.parse(whatsappUrl))) {
      await launchUrl(Uri.parse(whatsappUrl));
    } else {
      throw 'Could not launch $whatsappUrl';
    }
  }

  static void abrirGoogleMaps() async {
    const urlMap = "https://www.google.com/maps/search/?api=1&query=-22.9732303,-43.2032649";
    if (await canLaunchUrl(Uri.parse(urlMap))) {
      await launchUrl(Uri.parse(urlMap));
    } else {
      throw 'Could not launch Maps';
    }
  }

  static void abrirMessenger() async {
    var messengerUrl = 'https://m.me/ianwandersom';
    if (await canLaunchUrl(Uri.parse(messengerUrl))) {
      await launchUrl(
        Uri.parse(messengerUrl),
        mode: LaunchMode.externalApplication,
      );
    } else {
      throw 'Could not launch $messengerUrl';
    }
  }

  static void abrirInstagram() async {
    var messengerUrl = 'https://instagram.com/ianoliveira.dev';
    if (await canLaunchUrl(Uri.parse(messengerUrl))) {
      await launchUrl(Uri.parse(messengerUrl));
    } else {
      throw 'Could not launch $messengerUrl';
    }
  }
  
  static void abrirContatos() async {
    const url = 'content://com.android.contacts/contacts';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  static void fazerLigacao() async {
    const url = "tel:86994324465";
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  static void enviarSms() async {
    const url = "sms:86994324465?body=Olá, tudo bem?";
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}
