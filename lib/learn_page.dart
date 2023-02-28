import 'package:flutter/material.dart';

class LearnPage extends StatefulWidget {
  const LearnPage({super.key});

  @override
  State<LearnPage> createState() => _LearnPageState();
}

class _LearnPageState extends State<LearnPage> {
  bool isSwitch = true;
  bool? isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn"),
        backgroundColor: Colors.blue,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("images/dryer.png"),
        SizedBox(
          height: 10,
        ),
        Divider(color: Colors.cyan),
        Expanded(
            child: Container(
          margin: EdgeInsets.all(10),
          width: double.infinity,
          color: Colors.cyan,
          child: Center(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("GestureDetector");
              },
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: () => {}, icon: Icon(Icons.abc)),
                    TextButton(
                        onPressed: () => {debugPrint("textButton")},
                        child: Text("textButton")),
                    Text(
                      "container",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    OutlinedButton(
                        onPressed: () => {debugPrint("OutlinedButton")},
                        child: Text("OutlinedButton")),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                isSwitch ? Colors.green : Colors.blue),
                        onPressed: () => {},
                        child: Text("ElevatedButton1")),
                    Switch(
                        value: isSwitch,
                        onChanged: (bool newBool) {
                          setState(() {
                            isSwitch = newBool;
                          });
                        }),
                    Checkbox(
                        value: isChecked,
                        onChanged: (bool? newBool) => {
                              setState(() {
                                isChecked = newBool;
                              })
                            }),
                    Image.network(
                        "https://miro.medium.com/v2/resize:fit:720/format:webp/1*oC1wQeImbqzcfO3jixK2oQ.jpeg"),
                    Image.network(
                        "https://miro.medium.com/v2/resize:fit:720/format:webp/1*oC1wQeImbqzcfO3jixK2oQ.jpeg")
                  ],
                ),
              ),
            ),
          ),
        ))
      ]),
    );
  }
}
