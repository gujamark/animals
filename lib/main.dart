import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Animals",
        home : HomePage(),
      );
  }
}

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
  
}

class _HomePageState extends State<HomePage> {
  String image_source = "https://www.balisafarimarinepark.com/wp-content/uploads/2019/12/monkey-and-apes-1200x675-cropped.jpg";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Animals"),),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Image.network(image_source),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [  ElevatedButton(
                // Monkey
                  onPressed: () {
                    setState(() {
                      image_source = "https://www.balisafarimarinepark.com/wp-content/uploads/2019/12/monkey-and-apes-1200x675-cropped.jpg";
                    });
                  },
                  child: Text("Animal 1")),
                ElevatedButton(
                  // Zebra
                    onPressed: () {
                      setState(() {
                        image_source = "https://www.spreekbeurtenstartpagina.nl/wp-content/uploads/2020/09/Werkstuk-over-de-Zebra.jpg";
                      });
                    },
                    child: Text("Animal 2")),
              ]
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [ElevatedButton(
                // Giraffe
                  onPressed: () {
                    setState(() {
                      image_source = "https://images0.persgroep.net/rcs/QE2qjVLB_kx4q7LEHyKew1SBMPg/diocontent/201192664/_focus/0.51/0.35/_fill/1200/630/?appId=21791a8992982cd8da851550a453bd7f&quality=0.7";
                    });
                  },
                  child: Text("Animal 3")),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        image_source = "https://www.rtlnieuws.nl/sites/default/files/content/images/2019/07/28/The-Lion-King-OV-_st_1_jpg_sd-high_%C2%A9-2019-Disney-Enterprises-Inc-All-Rights-Reserved.jpg?itok=h6aWL0YO&width=1024&height=576&impolicy=semi_dynamic";
                      });
                    },
                    child: Text("Animal 4")),],
            ),
          ],
        ),
      ),
    );
  }
}
