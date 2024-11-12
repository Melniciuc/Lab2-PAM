import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          '',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black),
            onPressed: () {},
          ),
        ],
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/profile_picture.png'),
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text(
            "Joe Samanta",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          SvgPicture.asset(
            'assets/home_card.svg',
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search barber's, haircut service...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 8),
              IconButton(
                icon: Icon(Icons.filter_list),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 16),
          Text(
            "Nearest Barbershop",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          _buildBarberCard('Alan Barbershop', 'Banguntapan (3 km)', 4.7, 'https://images.fresha.com/lead-images/placeholders/barbershop-106.jpg'),
          _buildBarberCard('Hercha Barbershop', 'Jalan Kaliurang (5 km)', 4.5, 'https://static1-repo.aif.ru/1/8e/662079/17d7306e264ac2fed78642a2784e73f4.jpg'),
          _buildBarberCard('Barberking', 'Jogja Expo Centre (4 km)', 4.5, 'https://top-barbershop.com/media/2019/07/FYAsag_zDvc.jpg'),
          SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text("See All"),
            ),
          ),
          SizedBox(height: 16),
          Text(
            "Most recommended",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          _buildBarberCard('Masterpiece Barbershop', 'Jogja Expo Centre (11 km)', 5.0, 'https://www.mensroombarbershop.com/wp-content/uploads/2023/10/A1580-Mens-Room-Barber-Shop-HERO.jpg', isRecommended: true),
          _buildBarberCard('Varcity Barbershop', 'Condongcatur (8 km)', 4.9, 'https://www.1stformationsblog.co.uk/wp-content/uploads/2023/09/Shutterstock_2302169201.jpg'),
          _buildBarberCard('Twinsky Monkey Barber', 'Jl Taman Siswa (9 km)', 4.9, 'https://brock.by/wp-content/uploads/2022/05/zachem-muzhchine-barbershop-%E2%A0%80-v-otlichie-ot-obychnogo-salona-barbery.jpg'),
          _buildBarberCard('Barberman', 'J-Walk Centre (12 km)', 4.7, 'https://www.ringmybarber.com/wp-content/uploads/2022/10/qualities-of-a-highly-professional-barber.jpg'),
        ],
      ),
    );
  }

  Widget _buildBarberCard(String name, String location, double rating, String imageUrl, {bool isRecommended = false}) {
    return Card(
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(imageUrl),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text(
                  location,
                  style: TextStyle(color: Colors.grey[600]),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.yellow, size: 16),
                    SizedBox(width: 4),
                    Text(rating.toString()),
                  ],
                ),
                if (isRecommended)
                  Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Booking"),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
