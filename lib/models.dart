// ignore_for_file: file_names, unused_import, duplicate_import

import 'package:tugas_app/pages/formRegister.dart';
import 'package:tugas_app/pages/form_25.dart';
import 'package:tugas_app/pages/geolocation.dart';
import 'package:tugas_app/pages/geolocationGeocoding.dart';
import 'package:tugas_app/pages/slide_checkBox_switch.dart';
import 'package:geolocator/geolocator.dart';

import './pages/gradient.dart';
import './pages/pageview.dart';
import 'pages/dropdown.dart';
import 'pages/form.dart';
import 'pages/geolocation.dart';

class ChartModel {
  final String name;
  final String message;
  final String time;

  final dynamic page;

  ChartModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.page});
}

final List<ChartModel> items = [
  ChartModel(
    name: 'Gradient',
    message: 'Acara 21 - Gradient Flutter',
    time: '12.00',
    page: GradientPage(),
  ),
  ChartModel(
    name: 'Page View',
    message: 'Acara 22 - Page View Flutter',
    time: '12.00',
    page: PageViewPage(),
  ),
  ChartModel(
    name: 'Dropdown',
    message: 'Acara 23 - Dropdown Flutter',
    time: '12.00',
    page: DropdownPage(),
  ),
  ChartModel(
    name: "Form Input",
    message: 'Acara 25 - Form Input Flutter',
    time: '12.00',
    page: formInput(),
  ),
  ChartModel(
    name: 'Button',
    message: 'Acara 26 - Button Flutter',
    time: '12.00',
    page: button(),
  ),
  ChartModel(
    name: 'Final Form',
    message: 'Acara 27 - Final Form Flutter',
    time: '12.00',
    page: finalForm(),
  ),
  ChartModel(
    name: 'Form Register',
    message: 'Acara 28 - Form register Flutter',
    time: '12.00',
    page: register(),
  ),
  ChartModel(
    name: 'Geolocation',
    message: 'Acara 10 - Geolocation Flutter TSA',
    time: '12.00',
    page: geolocation(title: 'Geolocation'),
  ),
  ChartModel(
    name: 'Geolocation dan Geocoding',
    message: 'Acara 10 - Geolocation dan Geocoding Flutter TSA',
    time: '12.00',
    page: geolocationGeocoding(title: 'Geolocation dan Geocoding'),
  ),
];
