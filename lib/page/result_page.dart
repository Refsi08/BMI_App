import 'package:app_bmi/theme.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key, required this.result});
  final double result;

  cateoryWeight(double value) {
    // sengaja tidak ikut aturan BMI cuman untuk experience logika nya saja hehe
    String category = '';
    if (value <= 20) {
      return 'UnderWeight \n Banyakin Makan ya!';
    } else if (value >= 20 && value < 30) {
      return 'Normal \n Pertahankan kamu keren!';
    } else if (value > 30) {
      return 'Overweight \n Rajin Olahraga ya!';
    }
    return category;
  }

  @override
  Widget build(BuildContext context) {
    Widget tabResult() {
      return Container(
        margin: EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: containerColor,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              spreadRadius: 5,
              blurRadius: 5,
              offset: Offset.fromDirection(-2, -6),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Your Result',
              style: primaryTextstyle.copyWith(
                  fontSize: 20, fontWeight: FontWeight.w500),
            ),
            Text(
              '${result.toStringAsFixed(1)}',
              style: primaryTextstyle.copyWith(
                  fontSize: 50, fontWeight: FontWeight.w500),
            ),
            Container(
              margin: EdgeInsets.all(20),
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: secondaryColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: Offset.fromDirection(-2, -6),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(cateoryWeight(result),
                      style: primaryTextstyle.copyWith(
                          fontSize: 30, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_circle_left_outlined,
                )),
            centerTitle: true,
            title: Text(
              'BMI RESULT',
              style: primaryTextstyle.copyWith(fontWeight: FontWeight.normal),
            ),
            backgroundColor: primaryColor,
            elevation: 10,
            shadowColor: Colors.black26,
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.airline_seat_flat,
                    color: whiteColor,
                    size: 40,
                  ),
                  text: "Result",
                ),
                Tab(
                  icon: Icon(
                    Icons.accessibility_new_sharp,
                    color: whiteColor,
                    size: 40,
                  ),
                  text: "Category",
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            Column(
              children: [
                tabResult(),
              ],
            ),
            Center(
              child: Container(
                width: 500,
                height: 300,
                child: Column(
                  children: [
                    Text('Masih dalam tahap develope !'),
                    LottieBuilder.network(
                        'https://assets7.lottiefiles.com/packages/lf20_3ejhEJ/over/data.json'),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
