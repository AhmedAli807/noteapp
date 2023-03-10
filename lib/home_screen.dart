import 'package:flutter/material.dart';
import 'package:noteapp/custom_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.black,
          ),
          backgroundColor: const Color(0xffFEDE3F),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 18.0, top: 25),
                child: Text(
                  'Notepad',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: SizedBox(
                  height: 35,
                  child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25)),
                        label: const Text('Search notes')),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              containerCustom(
                  padding: 8,
                  height: 55,
                  width: 300,
                  color: const Color(0xff82FFB0),
                  radius: 15,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  firstText: 'Todays grocery list',
                  secondText: 'June 26, 2022 08:05 PM',
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  heightSizedBox: 5),
              const SizedBox(
                height: 15,
              ),
              containerCustom(
                  padding: 8,
                  height: 55,
                  width: 300,
                  color: const Color(0xffFFFB82),
                  radius: 15,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  firstText: 'Rich dad Poor dad quotes',
                  secondText: 'June 22, 2022 05:00 PM',
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  heightSizedBox: 5),
            ],
          ),
        ),
      ),
    );
  }
}
