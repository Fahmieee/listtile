// import 'package:flutter/material.dart';
//
// void main() => runApp(ListViewApp());
//
// class ListViewApp extends StatefulWidget {
//   @override
//   _ListViewAppState createState() => _ListViewAppState();
// }
//
// class _ListViewAppState extends State<ListViewApp> {
//   final List<String> entries = ['A', 'B', 'C'];
//
//   final textController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     entries.sort();
//
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: TextField(
//             controller: textController,
//           ),
//         ),
//         body: entries.length > 0
//             ? ListView.builder(
//           itemCount: entries.length,
//           itemBuilder: (context, index) {
//             return ListTile(
//               leading: Icon(Icons.local_grocery_store),
//               title: Text('${entries[index]}'),
//               onLongPress: () {
//                 setState(() {
//                   entries.removeAt(index);
//                 });
//               },
//             );
//           },
//         )
//             : Center(
//           child: Text('No Groceries in your list.'),
//         ),
//         floatingActionButton: FloatingActionButton(
//           child: Icon(Icons.save),
//           onPressed: () {
//             setState(() {
//               entries.add(textController.text);
//               textController.clear();
//             });
//           },
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "My Apps",
    home: new Halamantiga(),
  ));
}

class Halamantiga extends StatelessWidget {
  List lokasi = [
    'Jakarta',
    'Bandung',
    'Bogor',
    'Bekasi',
    'Malang',
    'Surabaya',
    'Jogjakarta',
    'Solo'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Halaman Utama"),
      ),
      body: new Container(
        child: ListView(
          children: lokasi.map((nama) {
            return ListTile(
              leading: Icon(Icons.map),
              title: Text(nama),
            );
          }).toList(),
        ),
      ),
    );
  }
}





