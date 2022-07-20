import 'package:flutter/material.dart';
import 'package:project1/main.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List country = [
    "Afghanistan",
    "Australia",
    "Brazil",
    "China",
    "India",
    "Indonesia",
    "Iran",
    "Italy",
    "Mexico",
    "Pakistan",
  ];

  List stateimg = [
    "assets/image/afg.jpg",
    "assets/image/aus.jpg",
    "assets/image/bra.jpg",
    "assets/image/chi.jpg",
    "assets/image/in.jpg",
    "assets/image/indo.jpg",
    "assets/image/iran.jpg",
    "assets/image/italy.jpg",
    "assets/image/mexico.jpg",
    "assets/image/pakistan.jpg",
  ];


  List afghanistan = [
    "Afghanistan",
    "Afghanistan, officially the Islamic Republic of Afghanistan, is a landlocked country located in South-Central Asia, Afghanistan is bordered by Pakistan in the south and east Iran in the west Turmenistan, Urbekistan, and Tajikistan in the north and in the far northeast, China.",
    "Asia",
    "Kabul",
    "652,230km",
    "Dari, Pashto",
    "Afghani",
    "+93",
    "C, F (220V)",
    "assets/image/afg.jpg",
  ];
  List australia = [
    "Australia",
    "Australia, officially the Commonwealth of Australia, is a sovereign country comprising the mainland of the Australian continent, the island of Tasmania, and numerous smaller islands. Itis the largest country in Oceania and the world's sixth-largest country by total area.",
    "Oceania",
    "Canberra",
    "7,692,024km",
    "English",
    "Australian Dollar",
    "+61",
    "I (230V)",
    "assets/image/aus.jpg",
  ];
  List brazil=[
    "Brazil",
    "Brazil, a vast South American country, stretches from the Amazon Basin in the north to vineyards and massive Iguaçu Falls in the south. Rio de Janeiro, symbolized by its 38m Christ the Redeemer statue atop Mount Corcovado, is famed for its busy Copacabana and Ipanema beaches as well as its enormous, raucous Carnaval festival, featuring parade floats, flamboyant costumes, and samba music and dance",
    "South America",
    "Brasilia",
    "8,515,767km",
    "Portuguese",
    "Brazilian Real",
    "+55",
    "C, N (127V, 220V)",
    "assets/image/bra.jpg",
  ];
  List china=[
    "China",
    "China, officially the People's Republic of China, is a country in East Asia and the world's most populous country, with a population of around 1.404 billion. Covering approximately 9,600,000 square kilometers, it is the third- or fourth- largest country by total area.",
    "Asia",
    "9,596,961km",
    "8,515,767km",
    "Chinese",
    "Tuan",
    "+86",
    "A, C, I (220V)",
    "assets/image/chi.jpg",
  ];
  List india=[
    "India",
    "India, also known as the Republic of India, is a country in South Asia. It is the seventh-largest country by area, the second-most populous country, and the most populous democracy in the world.",
    "Asia",
    "New Delhi",
    "3,287,263km",
    "Hindi, Telugu, Etc",
    "Indian Rupee",
    "+91",
    "C, D, M (230V)",
    "assets/image/in.jpg",
  ];
  List indonesia=[
    "Indonesia",
    "Indonesia, a Southeast Asian nation made up of thousands of volcanic islands, is home to hundreds of ethnic groups speaking many different languages. It's known for beaches, volcanoes, Komodo dragons and jungles sheltering elephants, orangutans and tigers. On the island of Java lies Indonesia's vibrant, sprawling capital, Jakarta, and the city of Yogyakarta, known for gamelan music and traditional puppetry.",
    "Asia",
    "Jakarta",
    "1,904,569km",
    "Indoesian",
    "Rupiah",
    "+62",
    "C, F (110V, 220V)",
    "assets/image/indo.jpg",
  ];
  List iran=[
    "Iran",
    "Iran, also called Persia, and officially the Islamic Republic of Iran, is a country in Western Asia. With over 81 million inhabitants, Iran is the world's 18th most populous country. Its territory spans 1,648,195 km?, making it the second largest country in the Middle East and the 17th largest in the world.",
    "Asia",
    "Tehran",
    "1,648,195km",
    "Persian",
    "Iranian Rial",
    "+98",
    "C, F (220V)",
    "assets/image/iran.jpg",
  ];
  List italy=[
    "Italy",
    "Italy, a European country with a long Mediterranean coastline, has left a powerful mark on Western culture and cuisine. Its capital, Rome, is home to the Vatican as well as landmark art and ancient ruins. Other major cities include Florence, with Renaissance masterpieces such as Michelangelo's David and Brunelleschi's Duomo Venice, the city of canals and Milan, Italy's fashion capital.",
    "Europe",
    "Rome",
    "301,340km",
    "Italian",
    "Euro",
    "+39",
    "C, F, L (230V)",
    "assets/image/italy.jpg",
  ];
  List mexico=[
    "Mexico",
    "Mexico is a country between the U.S. and Central America that's known for its Pacific and Gulf of Mexico beaches and its diverse landscape of mountains, deserts and jungles. Ancient ruins such as Teotihuacán and the Mayan city of Chichén Itzá are scattered throughout the country, as are Spanish colonial-era towns. In capital Mexico City, upscale shops, renowned museums and gourmet restaurants cater to modern life.",
    "North America",
    "Mexico City",
    "1,972,550km",
    "Spanish",
    "Mexican Peso",
    "+52",
    "A, B (127V)",
    "assets/image/mexico.jpg",
  ];
  List pakistan=[
    "Pakistan",
    "Pakistan, officially the Islamic Republic of Pakistan, is a country in South Asia. It is the world's sixth-most populous country with a population exceeding 212,742,631 people. In area, it is the 33rd-largest country, spanning 881,913 square kilometres.",
    "Asia",
    "Islamabad",
    "803,940km",
    "Punjabi, Sindhi",
    "Pakistan Rupee",
    "+92",
    "C, G, G, M (230V)",
    "assets/image/pakistan.jpg",
  ];
  List main=[];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("All About World"),
        backgroundColor: Colors.lightBlue,
      ),
      body: Stack(
        children: [
          Container(
            height: 2000,
            width: 2000,
            child: Image.asset("assets/image/plane.jpg", fit: BoxFit.cover),
          ),
          ListView.builder(
            itemCount: country.length,
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.only(top: 10,left: 10,right: 10),
                color: Colors.white24,
                child: InkWell(
                  onTap: (){
                    main.add(afghanistan);
                    main.add(australia);
                    main.add(brazil);
                    main.add(china);
                    main.add(india);
                    main.add(indonesia);
                    main.add(iran);
                    main.add(italy);
                    main.add(mexico);
                    main.add(pakistan);

                    Navigator.pushNamed(context, '/CountryPage',arguments: main[index]);
                  },
                  child: Container(
                    height: 80,
                    width: double.infinity,
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Container(
                          height: 60,
                          width: 60,
                          color: Colors.amber,
                          child: Image.asset(
                            "${stateimg[index]}",
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          height: 50,
                          width: 250,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "${country[index]}",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 2.2),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}