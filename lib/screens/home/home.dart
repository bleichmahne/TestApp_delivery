import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Stack(
          children: <Widget>[
            //appbar address
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Red Square, 17 ',
                  style: Theme.of(context).textTheme.headline6,
                ),
                IconButton(
                  //address arrow pressable
                  color: Colors.black,
                  icon: Icon(Icons.arrow_drop_down_rounded),
                  onPressed: () => {print("Click on chat button")},
                ),
              ],
            ),
            //Address bottom
            Positioned(
              bottom: -4,
              child: Container(
                child: Text(
                  'Entrance 3, intercom 15, apartment 15, floor 5',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
            ),
          ],
        ),
        //buttons
        actions: <Widget>[
          IconButton(
            //chat bubble pressable
            color: Colors.black,
            icon: Icon(Icons.chat_bubble_outline_rounded),
            onPressed: () => {print("Click on chat button")},
          ),
          IconButton(
            //avatar button pressable
            icon: CircleAvatar(
              backgroundImage: AssetImage("lib/assets/images/avatar.png"),
            ),
            onPressed: () => {print("Click on avatar button")},
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Column(
          children: <Widget>[
            // food type row scroll
            FoodType_row(),
            //Food menu row scroll
            FoodMenu_row(),
            //delivery time bottom
            Container(
              child: Text(
                '30 min',
                style: TextStyle(fontSize: 22),
              ),
              alignment: Alignment.center,
              height: 87,
              width: 400,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodType_row extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 1, 0),
      height: 40.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          //Single tile menu view icon
          Container(
            margin: EdgeInsets.fromLTRB(20, 0, 1, 0),
            alignment: Alignment.center,
            child: TextButton(
              child: Icon(
                Icons.crop_square_outlined,
                color: Colors.black,
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[200])),
              onPressed: () {},
            ),
            width: 40,
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(7)),
            ),
          ),
          //row of columns menu view icon
          Container(
            margin: EdgeInsets.fromLTRB(1, 0, 20, 0),
            alignment: Alignment.center,
            child: TextButton(
              child: Icon(
                Icons.table_rows_outlined,
                color: Colors.black,
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.grey[200])),
              onPressed: () {},
            ),
            width: 40,
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(7)),
            ),
          ),
          //food type scrollable row - breakfast
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
            alignment: Alignment.center,
            child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.rice_bowl_outlined,
                      color: Colors.black,
                    ),
                    Text(
                      'Breakfast',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                )),
            width: 120,
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
          //noodles
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
            alignment: Alignment.center,
            child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.rice_bowl_outlined,
                      color: Colors.black,
                    ),
                    Text(
                      'Noodles',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                )),
            width: 120,
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
          //noodles
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
            alignment: Alignment.center,
            child: TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.rice_bowl_outlined,
                      color: Colors.black,
                    ),
                    Text(
                      'Noodles',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                )),
            width: 120,
            decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
          ),
        ],
      ),
    );
  }
}

class FoodMenu_row extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
      decoration: BoxDecoration(
        color: Theme.of(context).backgroundColor,
      ),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          //food row view pasta 1
          Stack(
            children: <Widget>[
              Container(
                width: 360,
                height: 450,
                color: Theme.of(context).primaryColor,
              ),
              Container(
                width: 300,
                height: 400,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20.0),
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[],
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
              ),
              Positioned(
                width: 300,
                height: 300,
                child: new Tab(
                  icon: new Image.asset("lib/assets/images/pasta1.png"),
                ),
              ),
              Positioned(
                bottom: 80,
                left: 40,
                child: SizedBox(
                  width: 280,
                  child: Text(
                    'Pasta Al Pomodoro with Basil',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                bottom: 40,
                left: 40,
                child: TextButton(
                  child: Text(
                    '\$6.30',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    primary: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OpenFoodChoice()),
                    );
                  },
                ),
              ),
            ],
          ),
          // food row view pasta 2
          Stack(
            children: <Widget>[
              Container(
                width: 360,
                height: 450,
                color: Theme.of(context).primaryColor,
              ),
              Container(
                width: 300,
                height: 400,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20.0),
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[],
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
              ),
              Positioned(
                width: 300,
                height: 300,
                child: new Tab(
                  icon: new Image.asset("lib/assets/images/pasta1.png"),
                ),
              ),
              Positioned(
                bottom: 80,
                left: 40,
                child: SizedBox(
                  width: 280,
                  child: Text(
                    'Pasta Al Pomodoro with Basil',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                bottom: 40,
                left: 40,
                child: TextButton(
                  child: Text(
                    '\$6.30',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    primary: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          // food row view pasta 3
          Stack(
            children: <Widget>[
              Container(
                width: 360,
                height: 450,
                color: Theme.of(context).primaryColor,
              ),
              Container(
                width: 300,
                height: 400,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(20.0),
                alignment: Alignment.center,
                child: Column(
                  children: <Widget>[],
                ),
                decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
              ),
              Positioned(
                width: 300,
                height: 300,
                child: new Tab(
                  icon: new Image.asset("lib/assets/images/pasta1.png"),
                ),
              ),
              Positioned(
                bottom: 80,
                left: 40,
                child: SizedBox(
                  width: 280,
                  child: Text(
                    'Pasta Al Pomodoro with Basil',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                bottom: 40,
                left: 40,
                child: TextButton(
                  child: Text(
                    '\$6.30',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    primary: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OpenFoodChoice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Stack(
          children: <Widget>[
            //food title
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Pasta',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Container(
        width: 500,
        height: 800,
        margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Column(
          children: <Widget>[
            //Pasta Image
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Image.asset(
                'lib/assets/images/pasta1.png',
                width: 320,
                height: 320,
              ),
            ),
            //Name and Amount
            Row(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  width: 220,
                  child: Text('Pasta Al Pomodoro with Basil',
                      style: Theme.of(context).textTheme.headline6),
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      //address arrow pressable
                      color: Colors.black,
                      icon: Icon(Icons.remove),
                      onPressed: () => {print("Click on chat button")},
                    ),
                    Container(
                      width: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Text('1',
                          style: Theme.of(context).textTheme.headline6),
                    ),
                    IconButton(
                      //address arrow pressable
                      color: Colors.black,
                      icon: Icon(Icons.add),
                      onPressed: () => {print("Click on chat button")},
                    ),
                  ],
                ),
              ],
            ),
            //Nutrients list
            Container(
              height: 60,
              width: 400,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(90), left: Radius.circular(90)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    width: 60,
                    child: Text('320 gram',
                        style: Theme.of(context).textTheme.bodyText2),
                  ),
                  Container(
                    width: 50,
                    child: Text('740 ккал',
                        style: Theme.of(context).textTheme.bodyText2),
                  ),
                  Container(
                    width: 50,
                    child: Text('10 белки',
                        style: Theme.of(context).textTheme.bodyText2),
                  ),
                  Container(
                    width: 40,
                    child: Text('10 жиры',
                        style: Theme.of(context).textTheme.bodyText2),
                  ),
                  Container(
                    width: 75,
                    child: Text('155 углеводы',
                        style: Theme.of(context).textTheme.bodyText2),
                  ),
                ],
              ),
            ),
            Container( margin: EdgeInsets.symmetric(horizontal: 20,vertical: 16),
              child: Text(
                  'Pasta, Extra Virgin Olive Oil,fresh basil, tomatoes, garlic,black pepper, mixed dry herbs,rock salt, parmigiano regiano'),
            ),
            //bottom container
            Container(
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    color: Colors.black,
                    icon: Icon(Icons.shopping_bag_outlined),
                  ),
                  Text(
                    '40 min ',
                    style: TextStyle(fontSize: 22),
                  ),
                  Text(
                    ' \$6.30',
                    style: TextStyle(fontSize: 22),
                  ),
                ],
              ),
              alignment: Alignment.center,
              height: 80,
              width: 400,
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
