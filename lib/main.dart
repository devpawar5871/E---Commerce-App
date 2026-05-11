import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  dynamic mydata = [];

  @override
  void initState() {
    super.initState();
    apicall();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dev Store"),
        backgroundColor: Color.fromARGB(255, 21, 171, 13),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: mydata.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(mydata[index]['title'].toString()),
                    subtitle:
                        Text("₹ ${mydata[index]['price']}"),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        mydata[index]['image'].toString(),
                      ),
                    ),
                    trailing: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                  ),
                );
              },
            ),
          ),

          // ✅ Footer
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              "Created by Dev",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }

  void apicall() async {
    var url = Uri.https('fakestoreapi.com', 'products');
    var response = await http.get(url);

    var jsondata = jsonDecode(response.body);

    setState(() {
      mydata = jsondata;
    });
  }
}