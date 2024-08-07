import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String imagePath;
  final String price;
  final String photographer;
  final String title;
  final String details;
  final int index;

  DetailsScreen({
    required this.imagePath,
    required this.price,
    required this.photographer,
    required this.title,
    required this.details,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'logo$index',
        child: Container(
          child: Column(
            children: [
              Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      image: DecorationImage(
                          image: AssetImage(imagePath),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
              ),
              Container(
                height: 260,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              title,
                            style: const TextStyle(
                              color: Colors.lightBlueAccent,
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'By $photographer',
                            style: const TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            price,
                            style: const TextStyle(
                              color: Colors.lightBlueAccent,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            details,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.blueAccent,
                                  ),
                                  child: const Text('Back'),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor: Colors.blueAccent,
                                  ),
                                  child: const Text('Buy'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
