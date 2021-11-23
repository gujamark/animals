import 'package:animals/animal_imagges/animal_images.dart';
import 'package:flutter/material.dart';

class AnimalsProvider with ChangeNotifier {
  Animal animal = AnimalImages.monkey;

  void changeAnimal(Animal animal) {
    this.animal = animal;
    notifyListeners();
  }
}