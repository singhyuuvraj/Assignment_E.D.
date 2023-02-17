import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_search_bar/easy_search_bar.dart';
import 'data.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'assignment',
      theme: ThemeData(useMaterial3: true),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> tabs = [
    "all",
    "mountain",
    "bird",
    "animal",
    "food",
  ];
  int current = 0;
  String p = '';
  double changePositionedOfLine() {
    switch (current) {
      case 0:
        return 0;
      case 1:
        return 40;
      case 2:
        return 122;
      case 3:
        return 172;
      case 4:
        return 243;
      default:
        return 0;
    }
  }

  double changeContainerWidth() {
    switch (current) {
      case 0:
        return 20;
      case 1:
        return 72;
      case 2:
        return 40;
      case 3:
        return 60;
      case 4:
        return 40;
      default:
        return 0;
    }
  }


  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:  EasySearchBar(
        backgroundColor: Colors.white,
        title: Text(
          "Search Keywords",
          style: GoogleFonts.ubuntu(fontSize: 22, fontWeight: FontWeight.w500),
        ),
          onSearch: (value) => setState(() => p = value),
        actions: const [
        ],
      ),
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15),
              width: size.width,
              height: size.height * 0.05,
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: SizedBox(
                      width: size.width,
                      height: size.height * 0.04,
                      child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: tabs.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                  left: index == 0 ? 10 : 23, top: 7),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    current = index;
                                    p = tabs[current];
                                  });
                                },
                                child: Text(
                                  tabs[index],
                                  style: GoogleFonts.ubuntu(
                                    fontSize: current == index ? 16 : 14,
                                    fontWeight: current == index
                                        ? FontWeight.w400
                                        : FontWeight.w300,
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                  AnimatedPositioned(
                    curve: Curves.fastLinearToSlowEaseIn,
                    bottom: 0,
                    left: changePositionedOfLine(),
                    duration: const Duration(milliseconds: 500),
                    child: AnimatedContainer(
                      margin: const EdgeInsets.only(left: 10),
                      width: changeContainerWidth(),
                      height: size.height * 0.008,
                      decoration: BoxDecoration(
                        color: Colors.cyan,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      duration: const Duration(milliseconds: 1000),
                      curve: Curves.fastLinearToSlowEaseIn,
                    ),
                  )
                ],
              ),
            ),
            if(p=="all")
            Expanded(
                child: GridView.count(
              crossAxisCount: 3,
              padding: const EdgeInsets.all(8),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              scrollDirection: Axis.vertical,
              children: [
                all[0],
                all[1],
                all[2],
                all[3],
                all[4],
                all[5],
                all[6],
                all[7],
                all[8],
                all[9],
                all[10],
                all[12],
                all[13],
                all[14],
                all[15],
                all[16],
                all[17],
                all[18],
                all[19],
                all[20],
                all[21],
                all[22],
                all[23],
              ],
            )),
            if(p=="mountain")
              Expanded(
                  child: GridView.count(
                    crossAxisCount: 3,
                    padding: const EdgeInsets.all(8),
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    scrollDirection: Axis.vertical,
                    children: [
                      mountains[0],
                      mountains[1],
                      mountains[2],
                      mountains[3],
                      mountains[4],
                      mountains[5],
                    ],
                  )),
            if(p=="bird")
              Expanded(
                  child: GridView.count(
                    crossAxisCount: 3,
                    padding: const EdgeInsets.all(8),
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    scrollDirection: Axis.vertical,
                    children: [
                      birds[0],
                      birds[1],
                      birds[2],
                      birds[3],
                      birds[4],
                      birds[5],
                      birds[6],
                    ],
                  )),
            if(p=="animal")
              Expanded(
                  child: GridView.count(
                    crossAxisCount: 3,
                    padding: const EdgeInsets.all(8),
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    scrollDirection: Axis.vertical,
                    children: [
                      animal[0],
                      animal[1],
                      animal[2],
                      animal[3],
                      animal[4],
                      animal[5],
                      animal[6],
                    ],
                  )),
            if(p=="food")
              Expanded(
                  child: GridView.count(
                    crossAxisCount: 3,
                    padding: const EdgeInsets.all(8),
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    scrollDirection: Axis.vertical,
                    children: [
                      food[0],
                      food[1],
                      food[2],
                      food[3],
                    ],
                  )),
          ],
        ),
      ),
    );
  }
}
