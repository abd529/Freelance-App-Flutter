import 'package:flutter/material.dart';

class CreditsScreen extends StatelessWidget {
  static const routeName = "credits";
  const CreditsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 232, 232),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      IconButton(
                          icon: const Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                      const Text("Credits",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        const Center(
                            child: Text(
                          "Thank you for all the creative people all the websites for the icons, images and assets:",
                          softWrap: true,
                        )),
                        const SizedBox(height: 30),
                        Row(
                          children: [
                            const Text("Thanks"),
                            TextButton(
                                onPressed: () {},
                                child: const Text("Freepik",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline)))
                          ],
                        ),
                        Row(
                          children: [
                            const Text("Thanks"),
                            TextButton(
                                onPressed: () {},
                                child: const Text("Flaticon",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline)))
                          ],
                        ),
                        Row(
                          children: [
                            const Text("Thanks"),
                            TextButton(
                                onPressed: () {},
                                child: const Text("Onlinewebfonts",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline)))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
