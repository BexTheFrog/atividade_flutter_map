import 'package:geolocator/geolocator.dart';

class LocationService {
  //Criando a função para pegar a localização atual
  Future<Position?> getCurrentLocation() async {
    // Variavel para armazenar o estado da permissão para obter a localizaão
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();

    // Criando verificação caso não tenha permissão;
    if (!serviceEnabled) {
      print("Serviço de localização não está ativado.");
      return null;
    }

    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        print("Permissão negada, então pra que tentou usar??");
        return null;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      print("Rude");
      return null;
    }

    Position position = await Geolocator.getCurrentPosition(
      locationSettings: LocationSettings(accuracy: LocationAccuracy.best),
    );

    return position;
  }
}
