import 'package:aventura_com_bako/screens/tutorial/ready.dart';
import 'package:aventura_com_bako/screens/tutorial/story.dart';
import 'package:flutter/material.dart';

class QrCodeTutorial extends StatefulWidget {
  @override
  _QrCodeTutorialState createState() => _QrCodeTutorialState();
}

class _QrCodeTutorialState extends State<QrCodeTutorial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              'assets/background-splash.jpg',
              fit: BoxFit.fitHeight,
            ),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                ),
                Card(
                  child: SizedBox(
                    width: 350,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10),
                          height: 100,
                          width: 350,
                          child: Center(child: Image.asset('assets/idv.png')),
                        ),
                        Container(
                          color: Colors.green,
                          height: 300,
                          width: 350,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(height: 10),
                                  SizedBox(
                                    height: 150,
                                    child:
                                        Image.asset('assets/icons/qr_code.png'),
                                  ),
                                  Text(
                                    'QR CODE',
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.amberAccent[100],
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Center(
                                    child: Text(
                                      'Com a câmera do seu celular, você consegue escanear as placas pelo bosque e participar dos desafios',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                      textAlign: TextAlign.center,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RaisedButton(
                      color: Colors.green,
                      child: Text(
                        'Anterior',
                        style: TextStyle(
                          color: Colors.amberAccent[100],
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    StoryTutorial()));
                      },
                    ),
                    SizedBox(width: 50),
                    RaisedButton(
                      child: Text(
                        'Próximo',
                        style: TextStyle(color: Colors.amberAccent[100]),
                      ),
                      color: Colors.green,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    ReadyTutorial()));
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 270,
                  child: Center(
                    child: Image.asset('assets/bako_vetor.png'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
