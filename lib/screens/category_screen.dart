
import 'package:dart_models/models/category_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoryScreen extends StatelessWidget {
  CategoryScreen({super.key});

  List<CategoryModel> categories = [
    CategoryModel(
        id: 1,
        name: 'Soap',
        image:
            'https://thumbs.dreamstime.com/b/composition-different-bars-soap-lot-toilet-set-various-soaps-279756246.jpg?w=360',
        description: 'Freshy for bathing'),
    CategoryModel(
        id: 2,
        name: 'Oil',
        image:
            'https://thumbs.dreamstime.com/b/colored-plastic-bottles-liquid-soap-set-shower-gel-isolated-white-background-studio-shooting-set-49371187.jpg?w=768',
        description: 'smoothening your body'),
    CategoryModel(
        id: 3,
        name: 'Flour',
        image:
            'https://thumbs.dreamstime.com/b/glass-bowl-corn-starch-isolated-white-93967111.jpg?w=360',
        description: 'delicious'),
    CategoryModel(
        id: 4,
        name: '  Soap',
        image:
            'https://thumbs.dreamstime.com/b/yellow-bar-soap-1687920.jpg?w=768',
        description: ''),
    CategoryModel(
        id: 5,
        name: 'Vaccine',
        image:
            'https://m.media-amazon.com/images/I/413kKRX0QTL._AC_UF480,480_SR480,480_.jpg',
        description: ''),
    CategoryModel(
        id: 6,
        name: 'Odi',
        image:
            'https://thumbs.dreamstime.com/b/peanut-butter-spoon-white-background-37964382.jpg?w=768',
        description: '')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Categories'),
          backgroundColor: Colors.lightBlue,
          foregroundColor: Colors.white,
          centerTitle: true,
         
        ),
        body: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(categories[index].image))),
                ),
                title: Text(categories[index].name),
              subtitle: Text(categories[index].description ?? 'No description available'),
  
              );
            }));
  }
}