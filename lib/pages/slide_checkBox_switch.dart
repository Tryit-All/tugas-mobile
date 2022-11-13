// ignore_for_file: camel_case_types, library_private_types_in_public_api, unused_import, prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class button extends StatefulWidget {
  const button({super.key});

  @override
  _buttonState createState() => _buttonState();
}

class _buttonState extends State<button> {
  final _formKey = GlobalKey<FormState>();
  double nilaiSlider = 1;
  bool nilaiCheckBox = false;
  bool nilaiSwitch = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputan Form'),
        backgroundColor: Colors.green,
      ),
      body: new Form(
          key: _formKey,
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: new InputDecoration(
                    hintText: 'Masukkan Nama',
                    labelText: 'Nama Lengkap',
                    icon: Icon(Icons.person_outline_sharp),
                    border: OutlineInputBorder(
                        borderRadius: new BorderRadius.circular(5.0)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nama tidak boleh kosong';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: new InputDecoration(
                      hintText: 'Masukkan Password',
                      labelText: "Password",
                      icon: Icon(Icons.security),
                      border: OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0)),
                    ),
                    validator: ((value) {
                      if (value!.isEmpty) {
                        return 'Password tidak boleh kosong';
                      }
                      return null;
                    }),
                  ),
                ),
                CheckboxListTile(
                  title: Text('Belajar Dasar Flutter'),
                  subtitle: Text('Dart, widget, http'),
                  value: nilaiCheckBox,
                  activeColor: Colors.green,
                  onChanged: (value) {
                    setState(() {
                      nilaiCheckBox = value!;
                    });
                  },
                ),
                SwitchListTile(
                  value: nilaiSwitch,
                  title: Text('Backround Programming'),
                  subtitle: Text('Dart, Nodejs, PHP, Java, dll'),
                  activeTrackColor: Colors.green,
                  activeColor: Colors.grey[600],
                  onChanged: (value) {
                    setState(() {
                      nilaiSwitch = value;
                    });
                  },
                ),
                Slider(
                  value: nilaiSlider,
                  min: 0,
                  max: 100,
                  activeColor: Colors.green,
                  onChanged: (value) {
                    setState(() {
                      nilaiSlider = value;
                    });
                  },
                ),
                SizedBox(
                  height: 10,
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
                                if (_formKey.currentState!.validate()) {}
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
              ],
            ),
          )),
    );
  }
}
