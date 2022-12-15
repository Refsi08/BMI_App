import 'package:app_bmi/page/result_page.dart';
import 'package:app_bmi/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var isClickMale = true;
  var isClickFemale = true;
  int number = 160;
  int numberWeight = 50;
  int numberAge = 10;

  double count = 0;

  void addButton() {
    setState(() {
      number = number + 1;
    });
  }

  void minusButton() {
    setState(() {
      number = number - 1;
    });
  }

  void addButtonWeight() {
    setState(() {
      numberWeight = numberWeight + 1;
    });
  }

  void minusButtonWeight() {
    setState(() {
      numberWeight = numberWeight - 1;
    });
  }

  void addButtonAge() {
    setState(() {
      numberAge = numberAge + 1;
    });
  }

  void minusButtonAge() {
    setState(() {
      numberAge = numberAge - 1;
    });
  }

  double buttoncount() {
    double centiMeter = number / 100;
    final h = (centiMeter * centiMeter);
    count = numberWeight / h;
    return count;
  }

  @override
  Widget build(BuildContext context) {
    Widget gender() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isClickMale = !isClickMale;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 100),
              margin: EdgeInsets.all(20),
              height: isClickMale ? 150 : 160,
              width: isClickMale ? 150 : 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: isClickMale ? containerColor : secondaryColor,
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
                children: [
                  Icon(
                    Icons.male,
                    color: whiteColor,
                    size: 100,
                  ),
                  Text(
                    'MALE',
                    style: primaryTextstyle.copyWith(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isClickFemale = !isClickFemale;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 100),
              margin: EdgeInsets.all(20),
              height: isClickFemale ? 150 : 160,
              width: isClickFemale ? 150 : 160,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: isClickFemale ? containerColor : secondaryColor,
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
                children: [
                  Icon(
                    Icons.female,
                    color: whiteColor,
                    size: 100,
                  ),
                  Text(
                    'FEMALE',
                    style: primaryTextstyle.copyWith(
                        fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          )
        ],
      );
    }

    Widget height() {
      return Container(
        margin: EdgeInsets.all(20),
        height: 200,
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'HEIGHT (cm)',
              style: primaryTextstyle.copyWith(
                  fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              number.toString(),
              style: primaryTextstyle.copyWith(
                  fontSize: 50, fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: primaryColor),
                  child: InkWell(
                    onTap: minusButton,
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: whiteColor,
                      size: 50,
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: primaryColor),
                  child: InkWell(
                    onTap: addButton,
                    child: Icon(
                      Icons.arrow_drop_up_outlined,
                      color: whiteColor,
                      size: 50,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget weight_age() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            height: 190,
            width: 150,
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'WEIGHT (kg)',
                  style: primaryTextstyle.copyWith(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  numberWeight.toString(),
                  style: primaryTextstyle.copyWith(
                      fontSize: 50, fontWeight: FontWeight.w500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: primaryColor),
                      child: InkWell(
                        onTap: minusButtonWeight,
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: whiteColor,
                          size: 50,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: primaryColor),
                      child: InkWell(
                        onTap: addButtonWeight,
                        child: Icon(
                          Icons.arrow_drop_up_outlined,
                          color: whiteColor,
                          size: 50,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            height: 190,
            width: 150,
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
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'AGE (year)',
                  style: primaryTextstyle.copyWith(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  numberAge.toString(),
                  style: primaryTextstyle.copyWith(
                      fontSize: 50, fontWeight: FontWeight.w500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: primaryColor),
                      child: InkWell(
                        onTap: minusButtonAge,
                        child: Icon(
                          Icons.arrow_drop_down,
                          color: whiteColor,
                          size: 50,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: primaryColor),
                      child: InkWell(
                        onTap: addButtonAge,
                        child: Icon(
                          Icons.arrow_drop_up_outlined,
                          color: whiteColor,
                          size: 50,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      );
    }

    Widget buttonCalculate() {
      return InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: ((context) => ResultPage(
                  result: buttoncount(),
                )),
          ));
        },
        child: Container(
          margin: EdgeInsets.all(20),
          height: 60,
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
              Text(
                'CALCULATE YOUR BMI',
                style: primaryTextstyle.copyWith(
                    fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        leading: Icon(Icons.balance_rounded),
        centerTitle: true,
        title: Text(
          'BMI',
          style: primaryTextstyle.copyWith(fontWeight: FontWeight.normal),
        ),
        backgroundColor: primaryColor,
        elevation: 10,
        shadowColor: Colors.black26,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            gender(),
            height(),
            weight_age(),
            buttonCalculate(),
            // pageResult(),
            // categoryWeight(),
          ],
        ),
      ),
    );
  }
}
