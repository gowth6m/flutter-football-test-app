import 'package:flutter/material.dart';
import 'package:footballapp/Screens/TableScreen.dart';
import 'package:footballapp/Widgets/LeagueContainer.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Football App'),
        automaticallyImplyLeading: false,
        leading: Navigator.canPop(context)
            ? IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 47,
                ),
                onPressed: () => Navigator.of(context).pop(),
              )
            : null,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              const Color(0xffe84860),
              const Color(0xffe70066),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.0, 1.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp,
          )),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            
            // How would you build this using as slivers rather than a ListView?
            child: ListView(
              children: [
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  children: [
                    GestureDetector(
                      child: LeagueContainer(image: 'assets/pl.png'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TableScreen(code: 'PL'),
                            ));
                      },
                    ),
                    GestureDetector(
                      child: LeagueContainer(image: 'assets/laliga.png'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TableScreen(code: 'PD'),
                            ));
                      },
                    ),
                    GestureDetector(
                      child: LeagueContainer(image: 'assets/bundesliga.png'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TableScreen(code: 'BL1'),
                            ));
                      },
                    ),
                    GestureDetector(
                      child: LeagueContainer(image: 'assets/seria.png'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TableScreen(code: 'SA'),
                            ));
                      },
                    ),
                    GestureDetector(
                      child: LeagueContainer(image: 'assets/ligue1.png'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TableScreen(code: 'FL1'),
                            ));
                      },
                    ),
                    GestureDetector(
                      child: LeagueContainer(image: 'assets/nos.png'),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TableScreen(code: 'PPL'),
                            ));
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
