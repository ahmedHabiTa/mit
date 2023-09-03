// import 'package:geolocator/geolocator.dart';

// abstract class AppLocation {
//   Future<Position?> determinePosition();
// }

// class AppLocationImpl implements AppLocation {
//   Position? lastLocation;
//   @override
//   Future<Position?> determinePosition() async {
//     if (lastLocation != null) {
//       return lastLocation!;
//     }
//     bool serviceEnabled;
//     LocationPermission permission;

//     serviceEnabled = await Geolocator.isLocationServiceEnabled();
//     if (!serviceEnabled) {
//       permission = await Geolocator.requestPermission();
//     }
//     permission = await Geolocator.checkPermission();
//     if (permission == LocationPermission.denied) {
//       permission = await Geolocator.requestPermission();
//       if (permission == LocationPermission.denied) {
//         return null;
//       }
//     }
//     if (permission == LocationPermission.deniedForever) {
//       permission = await Geolocator.requestPermission();
//       return null;
//     }
//     lastLocation = await Geolocator.getCurrentPosition();
//     return lastLocation;
//   }
// }
