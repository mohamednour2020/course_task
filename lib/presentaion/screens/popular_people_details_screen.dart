import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PopularPeopleDetailsScreen extends StatefulWidget {
  int? id;

  PopularPeopleDetailsScreen({Key? key, this.id}) : super(key: key);

  @override
  State<PopularPeopleDetailsScreen> createState() =>
      _PopularPeopleDetailsScreenState();
}

class _PopularPeopleDetailsScreenState
    extends State<PopularPeopleDetailsScreen> {
  @override
  void initState() {
    super.initState();
     }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(
            'Details about '),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Location of Birth :',
                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
'',                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
'',                      style: const TextStyle(color: Colors.white),
                    ),
                    Text(
'',                      style: const TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  itemCount: 5,
                  gridDelegate:
                  const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 350,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(

                      child: Image.network(
                        '',
                        height: 200,
                        width: 300,
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
