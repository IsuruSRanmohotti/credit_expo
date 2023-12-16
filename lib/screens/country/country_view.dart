import 'package:credit_expo/models/country.dart';
import 'package:flutter/material.dart';

class CountryView extends StatefulWidget {
  const CountryView({super.key, required this.country});
  final CCRating country;

  @override
  State<CountryView> createState() => _CountryViewState();
}

class _CountryViewState extends State<CountryView> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.country.country} - Credit Rating"),
      ),
      body: Column(
        children: [
          const Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width * 0.45,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.green.shade800,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "S & P Rating",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        widget.country.sAndP != null
                            ? "${widget.country.sAndP}"
                            : "No Data",
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: size.width * 0.45,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.purple.shade800,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Moody's Rating",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        widget.country.moodys != null
                            ? "${widget.country.moodys}"
                            : "No Data",
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: size.width * 0.92,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.amber.shade800,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "DBRS Rating",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        widget.country.dbrs != null
                            ? "${widget.country.dbrs}"
                            : "No Data",
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 28),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
