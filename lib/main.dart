import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo Project',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Demo Project'),
            actions: [Icon(Icons.notifications)],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              setState(() {
                number++;
              });
            },
            child: Icon(Icons.add),
          ),
          drawer: Drawer(),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Text(
                      'Hello World',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  Text(number.toString()),
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/image.jpeg',
                          height: 200,
                          width: 200,
                        ),
                        Center(
                            child: Text(
                          'demo',
                          style: TextStyle(color: Colors.white),
                        ))
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Button'),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Icon(Icons.coronavirus)
                    ],
                  ),
                  SizedBox(
                    width: 300,
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        CustomContainer(
                          text: '123',
                        ),
                        CustomContainer(text: '456')
                      ],
                    ),
                  ),
                  CustomContainer(text: '234'),
                  CustomContainer(text: '345')
                ],
              ),
            ),
          )),
    );
  }
}

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 100,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.ac_unit,
            size: 50,
            color: Color(0xFFFFFFFF),
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
