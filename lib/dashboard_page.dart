import 'package:flutter/material.dart';
import 'package:doctor_app/service_detail.dart';

class CookiePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width - 30.0,
              height: MediaQuery.of(context).size.height - 50.0,
              child: GridView.count(
                crossAxisCount: 2,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 0.8,
                children: <Widget>[
                  _buildCard('', '', 'assets/doc.jpg',
                      'add', false, context),
                  _buildCard('Cookie cream', '\$5.99', 'assets/doclist.PNG',
                      'list', false, context),
                  _buildCard('', '',
                      'assets/hospital1.png', 'hospital', true, context),
                  _buildCard('', '', 'assets/news_.png',
                      'news', false, context)
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String name, String price, String imgPath, String service,
      bool isFavorite, context) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ServiceDetail(
                    assetPath: imgPath,
                    serviceprice:price,
                    servicename: name
                  )));
            },
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [

                  Hero(
                      tag: imgPath,
                      child: Container(
                          height: 145.0,
                          width: 145.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(imgPath),
                                  fit: BoxFit.contain)))),
                  Text(name,
                      style: TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Varela',
                          fontSize: 1.0)),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(color: Color(0xFFEBEBEB), height: 1.0)),
                  Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            if (service == 'add') ...[
                              Text('Add appointment',
                                  style: TextStyle(
                                      fontFamily: 'Varela',
                                      color: Color(0xFF00b0ff),
                                      fontSize: 16.0,fontWeight: FontWeight.bold))
                            ],
                            if (service == 'list') ...[
                              Text('My appointments',
                                  style: TextStyle(
                                      fontFamily: 'Varela',
                                      color: Color(0xFF00b0ff),
                                      fontSize: 16.0,fontWeight: FontWeight.bold))
                            ],
                            if (service == 'hospital') ...[
                              Text('Nearby Hospitals',
                                  style: TextStyle(
                                      fontFamily: 'Varela',
                                      color: Color(0xFF00b0ff),
                                      fontSize: 16.0,fontWeight: FontWeight.bold))
                            ],
                            if (service == 'news') ...[
                              Text('News & Tips',
                                  style: TextStyle(
                                      fontFamily: 'Varela',
                                      color: Color(0xFF00b0ff),
                                      fontSize: 16.0,fontWeight: FontWeight.bold),
                              )
                            ],
                          ],
                      ),
                  ),
                ],
                ),
            ),
        ),
    );
  }
}
