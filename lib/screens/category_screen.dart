

import 'package:dart_models/models/category_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});
  List<CategoryModel> categories = [
    CategoryModel(
        id: 1,
        name: 'Nike Air Max',
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7bv863BlXSS9cVbgum9uFETX7vToO9NLn_m2eHA70fUFDJPjd6RC-QvquFUseSKoNKo0&usqp=CAU",
        description: 'Comfortable and stylish, perfect for everyday wear.'),

    CategoryModel(
        id: 2,
        name: 'Adidas Ultraboost',
        image:
            "https://media.istockphoto.com/id/1350560575/photo/pair-of-blue-running-sneakers-on-white-background-isolated.jpg?s=612x612&w=0&k=20&c=A3w_a9q3Gz-tWkQL6K00xu7UHdN5LLZefzPDp-wNkSU=",
        description: 'High-performance running shoe with maximum cushioning.'),

    CategoryModel(
        id: 3,
        name: 'Puma Suede Classic',
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ27IGmr79S1FY3hxmRovI-4AjsLazb_7nAWA&s",
        description: 'Iconic design with a casual look for versatile style.'),

    CategoryModel(
        id: 4,
        name: 'Reebok Nano X1',
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsTPudja0GD4PCLR3IoOYA6Hu8GgpgatxRApvSvLl19-RLFIxFB8N6pBeh5amNwrUB5fM&usqp=CAU",
        description: 'Ideal for cross-training, offering stability and support.'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return ListTile(
              leading: Image.network(
                category.image,
                width: 100,
                height:100,
                fit: BoxFit.cover,
              ),
              title: Text(category.name),
              subtitle: Text(category.description ?? 'No description available'),
            );
          }),
    );
  }
}
