import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MediaQuery(
        data: MediaQueryData(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "ls22",
          home: MyButtons(),
        ));
  }
}

class MyButtons extends StatefulWidget {
  @override
  _MyButtonsState createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  double length = 20;
  int _value = 1;
  Color color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("buttons"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(onPressed: () {}, child: Text("textButton")),
            ElevatedButton(onPressed: () {}, child: Text("ElavatedButton")),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(
                Icons.accessible_forward_sharp,
                color: Colors.red,
              ),
              backgroundColor: Colors.green,
            ),
            DropdownButton(
              value: _value,
              items: [
                DropdownMenuItem(
                  child: Text("1"),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("2"),
                  value: 2,
                ),
                DropdownMenuItem(
                  child: Text("3"),
                  value: 3,
                )
              ],
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
            IconButton(icon: Icon(Icons.ac_unit_rounded), onPressed: () {}),
            Container(
              width: length,
              height: length,
              decoration: BoxDecoration(color: color),
              child: InkWell(
                onTap: () {
                  setState(() {
                    color == Colors.red
                        ? color = Colors.black
                        : color = Colors.red;
                  });
                },
              ),
            ),
            PopupMenuButton(
                child: Text("121232"),
                itemBuilder: (context) {
                  return List.generate(
                    5,
                    (index) => PopupMenuItem(child: Text("text $index")),
                  );
                }),
            OutlinedButton(onPressed: () {}, child: Text("text"))
          ],
        ),
      ),
    );
  }
}
