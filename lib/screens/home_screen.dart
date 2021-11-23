import 'package:animals/widgets/animal_widget.dart';
import 'package:animals/widgets/change_animal_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../animal_imagges/animal_images.dart';
import '../providers/animals_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimalWidget(animal: context.watch<AnimalsProvider>().animal),
            const SizedBox(
              height: 20,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              ChangeAnimalWidget(animal: AnimalImages.monkey, buttonText: "Monkey"),
              const SizedBox(
                width: 40,
              ),
              ChangeAnimalWidget(animal: AnimalImages.zebra, buttonText: "Zebra"),
            ]),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChangeAnimalWidget(animal: AnimalImages.giraffe, buttonText: "Giraffe"),
                const SizedBox(
                  width: 40,
                ),
                ChangeAnimalWidget(animal: AnimalImages.lion, buttonText: "Lion"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
