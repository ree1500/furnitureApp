import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_auth/cart.dart';
import 'package:flutter_auth/product_description.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 245.0,
                      width: double.infinity,
                      color: Colors.green,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15.0),
                        Row(
                          children: [
                            SizedBox(width: 15.0),
                            Container(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                icon: Icon(Icons.menu),
                                onPressed: () {},
                                iconSize: 30.0,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 15.0),
                          ],
                        ),
                        SizedBox(height: 45.0),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'Hello',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0),
                          child: Text(
                            'What you want to buy?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Padding(
                          padding: EdgeInsets.only(left: 15.0, right: 15.0),
                          child: Material(
                            borderRadius: BorderRadius.circular(5.0),
                            elevation: 5.0,
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(Icons.search,
                                    color: Colors.green, size: 30.0),
                                contentPadding:
                                    EdgeInsets.only(left: 15.0, top: 15.0),
                                hintText: 'Search',
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Stack(
                  children: [
                    SizedBox(height: 10.0),
                    Material(
                      elevation: 1.0,
                      child: Container(
                        height: 75.0,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 75.0,
                          child: Column(
                            children: [
                              Container(
                                height: 50.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/sofad.png"),
                                  ),
                                ),
                              ),
                              Text(
                                'Sofas',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 75.0,
                          child: Column(
                            children: [
                              Container(
                                height: 50.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage("assets/images/desk.png"),
                                  ),
                                ),
                              ),
                              Text(
                                'Desks',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 75.0,
                          child: Column(
                            children: [
                              Container(
                                height: 50.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        "https://media.istockphoto.com/photos/blue-wooden-dresser-isolated-on-white-background-picture-id1162304784?k=20&m=1162304784&s=612x612&w=0&h=RIpmh9lQNpuCCAyFQdgvllVcrl669DpVOCgVXnHMi6k="),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Text(
                                'Dressers',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 75.0,
                          child: Column(
                            children: [
                              Container(
                                height: 50.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/wardrobe.png"),
                                  ),
                                ),
                              ),
                              Text(
                                'Wardrobes',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Container(
                    padding: EdgeInsets.only(right: 15.0),
                    width: MediaQuery.of(context).size.width - 30.0,
                    height: MediaQuery.of(context).size.height - 60.0,
                    child: GridView.count(
                      crossAxisCount: 2,
                      primary: false,
                      crossAxisSpacing: 3.0,
                      mainAxisSpacing: 3.0,
                      childAspectRatio: 0.6,
                      children: [
                        itemCard(
                            "Sofa", "assets/images/ottoman.jpg", "Rs. 30,000"),
                        itemCard("Wooden Chair",
                            "assets/images/anotherchair.jpg", "Rs. 7000"),
                        itemCard(
                            "Chair", "assets/images/chair.jpg", "Rs. 3000"),
                        itemCard("Wooden Wardrobe",
                            "assets/images/woodenwardrobe.jpg", "Rs. 60,000"),
                      ],
                    )),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor: Colors.green,
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          iconSize: 30.0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: 'Favourite',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
              backgroundColor: Colors.green,
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }

  Widget itemCard(String title, String image, String price) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, top: 15.0, right: 15.0),
      child: Container(
        height: 150.0,
        width: 150.0,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150.0,
              width: 140.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 4.0),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 5.0),
            // Container(
            //   width: 175.0,
            //   child: Text(
            //     'Sunt consequat voluptate reprehenderit non dolor cupidatat et commodo ullamco dolor veniam. Dolor culpa pr',
            //     textAlign: TextAlign.left,
            //     style: TextStyle(
            //       fontSize: 12.0,
            //       color: Colors.grey,
            //     ),
            //   ),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40.0,
                  width: 50.0,
                  color: Colors.green,
                  child: Center(
                    child: Text(
                      price,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 40.0,
                  width: 92.0,
                  color: Colors.green,
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDescription(),
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 10.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        //     ],
        //   ),
      ),
    );
  }
}
