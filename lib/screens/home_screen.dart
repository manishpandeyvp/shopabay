import 'package:carousel_slider/carousel_slider.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'product_screen.dart';
import 'package:shopabay/utilities/product.dart';
import 'package:shopabay/components/category_item.dart';
import 'package:shopabay/utilities/constants.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';
import 'my_cart.dart';
import 'my_purchases.dart';
import 'login_screen.dart';
import 'my_account.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List bannerAdSlider = [
    "assets/banner1.jpg",
    "assets/banner1.jpg",
    "assets/banner1.jpg",
    "assets/banner1.jpg",
    "assets/banner1.jpg",
    "assets/banner1.jpg",
    "assets/banner1.jpg",
    "assets/banner1.jpg"
  ];

  List<Product> products = [
    Product(
        image: "assets/headphones1.png",
        description:
            "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz",
        price: "100",
        productName: "Headphones"),
    Product(
        image: "assets/headphones2.png",
        description:
            "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz",
        price: "100",
        productName: "Headphones"),
    Product(
        image: "assets/headphones3.png",
        description:
            "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz",
        price: "100",
        productName: "Headphones"),
    Product(
        image: "assets/headphones4.png",
        description:
            "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz",
        price: "100",
        productName: "Headphones"),
    Product(
        image: "assets/headphones5.png",
        description:
            "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz",
        price: "100",
        productName: "Headphones"),
    Product(
        image: "assets/headphones6.png",
        description:
            "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz",
        price: "100",
        productName: "Headphones"),
    Product(
        image: "assets/headphones7.png",
        description:
            "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz",
        price: "100",
        productName: "Headphones"),
    Product(
        image: "assets/headphones8.png",
        description:
            "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz",
        price: "100",
        productName: "Headphones"),
    Product(
        image: "assets/headphones9.png",
        description:
            "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz",
        price: "100",
        productName: "Headphones"),
    Product(
        image: "assets/headphones10.png",
        description:
            "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz",
        price: "100",
        productName: "Headphones"),
  ];

  GlobalKey<ScaffoldState> drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));

    return Scaffold(
      key: drawerKey,
      appBar: GradientAppBar(
        centerTitle: true,
        title: FittedBox(
          child: Row(
            children: [
              Text(
                "SHOPA",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                "bay",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w200),
              ),
            ],
          ),
        ),
        gradient: LinearGradient(colors: [darkColor, lightColor]),
        brightness: Brightness.light,
        elevation: 4,
        actionsIconTheme: IconThemeData(color: Colors.white),
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          onPressed: () {
            drawerKey.currentState.openDrawer();
          },
          icon: Icon(Icons.menu),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyCart(),
                  ));
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      drawerEdgeDragWidth: 0,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: lightColor,
              ),
              accountEmail: Text(
                "iamunknown@mail.com",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              accountName: FittedBox(
                child: Row(
                  children: [
                    Text(
                      "HEY ",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                    ),
                    Text(
                      "Manish",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ));
              },
              title: Text(
                "Home",
                style: TextStyle(color: darkColor),
              ),
              leading: Icon(
                Icons.home,
                color: darkColor,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyAccount(),
                    ));
              },
              title: Text(
                "My Account",
                style: TextStyle(
                  color: darkColor,
                ),
              ),
              leading: Icon(
                Icons.account_circle,
                color: darkColor,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyPurchases(),
                    ));
              },
              title: Text(
                "My Purchases",
                style: TextStyle(
                  color: darkColor,
                ),
              ),
              leading: Icon(
                Icons.shopping_basket,
                color: darkColor,
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogInScreen(),
                    ));
              },
              title: Text(
                "Log Out",
                style: TextStyle(color: darkColor),
              ),
              leading: Icon(
                Icons.power_settings_new,
                color: darkColor,
              ),
            ),
          ],
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 18,
                      color: darkColor,
                      fontWeight: FontWeight.w800),
                ),
              ),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(
                      width: 5,
                    ),
                    CategoryItem(
                      icon: EvaIcons.giftOutline,
                      size: 50,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CategoryItem(
                      icon: EvaIcons.headphonesOutline,
                      size: 70,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CategoryItem(
                      icon: EvaIcons.hardDriveOutline,
                      size: 70,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CategoryItem(
                      icon: EvaIcons.printerOutline,
                      size: 70,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CategoryItem(
                      icon: EvaIcons.videoOutline,
                      size: 70,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CategoryItem(
                      icon: EvaIcons.umbrellaOutline,
                      size: 70,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    CategoryItem(
                      icon: EvaIcons.tvOutline,
                      size: 70,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 30,
              ),
              // banner ad slider

              CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 16 / 9,
                  autoPlay: true,
                ),
                items: bannerAdSlider.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image(
                            image: AssetImage(i),
                            fit: BoxFit.cover,
                            alignment: Alignment.center,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),

              // banner ad slider

              SizedBox(
                height: 20,
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Products",
                  style: TextStyle(
                      fontSize: 18,
                      color: darkColor,
                      fontWeight: FontWeight.w800),
                ),
              ),

              SizedBox(
                height: 20,
              ),

              GridView.count(
                physics: ClampingScrollPhysics(),
                crossAxisCount: 2,
                shrinkWrap: true,
                childAspectRatio: 1 / 1.25,
                children: products.map((product) {
                  return Stack(
                    children: <Widget>[
                      Container(
                        child: Column(
                          children: <Widget>[
                            Hero(
                              tag: product.image,
                              child: AspectRatio(
                                aspectRatio: 1 / 1,
                                child: Image(
                                  image: AssetImage(product.image),
                                ),
                              ),
                            ),
                            Text(
                              product.productName,
                              style: TextStyle(
                                  color: lightColor,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text(
                              "${product.price}\$",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: darkColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProductPage(
                                    product: product,
                                  ),
                                ));
                          },
                        ),
                      )
                    ],
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
