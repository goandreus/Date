import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grouped_buttons/grouped_buttons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool lun = false;
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(title: Text("Calendar")),
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Flexible(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Fecha (desde)",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Center(
                                child: Text(
                                  "06 / 05 / 2019",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 6.0, right: 6.0, top: 16),
                            child: Center(
                              child: Text(
                                " - ",
                                style: TextStyle(
                                  fontSize: 40,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Fecha (desde)",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey)),
                            child: Padding(
                              padding: const EdgeInsets.all(6.0),
                              child: Center(
                                child: Text(
                                  "06 / 06 / 2019",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Frecuencia",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold)),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text("(",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                        GestureDetector(
                          child: Text("desmarcar todos",
                              style: TextStyle(
                                fontSize: 16,
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                              )),
                        ),
                        Text(")",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 5,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                          child: Wrap(
                            direction: Axis.horizontal,
                            spacing: 3,
                            children: <Widget>[
                              Container(
                                width: 70,
                                height: 50,
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Lun",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    SizedBox(width: 5),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          lun = !lun;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                        child: Padding(
                                            padding: const EdgeInsets.all(0),
                                            child: lun
                                                ? Icon(Icons.check,
                                                    size: 30,
                                                    color: Colors.black)
                                                : Icon(
                                                    Icons
                                                        .check_box_outline_blank,
                                                    size: 30,
                                                    color: Colors.blue,
                                                  )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 50,
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Mar",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    SizedBox(width: 5),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          lun = !lun;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                        child: Padding(
                                            padding: const EdgeInsets.all(0),
                                            child: lun
                                                ? Icon(Icons.check,
                                                    size: 30,
                                                    color: Colors.black)
                                                : Icon(
                                                    Icons
                                                        .check_box_outline_blank,
                                                    size: 30,
                                                    color: Colors.blue,
                                                  )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 50,
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Mie",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    SizedBox(width: 5),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          lun = !lun;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                        child: Padding(
                                            padding: const EdgeInsets.all(0),
                                            child: lun
                                                ? Icon(Icons.check,
                                                    size: 30,
                                                    color: Colors.black)
                                                : Icon(
                                                    Icons
                                                        .check_box_outline_blank,
                                                    size: 30,
                                                    color: Colors.blue,
                                                  )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 50,
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Jue",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    SizedBox(width: 5),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          lun = !lun;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                        child: Padding(
                                            padding: const EdgeInsets.all(0),
                                            child: lun
                                                ? Icon(Icons.check,
                                                    size: 30,
                                                    color: Colors.black)
                                                : Icon(
                                                    Icons
                                                        .check_box_outline_blank,
                                                    size: 30,
                                                    color: Colors.blue,
                                                  )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 50,
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Vie",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    SizedBox(width: 5),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          lun = !lun;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                        child: Padding(
                                            padding: const EdgeInsets.all(0),
                                            child: lun
                                                ? Icon(Icons.check,
                                                    size: 30,
                                                    color: Colors.black)
                                                : Icon(
                                                    Icons
                                                        .check_box_outline_blank,
                                                    size: 30,
                                                    color: Colors.blue,
                                                  )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 50,
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Sab",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    SizedBox(width: 5),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          lun = !lun;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                        child: Padding(
                                            padding: const EdgeInsets.all(0),
                                            child: lun
                                                ? Icon(Icons.check,
                                                    size: 30,
                                                    color: Colors.black)
                                                : Icon(
                                                    Icons
                                                        .check_box_outline_blank,
                                                    size: 30,
                                                    color: Colors.blue,
                                                  )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 50,
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      "Dom",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    SizedBox(width: 5),
                                    InkWell(
                                      onTap: () {
                                        setState(() {
                                          lun = !lun;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey),
                                            borderRadius:
                                                BorderRadius.circular(6)),
                                        child: Padding(
                                            padding: const EdgeInsets.all(0),
                                            child: lun
                                                ? Icon(Icons.check,
                                                    size: 30,
                                                    color: Colors.black)
                                                : Icon(
                                                    Icons
                                                        .check_box_outline_blank,
                                                    size: 30,
                                                    color: Colors.blue,
                                                  )),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Flexible(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Hora (desde)",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey)),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Center(
                                  //Inkwell
                                  child: Text(
                                    "08:00:00",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Column(
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 6.0, right: 6.0, top: 16),
                              child: Center(
                                child: Text(
                                  " - ",
                                  style: TextStyle(
                                    fontSize: 40,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Hora (desde)",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey)),
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Center(
                                  //inkwell()
                                  child: Text(
                                    "08:00:00",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: SizedBox(
                  height: 2,
                  child: Container(
                    color: Colors.grey,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Monto Calculado",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Total de dias : 24 dias",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Horas diarias : 05 hr",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Total de horas calculadas : 120 hr",
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                      Container(
                        child: Text(
                          "S/. 8.400,00",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RaisedButton(padding: const EdgeInsets.all(12),
                          color: Colors.amber,
                          onPressed: () {},
                          child: Text(
                            "RESERVAR",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        RaisedButton(
                          padding: const EdgeInsets.all(12),
                          color: Colors.grey,
                          onPressed: () {},
                          child: Text("CANCELAR",
                            style: TextStyle(color: Colors.white, fontSize: 20),),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ));
}
