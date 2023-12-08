import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: const Text("Counter: +1"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('$clickCounter', style: const TextStyle( fontSize: 160, fontWeight: FontWeight.w100 ),),
                Text("Click${(clickCounter != 1) ? 's' : ''}", style: const TextStyle( fontSize: 25)),
              ],
            )
          ),
          floatingActionButton: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    clickCounter++;
                  });
                },
                child: const Icon(Icons.plus_one),
              ),
              const SizedBox( height: 10 ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (clickCounter == 0) return;
                    clickCounter--;
                  });
                },
                child: const Icon(Icons.exposure_minus_1),
              ),
              const SizedBox( height: 10 ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    clickCounter = 0;
                  });
                },
                child: const Icon(Icons.refresh_rounded),
              )
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Container(
            padding: const EdgeInsets.only(top: 45, right: 45),
            child: const Banner(
              message: "Dev",
              location: BannerLocation.bottomStart,
              color: Colors.blueGrey,
            ),
          ),
        )
      ]
    );
  }
}
