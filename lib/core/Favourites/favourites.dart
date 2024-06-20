import 'package:flutter/material.dart';



  
class FoodItem {
  final String name;
  final String imageUrl;
  final int frequency;

  FoodItem({
    required this.name,
    required this.imageUrl,
    required this.frequency,
  });
}

class Favourites extends StatelessWidget {
  const Favourites({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FoodItem> foodItems = [
      FoodItem(
        name: 'Banana',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa1stSLwUGCSKV7xADyOMe0pZ77SY_oEUmCA&s',
        frequency: 5,
      ),
      FoodItem(
        name: 'cerals',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS02umzUGexG_gsizvLfCXjEqHyJthHWfJZ3g&s',
        frequency: 3,
      ),
      FoodItem(
        name: 'Banana',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa1stSLwUGCSKV7xADyOMe0pZ77SY_oEUmCA&s',
        frequency: 5,
      ),
      FoodItem(
        name: 'cerals',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS02umzUGexG_gsizvLfCXjEqHyJthHWfJZ3g&s',
        frequency: 3,
      ),
      FoodItem(
        name: 'Banana',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa1stSLwUGCSKV7xADyOMe0pZ77SY_oEUmCA&s',
        frequency: 5,
      ),
      FoodItem(
        name: 'cerals',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS02umzUGexG_gsizvLfCXjEqHyJthHWfJZ3g&s',
        frequency: 3,
      ),
      FoodItem(
        name: 'Banana',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa1stSLwUGCSKV7xADyOMe0pZ77SY_oEUmCA&s',
        frequency: 5,
      ),
      FoodItem(
        name: 'cerals',
        imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS02umzUGexG_gsizvLfCXjEqHyJthHWfJZ3g&s',
        frequency: 3,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourites',style: TextStyle(color: Color.fromARGB(255, 6, 109, 39)),),
        backgroundColor: const Color.fromARGB(255, 245, 247, 245),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          final foodItem = foodItems[index];
          return Card(
            elevation: 2.0,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  foodItem.imageUrl,
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                foodItem.name,
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                ),
              ),
              subtitle: Text(
                'Ordered ${foodItem.frequency} times',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[600],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
