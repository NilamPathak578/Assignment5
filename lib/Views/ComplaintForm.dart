import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  bool autovalidate = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "complaint form".toUpperCase(),
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        //actions: [IconButton(icon: Icon(Icons.edit), onPressed: null)],
      ),
      body: Container(
          child: Form(
        key: _globalKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                  text: TextSpan(
                      text: "Choose a Category",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      children: [
                    TextSpan(
                        text: "*",
                        style: TextStyle(
                          color: Colors.red,
                        ))
                  ])),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration: InputDecoration(
                    suffixIcon: Icon(Icons.arrow_drop_down),
                    enabledBorder: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                  text: TextSpan(
                      text: "Title",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                      children: [
                    TextSpan(
                        text: "*",
                        style: TextStyle(
                          color: Colors.red,
                        ))
                  ])),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                decoration:
                    InputDecoration(enabledBorder: OutlineInputBorder()),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        text: "Complain for",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                        children: [
                          TextSpan(
                              text: "*",
                              style: TextStyle(
                                color: Colors.red,
                              ))
                        ]),
                  ),
                  SizedBox(
                    width: 90,
                  ),
                  RichText(
                    text: TextSpan(
                        text: "Priority",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                        children: [
                          TextSpan(
                              text: "*",
                              style: TextStyle(
                                color: Colors.red,
                              ))
                        ]),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    child: Flexible(
                      child: TextFormField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.arrow_drop_down),
                            enabledBorder: OutlineInputBorder()),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    child: Flexible(
                      child: TextFormField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.arrow_drop_down),
                            enabledBorder: OutlineInputBorder()),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                    text: "Attachment",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    children: [
                      TextSpan(
                          text: "(Optional)",
                          style: TextStyle(
                            color: Colors.black38,
                          ))
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Photo.jpg",
                          style: TextStyle(color: Colors.black26),
                        ),
                        Icon(
                          Icons.close,
                          size: 17,
                          color: Colors.black26,
                        )
                      ],
                    ),
                    //color: Colors.red,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Photo.jpg",
                          style: TextStyle(color: Colors.black26),
                        ),
                        Icon(
                          Icons.close,
                          size: 17,
                          color: Colors.black26,
                        )
                      ],
                    ),
                    //color: Colors.red,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(8)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40,
                width: 70,
                child: Center(
                  child: Text("Add"),
                ),
                decoration: BoxDecoration(
                    border: Border.all(),
                    //color: Colors.amber,
                    borderRadius: BorderRadius.circular(16)),
              ),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                    text: "Description",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                    children: [
                      TextSpan(
                          text: "*",
                          style: TextStyle(
                            color: Colors.red,
                          ))
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(border: Border.all()),
              ),
              SizedBox(
                height: 14,
              ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 100,
                    //color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.keyboard_arrow_left,
                          color: Colors.white,
                        ),
                        Text(
                          "Previous",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    width: 70,
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    //color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.keyboard_arrow_left,
                          color: Colors.white,
                        ),
                        Text(
                          "Previous",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 30,
                    width: 100,
                    //color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.drafts,
                          color: Colors.white,
                        ),
                        Text(
                          "Previous",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
