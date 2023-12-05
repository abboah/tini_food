import 'package:flutter/material.dart';
import 'package:tini_food/model/model.dart';
import 'package:tini_food/navbar/bottom_navbar.dart';
import 'package:tini_food/widgets/food_card.dart';
import 'package:tini_food/widgets/item_carousel.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void initState() {
    super.initState();
    Model.initialiseM();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      bottomNavigationBar: const BottomNavBarFb5(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/Circle.png'),
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Welcome to',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                ),
                Text(
                  'Sample Restaurant',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.all(18),
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.grey),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(
                  Icons.more_horiz,
                  size: 18,
                  color: Colors.black,
                ),
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.black),
                  child: SizedBox(
                    width: 1,
                    height: 18,
                  ),
                ),
                Icon(
                  Icons.close_sharp,
                  color: Colors.black,
                  size: 18,
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 4.5,
                width: MediaQuery.of(context).size.width,
                child: const HorizontalCarousel(),
              ),
              Card(
                elevation: 2,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 4.5,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: <Widget>[
                          Image.asset('assets/images/store.png'),
                          const Text(
                            'Store Pickup',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const Text(
                            'Best Quality',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                      const DecoratedBox(
                        decoration: BoxDecoration(color: Colors.grey),
                        child: SizedBox(
                          width: 2,
                          height: 30,
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          Image.asset('assets/images/bike.png'),
                          const Text(
                            'Delivery',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          const Text(
                            'Aways on time',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                elevation: 2,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 4.5,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Online Reservation',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Table Booking',
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Image.asset('assets/images/desk.png'),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.blue)),
                            child: const Padding(
                              padding: EdgeInsets.all(3.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.calendar_month_outlined,
                                    color: Colors.blue,
                                  ),
                                  Text(
                                    'Reserve a table',
                                    style: TextStyle(
                                        color: Colors.blue, fontSize: 18),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(color: Colors.blue)),
                            child: const Padding(
                              padding: EdgeInsets.all(6.0),
                              child: Text(
                                'My Reservations',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 18),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Text(
                "Promotion campaign",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              Container(
                height: 530,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 8,
                      mainAxisExtent: 260,
                      crossAxisCount: 2),
                  itemCount: Model.model.length,
                  itemBuilder: ((BuildContext context, index) {
                    return FoodCard(model: Model.model[index]);
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
