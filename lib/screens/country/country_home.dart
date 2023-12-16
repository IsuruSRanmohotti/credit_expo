import 'package:credit_expo/data/data.dart';
import 'package:credit_expo/models/country.dart';
import 'package:credit_expo/screens/country/country_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CountryHome extends StatefulWidget {
  const CountryHome({super.key});

  @override
  State<CountryHome> createState() => _CountryHomeState();
}

class _CountryHomeState extends State<CountryHome> {
  List<CCRating?> countries = DataSet.ccRatings;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Country Credit Rating"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                width: size.width * 0.9,
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: [
                    Expanded(
                        child: TextField(
                      onChanged: (val) {
                        setState(() {
                          if (val.isNotEmpty) {
                            List<CCRating?> result = [];
                            for (var country in DataSet.ccRatings) {
                              if (country!.country
                                  .toLowerCase()
                                  .contains(val.toLowerCase())) {
                                result.add(country);
                              }
                            }
                            setState(() {
                              countries = result;
                            });
                          }
                        });
                      },
                      decoration: const InputDecoration(
                          hintText: "Search here", border: InputBorder.none),
                    )),
                  ],
                ),
              ),
            ),
            Column(
              children: List.generate(
                  countries.length,
                  (index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) =>
                                    CountryView(country: countries[index]!),
                              ));
                        },
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Text(
                              countries[index]!.country.substring(0, 2),
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          trailing: const Icon(Icons.arrow_forward_ios_sharp,
                              color: Colors.grey),
                          title: Text(countries[index]!.country),
                        ),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
