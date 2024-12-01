import 'package:flutter/material.dart';

Widget buildSaleItem(String title, String discount, String image) {
  return Container(
    padding: EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey[300]!),
      borderRadius: BorderRadius.circular(10),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image.asset(
              image,
              width: double.infinity,
              height: 100,
              fit: BoxFit.cover,
            ),
            Positioned(
              top: 8,
              left: 8,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                color: Colors.blue,
                child: Text(
                  discount,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  );
}

Widget buildCategoryIcon(IconData icon, String label) {
  return Column(
    children: [
      CircleAvatar(
        backgroundColor: Colors.grey[200],
        child: Icon(icon, color: Colors.black),
      ),
      SizedBox(height: 8),
      Text(
        label,
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
    ],
  );
}
