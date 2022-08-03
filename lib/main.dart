import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Armani(),
    );
  }
}

class Armani extends StatelessWidget {
  const Armani({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffE5E5E5),
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: Color(0xff59A4F2),
        ),
        title: Text(
          'ТЕЛЕФОНЫ СЛУЖБ',
          style: TextStyle(
            color: Color(0xff333333),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.all(10)),
            Text(
              'Медицина',
              style: TextStyle(
                color: Color(0xff333333),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  CustomCard(),
                  SizedBox(width: 10),
                  CustomCard(),
                  SizedBox(
                    width: 10,
                  ),
                  CustomCard(),
                  SizedBox(width: 10),
                  CustomCard(),
                  SizedBox(width: 10),
                  CustomCard(),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Полиция',
              style: TextStyle(
                color: Color(0xff333333),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: CustomWidget(),
                    );
                  }),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Посольство',
              style: TextStyle(
                color: Color(0xff333333),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 10);
                  },
                  itemBuilder: (context, index) {
                    return CustomWidget();
                  }),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Транстпорт',
              style: TextStyle(
                color: Color(0xff333333),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  // shrinkWrap: true,
                  children: [
                    CustomWidget(),
                    SizedBox(
                      width: 10,
                    ),
                    CustomWidget(),
                    SizedBox(
                      width: 10,
                    ),
                    CustomWidget(),
                    SizedBox(
                      width: 10,
                    ),
                    CustomWidget(),
                    SizedBox(
                      width: 10,
                    ),
                    CustomWidget(),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'Свои номера',
              style: TextStyle(
                color: Color(0xff333333),
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.only(right: 10),
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.red),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.add,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomMain(),
                  SizedBox(
                    width: 10,
                  ),
                  CustomMain(),
                  SizedBox(
                    width: 10,
                  ),
                  CustomMain(),
                  SizedBox(
                    width: 10,
                  ),
                  CustomMain(),
                  SizedBox(
                    width: 10,
                  ),
                  CustomMain(),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),

            // Container(
            //   width: 51,
            //   height: 51,
            //   decoration: BoxDecoration(color: Color(0xff59A4F2)),
            // ),
            // Image.asset('assets/images/logo.png'),
          ],
        ),
      ),
    );
  }
}

class CustomMain extends StatelessWidget {
  const CustomMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 172,
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xff59A4F2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/hotel.png',
            height: 51,
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            'Отель\nНевский',
            style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 232,
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xff59A4F2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/imaged.png',
            height: 51,
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            'Единый телефон\nслужб',
            style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 232,
      height: 83,
      decoration: BoxDecoration(
        color: Color(0xff59A4F2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/imaged.png',
            height: 51,
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            'Единый телефон\nслужб',
            style: TextStyle(
                color: Color(0xffFFFFFF),
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
