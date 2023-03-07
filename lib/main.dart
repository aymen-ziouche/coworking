import 'package:flutter/material.dart';
import 'package:mactabbi/wrapper.dart';

String apiUrl = "https://mactabbi.com/api/v2";

// Uri parseApiUri(String url) {
//   return Uri.https(apiUrl, url);
// }

// Respense   (Uri uri,Params params)  async {

// get,when

// }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mactabbi',
      theme: ThemeData(
          primarySwatch: Colors.red,
          primaryColor: Colors.red,
          fontFamily: 'Poppins'),
      home: const Wrapper(),
    );
  }
}
