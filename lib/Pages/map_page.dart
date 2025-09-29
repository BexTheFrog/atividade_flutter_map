import 'package:atividade_mapa/List/locais_list.dart';
import 'package:atividade_mapa/Services/location_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    final LatLng center = LatLng(-23.5315, -46.6850);

    return Scaffold(
      appBar: AppBar(title: const Text("Mapa")),
      body: FlutterMap(
        options: MapOptions(initialCenter: center, initialZoom: 15),
        children: [
          TileLayer(
            urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
            subdomains: const ['a', 'b', 'c'],
            userAgentPackageName: 'com.example.atividade_mapa',
          ),
          MarkerLayer(
            markers: locais.map((local) {
              return Marker(
                point: LatLng(local.latitude, local.longitude),
                width: 60,
                height: 60,
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        title: Text(local.nome),
                        content: Text(local.endereco),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("Fechar"),
                          ),
                        ],
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.location_on,
                    color: Colors.red,
                    size: 40,
                  ),
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
