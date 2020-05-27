import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:image_picker/image_picker.dart';
import 'package:line_awesome_icons/line_awesome_icons.dart';


void main() => runApp(Implicitas());

class Implicitas extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Implicitas'),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              elevation: 25,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(width: 1.0, color: Color(
                          0xFF))),
                      color: Colors.transparent,
                    ),
                    child: Icon(Icons.language, color: Colors.white, size: 30,),
                  ),
                  title: Text(
                    'Abrir URL', style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.greenAccent,),
                      Text(
                        'https://itcelaya.edu.mx/', style: TextStyle(
                          color: Colors.amberAccent,
                          fontStyle: FontStyle.italic),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right, color: Colors.white, size: 30,),
                  onTap: launchURL,
                ),
              ),
            ),
            Card(
              elevation: 25,
              margin: EdgeInsets.fromLTRB(8, 0, 8, 8),

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(width: 1.0, color: Color(
                          0xFF))),
                      color: Colors.transparent,
                    ),
                    child: Icon(
                      Icons.phone_forwarded, color: Colors.white, size: 30,),
                  ),
                  title: Text(
                    'Teléfono', style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.greenAccent,),
                      Text(
                        '4131069389', style: TextStyle(
                          color: Colors.amberAccent,
                          fontStyle: FontStyle.italic),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right, color: Colors.white, size: 30,),
                  onTap: phoneCall,
                ),
              ),
            ),
            Card(
              elevation: 25,
              margin: EdgeInsets.fromLTRB(8, 0, 8, 8),

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(width: 1.0, color: Color(
                          0xFF))),
                      color: Colors.transparent,
                    ),
                    child: Icon(Icons.sms, color: Colors.white, size: 30,),
                  ),
                  title: Text(
                    'Enviar SMS', style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.greenAccent,),
                      Text(
                        '4131069389', style: TextStyle(
                          color: Colors.amberAccent,
                          fontStyle: FontStyle.italic),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right, color: Colors.white, size: 30,),
                  onTap: sendSMS,
                ),
              ),
            ),
            Card(
              elevation: 25,
              margin: EdgeInsets.fromLTRB(8, 0, 8, 8),

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(width: 1.0, color: Color(
                          0xFF))),
                      color: Colors.transparent,
                    ),
                    child: Icon(
                      Icons.alternate_email, color: Colors.white, size: 30,),
                  ),
                  title: Text(
                    'Enviar e-mail', style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.greenAccent,),
                      Text(
                        'Correo: gusramireles46@gmail.com', style: TextStyle(
                          color: Colors.amberAccent,
                          fontStyle: FontStyle.italic,
                          fontSize: 12),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right, color: Colors.white, size: 30,),
                  onTap: sendMail,
                ),
              ),
            ),
            Card(
              elevation: 25,
              margin: EdgeInsets.fromLTRB(8, 0, 8, 8),

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.only(right: 2),
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(width: 1.0, color: Color(
                          0xFF))),
                      color: Colors.transparent,
                    ),
                    child: Icon(
                      Icons.photo_camera, color: Colors.white, size: 30,),
                  ),
                  title: Text(
                    'Tomar foto', style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.greenAccent,),
                      Text(
                        'Capturar imagen', style: TextStyle(
                          color: Colors.amberAccent,
                          fontStyle: FontStyle.italic),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right, color: Colors.white, size: 30,),
                  onTap: takePhoto,
                ),
              ),
            ),
            Card(
              elevation: 25,
              margin: EdgeInsets.fromLTRB(8, 0, 8, 8),

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(width: 1.0, color: Color(
                          0xFF))),
                      color: Colors.transparent,
                    ),
                    child: Icon(
                      Icons.map, color: Colors.white, size: 30,),
                  ),
                  title: Text(
                    'Abrir Mapa', style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.greenAccent,),
                      Text(
                        'Dirección: Mi Casa', style: TextStyle(
                          color: Colors.amberAccent,
                          fontStyle: FontStyle.italic,
                          fontSize: 12),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right, color: Colors.white, size: 30,),
                  onTap: openMaps,
                ),
              ),
            ),
            Card(
              elevation: 25,
              margin: EdgeInsets.fromLTRB(8, 0, 8, 8),

              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
                child: ListTile(
                  leading: Container(
                    padding: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      border: Border(right: BorderSide(width: 1.0, color: Color(
                          0xFF))),
                      color: Colors.transparent,
                    ),
                    child: Icon(
                      Icons.contacts, color: Colors.white, size: 30,),
                  ),
                  title: Text(
                    'Abrir Contactos', style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Row(
                    children: <Widget>[
                      Icon(Icons.touch_app, color: Colors.greenAccent,),
                      Text(
                        'Mostrar lista de contactos', style: TextStyle(
                          color: Colors.amberAccent,
                          fontStyle: FontStyle.italic,
                          fontSize: 12),
                      )
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_right, color: Colors.white, size: 30,),
                  onTap: contactList,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void launchURL() async {
    final url = 'http://itcelaya.edu.mx/index.php?r=especialidades/view&id=2';
    if (await canLaunch(url)) {
      Fluttertoast.showToast(msg: 'Abriendo navegador');
      await launch(url);
    } else {
      Fluttertoast.showToast(msg: 'Error al procesar la solicitud.');
    }
  }

  void phoneCall() async {
    var numero = 4131069389;
    final tel = "tel:$numero";
    if (await canLaunch(tel)) {
      Fluttertoast.showToast(msg: 'Preparando llamada a $numero');
      await launch(tel);
    } else {
      Fluttertoast.showToast(msg: 'Error al procesar la solicitud.');
    }
  }

  void sendSMS() async {
    var contacto = 4131069389;
    final smsto = "sms:$contacto";
    if (await canLaunch(smsto)) {
      Fluttertoast.showToast(msg: 'Preparando mensaje para $contacto');
      await launch(smsto);
    } else {
      Fluttertoast.showToast(msg: 'Error al procesar la solicitud.');
    }
  }

  void sendMail() async {
    var usuario = "18031000@itcelaya.edu.mx";
    final Uri params = Uri(scheme: "mailto",
        path: "$usuario",
        query: "subject=Email de prueba &body=Hola Mundo");

    var email = params.toString();
    if (await canLaunch(email)) {
      Fluttertoast.showToast(msg: 'Preparando e-mail para $usuario');
      await launch(email);
    } else {
      Fluttertoast.showToast(msg: 'Error al procesar la solicitud');
    }
  }

  void takePhoto() async {
    Fluttertoast.showToast(msg: 'Abriendo cámara');
    await ImagePicker.pickImage(source: ImageSource.camera);
  }

  void openMaps() async{
    const map = "geo:0,0?q=38010 Nuevo Tecnológico, Celaya, Gto";
    if(await canLaunch(map)){
      Fluttertoast.showToast(msg: 'Cargando Mapa');
      await launch(map);
    } else {
      Fluttertoast.showToast(msg: 'Error al procesar la solicitud');
    }
  }

  void contactList() async {
    final action = "content://contacts/people";
    if (await canLaunch(action)) {
      Fluttertoast.showToast(
        msg: 'Abriendo lista',
      );
      launch(action);
    } else {
      Fluttertoast.showToast(
        msg: 'Error al procesar la solicitud',
      );
    }
  }
}