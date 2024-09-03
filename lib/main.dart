// import 'package:flutter/material.dart';
// import 'package:local_auth/local_auth.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Biometric Authentication',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: BiometricAuth(),
//     );
//   }
// }

// class BiometricAuth extends StatefulWidget {
//   @override
//   _BiometricAuthState createState() => _BiometricAuthState();
// }

// class _BiometricAuthState extends State<BiometricAuth> {
//   final LocalAuthentication auth = LocalAuthentication();
//   bool _supportState = false;

//   @override
//   void initState() {
//     super.initState();
//     _checkBiometricSupport();
//   }

//   Future<void> _checkBiometricSupport() async {
//     bool isSupported = await auth.isDeviceSupported();
//     setState(() {
//       _supportState = isSupported;
//     });
//   }

//   Future<void> _authenticate() async {
//     try {
//       bool authenticated = await auth.authenticate(
//         localizedReason: 'Please authenticate to access your account',
//         options: const AuthenticationOptions(
//           stickyAuth: true,
//           biometricOnly: true,
//         ),
//       );
//       print('Authenticated: $authenticated');
//       if (authenticated) {
//         // You can navigate to another screen or perform an action on successful authentication
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Authentication Successful!')),
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Authentication Failed!')),
//         );
//       }
//     } catch (e) {
//       print('Error: $e');
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error during authentication: $e')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Biometric Authentication'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             if (_supportState)
//               const Text('This device supports biometric authentication')
//             else
//               const Text('This device does not support biometric authentication'),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _supportState ? _authenticate : null,
//               child: const Text('Authenticate'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:local_auth/local_auth.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Biometric Authentication',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: BiometricAuth(),
//     );
//   }
// }

// class BiometricAuth extends StatefulWidget {
//   @override
//   _BiometricAuthState createState() => _BiometricAuthState();
// }

// class _BiometricAuthState extends State<BiometricAuth> {
//   final LocalAuthentication auth = LocalAuthentication();
//   bool _supportState = false;

//   @override
//   void initState() {
//     super.initState();
//     _checkBiometricSupport();
//   }

//   Future<void> _checkBiometricSupport() async {
//     bool isSupported = await auth.isDeviceSupported();
//     setState(() {
//       _supportState = isSupported;
//     });
//     if (_supportState) {
//       _authenticate(); // Trigger authentication immediately if supported
//     }
//   }

//   Future<void> _authenticate() async {
//     try {
//       bool authenticated = await auth.authenticate(
//         localizedReason: 'Please authenticate to access your account',
//         options: const AuthenticationOptions(
//           stickyAuth: true,
//           biometricOnly: true,
//         ),
//       );
//       print('Authenticated: $authenticated');
//       if (authenticated) {
//         // Navigate to the Home Page upon successful authentication
//         Navigator.of(context).pushReplacement(
//           MaterialPageRoute(builder: (context) => HomePage()),
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Authentication Failed!')),
//         );
//       }
//     } catch (e) {
//       print('Error: $e');
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text('Error during authentication: $e')),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Biometric Authentication'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             if (_supportState)
//               const Text('This device supports biometric authentication')
//             else
//               const Text('This device does not support biometric authentication'),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _supportState ? _authenticate : null,
//               child: const Text('Authenticate'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Page'),
//       ),
//       body: Center(
//         child: const Text('Welcome to the Home Page!'),
//       ),
//     );
//   }
// }

// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:local_auth/local_auth.dart';
// import 'package:get/get.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Biometric Authentication',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: BiometricAuth(),
//     );
//   }
// }

// class BiometricAuth extends StatefulWidget {
//   @override
//   _BiometricAuthState createState() => _BiometricAuthState();
// }

// class _BiometricAuthState extends State<BiometricAuth> {
//   final LocalAuthentication auth = LocalAuthentication();
//   bool _supportState = false;

//   @override
//   void initState() {
//     super.initState();
//     _checkBiometricSupport();
//   }

//   Future<void> _checkBiometricSupport() async {
//     bool isSupported = await auth.isDeviceSupported();
//     setState(() {
//       _supportState = isSupported;
//     });
//     if (_supportState) {
//       _authenticate(); // Trigger authentication immediately if supported
//     }
//   }

//   Future<void> _authenticate() async {
//     try {
//       bool authenticated = await auth.authenticate(
//         localizedReason: 'Please authenticate to access your account',
//         options: const AuthenticationOptions(
//           stickyAuth: true,
//           biometricOnly: true,
//         ),
//       );
//       print('Authenticated: $authenticated');
//       if (authenticated) {
//         // Navigate to the Home Page upon successful authentication using GetX
//         Get.off(() => HomePage());
//       } else {
//         Get.snackbar('Authentication Failed', 'Please try again.',
//             snackPosition: SnackPosition.BOTTOM);
//       }
//     } catch (e) {
//       print('Error: $e');
//       Get.snackbar('Error', 'Error during authentication: $e',
//           snackPosition: SnackPosition.BOTTOM);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Biometric Authentication'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             if (_supportState)
//               const Text('This device supports biometric authentication')
//             else
//               const Text('This device does not support biometric authentication'),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _supportState ? _authenticate : null,
//               child: const Text('Authenticate'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Page'),
//       ),
//       body: Center(
//         child: const Text('Welcome to the Home Page!'),
//       ),
//     );
//   }
// }


// import 'dart:ui';
// import 'package:flutter/material.dart';
// import 'package:local_auth/local_auth.dart';
// import 'package:get/get.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Biometric & PIN Authentication',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: BiometricAuth(),
//     );
//   }
// }

// class BiometricAuth extends StatefulWidget {
//   @override
//   _BiometricAuthState createState() => _BiometricAuthState();
// }

// class _BiometricAuthState extends State<BiometricAuth> {
//   final LocalAuthentication auth = LocalAuthentication();
//   final FlutterSecureStorage storage = FlutterSecureStorage();
//   bool _supportState = false;
//   String _pin = ''; // To hold the entered PIN

//   @override
//   void initState() {
//     super.initState();
//     _checkBiometricSupport();
//   }

//   Future<void> _checkBiometricSupport() async {
//     bool isSupported = await auth.isDeviceSupported();
//     setState(() {
//       _supportState = isSupported;
//     });
//     if (_supportState) {
//       _authenticate(); // Trigger authentication immediately if supported
//     }
//   }

//   Future<void> _authenticate() async {
//     try {
//       bool authenticated = await auth.authenticate(
//         localizedReason: 'Please authenticate to access your account',
//         options: const AuthenticationOptions(
//           stickyAuth: true,
//           biometricOnly: true,
//         ),
//       );
//       print('Authenticated: $authenticated');
//       if (authenticated) {
//         Get.off(() => HomePage());
//       } else {
//         _showPinDialog(); // Show PIN dialog if biometric fails
//       }
//     } catch (e) {
//       print('Error: $e');
//       Get.snackbar('Error', 'Error during authentication: $e',
//           snackPosition: SnackPosition.BOTTOM);
//     }
//   }

//   Future<void> _showPinDialog() async {
//     showDialog(
//       context: context,
//       barrierDismissible: false,
//       builder: (context) {
//         return AlertDialog(
//           title: const Text('Enter PIN'),
//           content: TextField(
//             obscureText: true,
//             onChanged: (value) {
//               setState(() {
//                 _pin = value;
//               });
//             },
//             decoration: const InputDecoration(hintText: 'Enter your PIN'),
//           ),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () async {
//                 // Validate PIN
//                 String? storedPin = await storage.read(key: 'user_pin');
//                 if (storedPin == _pin) {
//                   Get.off(() => HomePage());
//                   Navigator.of(context).pop(); // Close the dialog
//                 } else {
//                   Get.snackbar('Authentication Failed', 'Incorrect PIN',
//                       snackPosition: SnackPosition.BOTTOM);
//                 }
//               },
//               child: const Text('Submit'),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop(); // Close the dialog
//               },
//               child: const Text('Use PIN'),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   Future<void> _setPin(String pin) async {
//     await storage.write(key: 'user_pin', value: pin);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Biometric & PIN Authentication'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             if (_supportState)
//               const Text('This device supports biometric authentication')
//             else
//               const Text('This device does not support biometric authentication'),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _supportState ? _authenticate : null,
//               child: const Text('Authenticate with Biometric'),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 _showPinDialog(); // Show PIN dialog directly
//               },
//               child: const Text('Authenticate with PIN'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Home Page'),
//       ),
//       body: Center(
//         child: const Text('Welcome to the Home Page!'),
//       ),
//     );
//   }
// }

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';
import 'package:get/get.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Biometric & PIN Authentication',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BiometricAuth(),
    );
  }
}

class BiometricAuth extends StatelessWidget {
  final controller = Get.put(AuthenticationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Biometric & PIN Authentication'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<AuthenticationController>(
              builder: (_) => _.supportState
                  ? const Text('This device supports biometric authentication')
                  : const Text('This device does not support biometric authentication'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: controller.supportState ? controller._authenticate : null,
              child: const Text('Authenticate with Biometric'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                controller._showPinDialog();
              },
              child: const Text('Authenticate with PIN'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: const Text('Welcome to the Home Page!'),
      ),
    );
  }
}

class AuthenticationController extends GetxController {
  final LocalAuthentication auth = LocalAuthentication();
  final FlutterSecureStorage storage = FlutterSecureStorage();
  RxBool _supportState = false.obs;
  RxString _pin = ''.obs;

  bool get supportState => _supportState.value;
  String get pin => _pin.value;

  @override
  void onInit() {
    super.onInit();
    _checkBiometricSupport();
  }

  Future<void> _checkBiometricSupport() async {
    bool isSupported = await auth.isDeviceSupported();
    _supportState.value = isSupported;
    if (_supportState.value) {
      _authenticate();
    }
  }

  Future<void> _authenticate() async {
    try {
      bool authenticated = await auth.authenticate(
        localizedReason: 'Please authenticate to access your account',
        options: const AuthenticationOptions(
          stickyAuth: true,
          biometricOnly: true,
        ),
      );
      print('Authenticated: $authenticated');
      if (authenticated) {
        Get.off(() => HomePage());
      } else {
        _showPinOptionDialog();
      }
    } catch (e) {
      print('Error: $e');
      Get.snackbar('Error', 'Error during authentication: $e',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  Future<void> _showPinOptionDialog() async {
    Get.dialog(
      AlertDialog(
        title: const Text('Authentication Failed'),
        content: const Text('Would you like to use your PIN instead?'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Get.back(); // Close the dialog
              _showPinDialog();
            },
            child: const Text('Use PIN'),
          ),
          TextButton(
            onPressed: () {
              Get.back(); // Close the dialog
            },
            child: const Text('Cancel'),
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }

  Future<void> _showPinDialog() async {
    _pin.value = ''; // Reset the PIN
    Get.dialog(
      AlertDialog(
        title: const Text('Enter PIN'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(
              () => Text(
                _pin.value.isEmpty ? 'Enter your PIN' : _pin.value,
                style: const TextStyle(fontSize: 24),
              ),
            ),
            const SizedBox(height: 20),
            NumericKeypad(
              onKeyPress: (value) {
                if (value == 'C') {
                  _pin.value = '';
                } else if (value == 'S') {
                  _validatePin();
                } else {
                  _pin.value += value;
                }
              },
            ),
          ],
        ),
      ),
      barrierDismissible: false,
    );
  }

  void _validatePin() async {
    String? storedPin = await storage.read(key: 'user_pin');
    if (storedPin == _pin.value) {
      Get.off(() => HomePage());
      Get.back(); // Close the dialog
    } else {
      Get.snackbar('Authentication Failed', 'Incorrect PIN',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  Future<void> _setPin(String pin) async {
    await storage.write(key: 'user_pin', value: pin);
  }
}

class NumericKeypad extends StatelessWidget {
  final Function(String) onKeyPress;

  const NumericKeypad({Key? key, required this.onKeyPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildKey('1'),
            _buildKey('2'),
            _buildKey('3'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildKey('4'),
            _buildKey('5'),
            _buildKey('6'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildKey('7'),
            _buildKey('8'),
            _buildKey('9'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildKey('C'), // Clear button
            _buildKey('0'),
            _buildKey('S'), // Submit button
          ],
        ),
      ],
    );
  }

  Widget _buildKey(String value) {
    return ElevatedButton(
      onPressed: () => onKeyPress(value),
      child: Text(value, style: const TextStyle(fontSize: 24)),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(60, 60), // Set button size
      ),
    );
  }
}