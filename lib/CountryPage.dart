import 'package:flutter/material.dart';

class CountryPage extends StatefulWidget {
  const CountryPage({Key? key}) : super(key: key);

  @override
  _CountryPageState createState() => _CountryPageState();
}

class _CountryPageState extends State<CountryPage> {


  @override
  Widget build(BuildContext context) {
    dynamic data = ModalRoute.of(context)!.settings.arguments as List;
    print(data);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("${data[0]}"),
      ),
      body: Stack(
        children: [
          Container(
            height: 2000,
            width: 2000,
            child: Image.asset("assets/image/white.jpg", fit: BoxFit.cover),
          ),
          Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15),
                height: 250,
                width: double.infinity,
                child: Center(
                  child: Text(
                    "${data[1]}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black,
                        letterSpacing: 1.5),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 190,
                width: double.infinity,
                child: Column(
                  children: [
                    Text(
                      "Continent : ${data[2]}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.lightBlue,letterSpacing: 1.8),
                    ),
                    Text(
                      "Capital : ${data[3]}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.lightBlue,letterSpacing: 1.8),
                    ),
                    Text(
                      "Area : ${data[4]}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.lightBlue,letterSpacing: 1.8),
                    ),
                    Text(
                      "Language : ${data[5]}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.lightBlue,letterSpacing: 1.8),
                    ),
                    Text(
                      "Currency : ${data[6]}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.lightBlue,letterSpacing: 1.8),
                    ),
                    Text(
                      "Phone Code : ${data[7]}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.lightBlue,letterSpacing: 1.8),
                    ),
                    Text(
                      "Plug Type : ${data[8]}",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.lightBlue,letterSpacing: 1.8),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: 200,
                child: CircleAvatar(
                  backgroundImage: AssetImage("${data[9]}"),
                )
              ),
            ],
          ),
        ],
      ),
    );
  }
}
