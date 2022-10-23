// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages, unused_import, camel_case_types, prefer_final_fields, unused_field

import 'package:android_intent_plus/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:platform/platform.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class geolocationGeocoding extends StatefulWidget {
  const geolocationGeocoding({super.key, required this.title});

  final String title;
  @override
  _geolocationGeocodingState createState() => _geolocationGeocodingState();
}

class _geolocationGeocodingState extends State<geolocationGeocoding> {
  int _counter = 0;
  String location = 'Belum mendapatkan lat dan long, Silahkan tekan betton';
  String address = 'Mencari lokasi.....';

  Future<Position> _getGeolocationPosition() async {
    bool serviceEnable;
    LocationPermission permission;

    serviceEnable = await Geolocator.isLocationServiceEnabled();

    if (!serviceEnable) {
      await Geolocator.openLocationSettings();
      return Future.error('Location service Not Enabled');
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permission denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
        'Location permission denied forever, we cannot access',
      );
    }
    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }

  Future<void> getAddressFromLongLat(Position position) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    print(placemarks);
    Placemark place = placemarks[0];
    setState(() {
      address =
          '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Koordinat Point',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              location,
              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Address',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('${address}'),
            ElevatedButton(
              onPressed: () async {
                Position position = await _getGeolocationPosition();
                setState(() {
                  location = '${position.latitude}, ${position.longitude}';
                });
                getAddressFromLongLat(position);
              },
              child: Text('Get Koordinat'),
            ),
            Text(
              'Tujuan Anda',
              style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextFormField(
              autofocus: false,
              obscureText: false,
              decoration: InputDecoration(
                hintText: 'Location Tujuan anda',
                contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: MaterialButton(
                minWidth: 200.0,
                height: 42.0,
                onPressed: () {
                  final Intent = AndroidIntent(
                      action: 'action_view',
                      data: Uri.encodeFull(
                          'google.navigation:q=Taronga+Zoo,+Sydney+Australia&avoid=tf'),
                      package: 'com.google.android.apps.maps');
                  Intent.launch();
                },
                color: Colors.lightBlueAccent,
                child: Text(
                  'Cari Alamat',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
