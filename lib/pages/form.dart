// ignore_for_file: unnecessary_brace_in_string_interps, sized_box_for_whitespace, unused_local_variable, unnecessary_new, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: new finalForm(),
  ));
}

class finalForm extends StatefulWidget {
  const finalForm({super.key});

  @override
  _finalFormState createState() => _finalFormState();
}

class _finalFormState extends State<finalForm> {
  List<String> agama = [
    'Islam',
    'Kristen Protenstan',
    'Kristen Katolik',
    'Hindu',
    'Budha'
  ];

  String _agama = 'Islam';

  String _jk = '';

  TextEditingController controllerNama = new TextEditingController();
  TextEditingController controllerPass = new TextEditingController();
  TextEditingController controllerMoto = new TextEditingController();

  void _piihJk(String value) {
    setState(() {
      _jk = value;
    });
  }

  void pilihAgama(String value) {
    setState(() {
      _agama = value;
    });
  }

  void kirimData() {
    AlertDialog alertDialog = new AlertDialog(
      content: Container(
        height: 200.0,
        child: Column(
          children: <Widget>[
            Text('Nama Lengkap : ${controllerNama.text}'),
            Text('Password : ${controllerPass.text}'),
            Text('Moto Hidup : ${controllerMoto.text}'),
            Text('Jenis Kelamin : ${_jk}'),
            Text('Agama : ${_agama}'),
            Container(
              width: 331,
              height: 58,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 331,
                    height: 58,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue,
                    ),
                    padding: const EdgeInsets.only(
                      left: 130,
                      right: 121,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text(
                            "Ok",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
    showDialog(context: context, builder: (_) => alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Data Diri'),
        backgroundColor: Colors.green,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20.0),
            child: Column(children: <Widget>[
              TextField(
                controller: controllerNama,
                decoration: new InputDecoration(
                  hintText: 'Masukkan Nama',
                  labelText: 'Nama Lengkap',
                  icon: Icon(Icons.person_outline_sharp),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
              ),
              TextField(
                controller: controllerPass,
                obscureText: true,
                decoration: new InputDecoration(
                  hintText: 'Masukkan Password',
                  labelText: 'Password',
                  icon: Icon(Icons.privacy_tip_outlined),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: controllerMoto,
                maxLines: 3,
                decoration: new InputDecoration(
                  hintText: 'Masukkan Moto Hidup',
                  labelText: 'Moto Hidup',
                  icon: Icon(Icons.note_alt_outlined),
                  border: OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              RadioListTile(
                value: 'Laki - laki',
                title: Text('Laki-laki'),
                groupValue: _jk,
                onChanged: (String? value) {
                  _piihJk(value!);
                },
                activeColor: Colors.green,
                subtitle: Text('Pilih ini jika anda laki-laki'),
              ),
              RadioListTile(
                value: 'Perempuan',
                title: Text('Perempuan'),
                groupValue: _jk,
                onChanged: (String? value) {
                  _piihJk(value!);
                },
                activeColor: Colors.green,
                subtitle: Text('Pilih ini jika anda perempuan'),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Agama',
                    style: TextStyle(fontSize: 18, color: Colors.green),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  DropdownButton(
                    onChanged: (String? value) {
                      pilihAgama(value!);
                    },
                    value: _agama,
                    items: agama.map((String value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 331,
                height: 58,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 331,
                      height: 58,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.green,
                      ),
                      padding: const EdgeInsets.only(
                        left: 130,
                        right: 121,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {
                              kirimData();
                            },
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
