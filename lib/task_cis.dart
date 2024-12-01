import 'package:flutter/material.dart';
import 'package:task_cis/custom_widget.dart';

class TaskCis extends StatelessWidget {
  const TaskCis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          // Featured Product Section
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bose Home Speaker',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'USD 279',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  "images/spakers.jpg", // Replace with the product image URL
                  width: 50,
                  height: 50,
                ),
              ],
            ),
          ),
          SizedBox(height: 24),

          // Categories Section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildCategoryIcon(Icons.list, 'Categories'),
              buildCategoryIcon(Icons.star, 'Favorites'),
              buildCategoryIcon(Icons.card_giftcard, 'Gifts'),
              buildCategoryIcon(Icons.trending_up, 'Best selling'),
            ],
          ),
          SizedBox(height: 24),

          // Sales Section
          Center(
            child: Text(
              'Sales',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 16),

          // Grid for Sales Items
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 3 / 4,
            physics: NeverScrollableScrollPhysics(),
            children: [
              buildSaleItem('Smartphones', '-50%', "images/image.png"),
              buildSaleItem('Monitors', '-50%', 'images/mentor.jpg'),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'shopping',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'person',
          ),
        ],
      ),
    );
  }
}
