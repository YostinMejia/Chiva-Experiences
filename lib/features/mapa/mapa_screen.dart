// lib/features/mapa/mapa_screen.dart

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_marker_popup/flutter_map_marker_popup.dart';
import 'package:latlong2/latlong.dart';
import 'package:http/http.dart' as http;

class MapaScreen extends StatefulWidget {
  const MapaScreen({Key? key}) : super(key: key);

  @override
  _MapaScreenState createState() => _MapaScreenState();
}

class _MapaScreenState extends State<MapaScreen> {
  static LatLng _medellinCenter = LatLng(6.2442, -75.5812);
  final List<Place> _places = [];
  final PopupController _popupController = PopupController();

  @override
  void initState() {
    super.initState();
    _loadTouristPlaces();
  }

  Future<void> _loadTouristPlaces() async {
    final url = Uri.parse(
      'https://nominatim.openstreetmap.org/search.php'
      '?q=attractions+near+Medellin'
      '&format=jsonv2'
      '&email=tu@email.com'
    );
    final response = await http.get(url, headers: {'User-Agent': 'FlutterApp'});

    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List;
      final center = _medellinCenter;
      final dist = Distance();
      setState(() {
        _places.clear();
        for (var item in data) {
          final lat = double.tryParse(item['lat'] ?? '') ?? 0;
          final lon = double.tryParse(item['lon'] ?? '') ?? 0;
          final point = LatLng(lat, lon);
          if (dist.as(LengthUnit.Kilometer, center, point) <= 5) {
            _places.add(Place(
              name: item['display_name'] ?? 'Lugar',
              point: point,
            ));
          }
        }
      });
    } else {
      debugPrint('Error fetching places: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: MapOptions(
          center: _medellinCenter,
          zoom: 13.0,
          onTap: (_, __) => _popupController.hideAllPopups(),
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: const ['a', 'b', 'c'],
            userAgentPackageName: 'com.example.app',
          ),
          PopupMarkerLayerWidget(
            options: PopupMarkerLayerOptions(
              markers: _places.map((p) => Marker(
                width: 40,
                height: 40,
                point: p.point,
                builder: (_) => const Icon(
                  Icons.location_on,
                  color: Colors.red,
                  size: 30,
                ),
              )).toList(),
              popupController: _popupController,
              popupBuilder: (ctx, marker) {
                final place = _places.firstWhere((pl) => pl.point == marker.point);
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      place.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Place {
  final String name;
  final LatLng point;
  Place({required this.name, required this.point});
}
