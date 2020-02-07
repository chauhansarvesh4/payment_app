import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xffF5FAFA),
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: <Widget>[
              ClipPath(
                clipper: Uclipper(),
                child: Container(
                  width: size.width,
                  height: size.height * 0.35,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.purpleAccent,
                    Colors.purple,
                    Colors.blue,
                  ])),
                  alignment: Alignment.topCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      SizedBox(
                        height: 26,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Payment Method",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add_shopping_cart,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      OutlineButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        borderSide: BorderSide(color: Colors.blue),
                        child: Text(
                          "Back to checkout",
                          style: TextStyle(color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 0,
                right: 0,
                top: size.height * 0.23,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      width: 100,
                      height: 70,
                      child: Card(
                        child: FlatButton(
                          child: Image.asset('paypal.png'),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 70,
                      child: Card(
                        child: FlatButton(
                          child: Image.asset('google_pay.png'),
                          onPressed: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      height: 70,
                      child: Card(
                        child: FlatButton(
                          child: Image.asset('paytm.png'),
                          onPressed: () {},
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                top: size.height * 0.35,
                child: SingleChildScrollView(
                  child: SizedBox(
                    width: size.width,
                    //height: size.height,
                    child: Card(
                      elevation: 4,
                      margin: const EdgeInsets.all(16),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Card Details",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: SizedBox(
                                width: size.width,
                                height: 40,
                                child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 0, horizontal: 8),
                                      hintText: 'Name on Card',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: SizedBox(
                                width: size.width,
                                height: 40,
                                child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding:
                                          const EdgeInsets.symmetric(
                                              vertical: 0, horizontal: 8),
                                      hintText: 'Card Number',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(4),
                                        borderSide:
                                            BorderSide(color: Colors.grey),
                                      )),
                                  keyboardType: TextInputType.phone,
                                ),
                              ),
                            ),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 12.0, horizontal: 2),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            "Expiry Date",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 8.0),
                                            child: SizedBox(
                                              width: size.width,
                                              height: 40,
                                              child: TextField(
                                                decoration: InputDecoration(
                                                    contentPadding:
                                                        const EdgeInsets
                                                                .symmetric(
                                                            vertical: 0,
                                                            horizontal: 8),
                                                    hintText: '00/00',
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                      borderSide: BorderSide(
                                                          color: Colors.grey),
                                                    )),
                                                keyboardType:
                                                    TextInputType.phone,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            "CVV",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 8.0),
                                            child: SizedBox(
                                              width: size.width,
                                              height: 40,
                                              child: TextField(
                                                decoration: InputDecoration(
                                                    contentPadding:
                                                        const EdgeInsets
                                                                .symmetric(
                                                            vertical: 0,
                                                            horizontal: 8),
                                                    suffixIcon:
                                                        Icon(Icons.credit_card),
                                                    border: OutlineInputBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                      borderSide: BorderSide(
                                                          color: Colors.grey),
                                                    )),
                                                keyboardType:
                                                    TextInputType.phone,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "Save my card details",
                                  style: TextStyle(
                                      color: Colors.black54, fontSize: 16),
                                ),
                                Switch(
                                  value: true,
                                  onChanged: (bool value) {},
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Icon(Icons.lock,color: Colors.amber,),
                                  SizedBox(width: 8,),
                                  Text(
                                    "Secure Payment",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 16),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: size.width,
          height: 60,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 10, color: Colors.grey)]),
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.blue,
                    Colors.cyan,
                  ]),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4,
                      color: Colors.blue,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(4)),
              child: Text(
                "Pay Safely",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 17),
              ),
            ),
          ),
        ));
  }
}

class Uclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double w = size.width;
    double h = size.height;

    path.lineTo(w, 0);
    path.lineTo(w, h * 0.7);
    path.quadraticBezierTo(w * 0.5, h + 20, 0, h * 0.7);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
