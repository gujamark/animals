import 'package:flutter/material.dart';
import '../animal_imagges/animal_images.dart';

class LandscapeScreen extends StatefulWidget {
  const LandscapeScreen({Key? key}) : super(key: key);

  @override
  _LandscapeScreenState createState() => _LandscapeScreenState();
}

class _LandscapeScreenState extends State<LandscapeScreen> {
  String _imageSource = AnimalImages.monkey.imageURL;
  String _animalDescription = AnimalImages.monkey.description;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size;

    return Row(
      children: [
        Column(
          children: [
            ClipRRect(
              child:
                  Image.network(_imageSource, width: screenWidth.width * 0.4),
              borderRadius: BorderRadius.circular(10),
            ),
            const SizedBox(height: 15),
            Container(
              width: screenWidth.width * 0.4,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  _animalDescription,
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
        Column(
          children: [
            //     Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            //       Expanded(
            //         child: SizedBox(
            //           height: 40,
            //           child: ElevatedButton(
            //               // Monkey
            //               onPressed: () {
            //                 setState(() {
            //                   _imageSource = AnimalImages.monkey.imageURL;
            //                   _animalDescription = AnimalImages.monkey.description;
            //                 });
            //               },
            //               child: const Text("Monkey")),
            //         ),
            //       ),
            //       const SizedBox(
            //         width: 40,
            //       ),
            //       Expanded(
            //         child: SizedBox(
            //           height: 40,
            //           child: ElevatedButton(
            //               // Zebra
            //               onPressed: () {
            //                 setState(() {
            //                   _imageSource = AnimalImages.zebra.imageURL;
            //                   _animalDescription = AnimalImages.zebra.description;
            //                 });
            //               },
            //               child: const Text("Zebra")),
            //         ),
            //       ),
            //     ]),
            //     const SizedBox(
            //       height: 20,
            //     ),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Expanded(
            //           child: SizedBox(
            //             height: 40,
            //             child: ElevatedButton(
            //                 // Giraffe
            //                 onPressed: () {
            //                   setState(() {
            //                     _imageSource = AnimalImages.giraffe.imageURL;
            //                     _animalDescription =
            //                         AnimalImages.giraffe.description;
            //                   });
            //                 },
            //                 child: const Text("Giraffe")),
            //           ),
            //         ),
            //         const SizedBox(
            //           width: 40,
            //         ),
            //         Expanded(
            //           child: SizedBox(
            //             height: 40,
            //             child: ElevatedButton(
            //                 onPressed: () {
            //                   setState(() {
            //                     _imageSource = AnimalImages.lion.imageURL;
            //                     _animalDescription = AnimalImages.lion.description;
            //                   });
            //                 },
            //                 child: const Text("Lion")),
            //           ),
            //         ),
            //       ],
            //     ),
          ],
        )
      ],
    );
  }
}
