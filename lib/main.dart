import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var informationTextStyle = const TextStyle(
      fontFamily: 'Oxygen',
    );

    final List<String> imageUrls = [
      'https://rakyatempatlawang.bacakoran.co/upload/26872aba558e933ddb92fc12d6d55a97.jpg',
      'https://sumselupdate.com/wp-content/uploads/2022/10/WhatsApp-Image-2022-10-17-at-15.30.14.jpeg',
      'https://cdn.idntimes.com/content-images/post/20240125/391019051-675340027892909-6021536066719670343-n-2f36c51ba2f6175813cd63360b5e2688_600x400.jpeg'
    ];

    return MaterialApp(
      title: 'Pulau Kemaro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('images/cover_pulau_kemaro.jpeg'),
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  child: const Text(
                    'Pulau Kemaro',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontFamily: 'Staatliches'),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text(
                    'Pulau Kemaro, merupakan sebuah delta kecil di Sungai Musi, terletak sekitar 6 km dari Jembatan Ampera. Pulau Kemaro terletak di daerah industri, yaitu di antara Pabrik Pupuk Sriwijaya dan Pertamina Plaju dan Sungai Gerong. Posisi Pulau Kemaro adalah agak ke timur dari pusat Kota Palembang.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, fontFamily: 'Oxygen'),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Number of columns
                        crossAxisSpacing: 4.0,
                        mainAxisSpacing: 4.0,
                      ),
                      itemCount: imageUrls.length, // Number of images
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(4.0),
                            child: Image.network(
                              imageUrls[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      textStyle: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Oxygen'),
                    ),
                    onPressed: () {
                      // Add action here
                    },
                    child: const Text('Lihat Selengkapnya'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
