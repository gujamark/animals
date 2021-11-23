import 'package:animals/animal_imagges/animal_images.dart';
import 'package:animals/providers/animals_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ChangeAnimalWidget extends StatelessWidget {
  const ChangeAnimalWidget({ Key? key, required this.animal, required this.buttonText }) : super(key: key);

  final Animal animal;
  final String buttonText;
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: SizedBox(
          height: 40,
          child: ElevatedButton(
              // Monkey
              onPressed: () {
                context.read<AnimalsProvider>().changeAnimal(animal);
              },
              child: Text(buttonText)),
        ),
      );
  }
}