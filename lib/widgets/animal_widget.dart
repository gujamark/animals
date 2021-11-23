import 'package:animals/animal_imagges/animal_images.dart';
import 'package:flutter/material.dart';

class AnimalWidget extends StatelessWidget {
  const AnimalWidget({ 
  Key? key ,
  required this.animal,}) : super(key: key);

  final Animal animal;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ 
            ClipRRect(
              child: Image.network(animal.imageURL),
              borderRadius: BorderRadius.circular(10),
            ),
            const SizedBox(height: 15),
            Container(
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  animal.description,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),],
    );
  }
}