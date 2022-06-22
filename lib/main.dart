
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:provider/provider.dart';

import 'model/clients_box.dart';
import 'home.dart';
import 'route/navigator_provider.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyBLl-IcNFF-OaBpCa-6nGglxIDR3zyUxwQ",
        appId: "1:319272572022:web:ff9c0515b789317f1abb57",
        messagingSenderId: "319272572022",
        projectId: "magg-web"),
  );
  await Hive.initFlutter();

  Hive.registerAdapter(ClientBoxAdapter());
    await Hive.openBox<ClientBox>('clientsbox');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NavigatonProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const Home(),
      ),
    );
  }
}
//  </script>
//       <script type="module">
//         // Import the functions you need from the SDKs you need
//         import { initializeApp } from "https://www.gstatic.com/firebasejs/9.8.2/firebase-app.js";
//         // TODO: Add SDKs for Firebase products that you want to use
//         // https://firebase.google.com/docs/web/setup#available-libraries
      
//         // Your web app's Firebase configuration
//         const firebaseConfig = {
//           apiKey: "AIzaSyBLl-IcNFF-OaBpCa-6nGglxIDR3zyUxwQ",
//           authDomain: "magg-web.firebaseapp.com",
//           projectId: "magg-web",
//           storageBucket: "magg-web.appspot.com",
//           messagingSenderId: "319272572022",
//           appId: "1:319272572022:web:ff9c0515b789317f1abb57"
//         };
      
//         // Initialize Firebase
//         const app = initializeApp(firebaseConfig);
//       </script>