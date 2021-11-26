// (8) สร้าง Statefullwidget (stf) ใส่ HomePage
// (9) Click ไฟด้านหน้า HomePage เลือก import material.dart (errorจะหายไป)
// (10) ที่ return ให้ใส่ Scaffold
// (11) ใน scaffold ใส่ appBar: AppBar(),
// (12) ใน AppBar จะมี title: Text(""),
// (13) ใน scaffold ใส่ body (*ข้อแตกต่าง; materialApp จะใส่ home แต่ scaffold จะใส่ body)
// (14) ใน body ใส่ ListView(), ใน ListView จะมี Children
// (15) ใน children จะใส่ข้อความ Text("..")
// (16) นำ home.dart ไปใส่ใน main.dart
// (31) เลือกรูปภาพจากเวบ Pixabay แล้ว copy URL จากนั้นกลับไปใส่ที่ MyBox

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:layout/pages/detail.dart'; // โซน import

class HomePage extends StatefulWidget {
  // classหลัก
  //const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
} // เป็นการสร้างฟังก์ชันขึ้นมาชื่อ createstate แล้ว return เป็น homepagestate

class _HomePageState extends State<HomePage> {
// classย่อย
// state มาจาก materail.dart
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Knowledge for Investor"),
      ),
      body: Padding(
          // (30) คลิกดวงไฟหน้า ListView แล้วกด Wrap with padding
          padding: const EdgeInsets.all(13),
          child: FutureBuilder(
            builder: (context, snapshot) {
              var data = json.decode(snapshot.data
                  .toString()); // (62) ใส่บรรทัดนี้เสร็จให้กดดวงไฟเพื่อ import (dartconvert)แล้วใส่ snapshot.data.toString();
              return ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return MyBox(
                      data[index]['title'],
                      data[index]['subtitle'],
                      data[index]['image_url'],
                      data[index][
                          'detail']); // (67) ใส่ return MyBox // (77) ใส่ data detail เพิ่ม
                }, // (66) ใส่ Buildcontext context, int index {}
                itemCount: data.length,
              ); // (63) ใส่ return ListView.builder(); //(67) ใส่ itemcount: data.lenght หลังปีกกา(ใส่คอมม่าหลังปีกกาด้วย)
            },
            future: DefaultAssetBundle.of(context).loadString(
                'assets/data.json'), // (64) ใส่ future ใต้ปีกกาของ builder snapshot *future เป็นฟังชันพิเศษที่จะเรียก file jsonมาอ่าน //(65) จากนั้นไปที่ pubspec
          ) // (61) ใส่ FutureBuilder(builder: (context, snapshot){},)
          //ListView(
          //   children: [
          //     // (22) นำ MyBox มาใส่ใน children
          //     // MyBox(
          //     //     "การลงทุนควรทำอย่างไร?",
          //     //     "การลงทุนจำเป็นต้องมีความรู้และความเข้าใจในเรื่องต่างๆอย่างถูกต้อง",
          //     //     "https://cdn.pixabay.com/photo/2015/07/09/20/05/lake-constance-838408_960_720.jpg"), // (41) หลังจากใส่ titleข้อ(40) นำข้อความมาใส่ที่นี่
          //     // SizedBox(
          //     //   height: 10,
          //     // ), // (23) เป็นการปรับระยะระหว่าง MyBox
          //     // MyBox(
          //     //     "Technical Analysis",
          //     //     "ในบทความนี้จะแนะนำเกี่ยวกับเครื่องมือที่ใช้ในการเทรด",
          //     //     "https://cdn.pixabay.com/photo/2020/12/08/20/37/hand-5815508_960_720.jpg"), // (42) ใส่ข้อความ ("title","subtitle")
          //     // SizedBox(
          //     //   height: 10,
          //     // ),
          //     // MyBox(
          //     //     "How to Trade like a Pro",
          //     //     "วิธีการนำเครื่องมือทางเทคนิคไปใช้อย่างถูกต้อง",
          //     //     "https://cdn.pixabay.com/photo/2020/11/27/17/00/man-5782415_960_720.jpg"), // (43) ใส่ข้อความ ("title","subtitle")
          //   ],
          // ),
          ),
    );
  }

  Widget MyBox(String title, String subtitle, String image_url, String detail) {
    // (74)เพิ่ม String detail
    // (46) ใส่ String image_url เพื่อใช้รูปแยกกันในแต่ละส่วน
    // (44) ใส่ String subtitle
    // (39) ใส่ String title
    // (18) สร้าง Widget(ใส่ชื่ออะไรก็ได้) เพื่อใช้ในปีกกา Widget buildContext
    // (19) ใส่ return Container --> ใส่ child --> ใส่ Column --> ใส่ children
    var v1, v2, v3, v4; // (75)
    v1 = title;
    v2 = subtitle;
    v3 = image_url;
    v4 = detail;
    return Container(
      margin: EdgeInsets.only(top: 20), //(68) ใส่ค่า margin
      padding: EdgeInsets.all(
          20), // (28) padding EdgeInsets เพื่อปรับเลื่อนระยะจากขอบของ MyBox
      //color: Colors.blue[50], // (25) ใส่สี
      height: 175, // (26) ใส่ความสูง
      decoration: BoxDecoration(
          // color: Colors.blue[50], // (34) ย้ายมาจากบรรทัดที่ 60 ** comment color ออกเพื่อใช้รูปภาพแทน
          borderRadius: BorderRadius.circular(
              20), // (33) ใส่รัศมีขอบของรูปภาพ **เกิด error กับ color ให้ comment out color ออกแล้วนำ color มาใส่ที่ deco แทน
          image: DecorationImage(
              // (32) ใส่ decoration เพื่อนำ URL รูปภาพมาใส่ที่นี่
              image: NetworkImage(
                  image_url), // (35) วาง URL ใน networkimage // (47) ย้ายรูปไปที่ข้อ 41
              fit: BoxFit.fitWidth, // (36) ปรับภาพให้เต็มพื้นที่
              colorFilter: ColorFilter.mode(Colors.white.withOpacity(1),
                  BlendMode.softLight))), // (37) ปรับให้ภาพบางลง
      child: Column(
        mainAxisAlignment: MainAxisAlignment
            .spaceEvenly, // (27) ปรับความสูง บน(start) กลาง(center) ล่าง(end) *สามารถใส่ spaceEvenly ได้
        crossAxisAlignment: CrossAxisAlignment
            .start, // (24) เป็นการเลื่อน column ไปทางฝั่งซ้าย(start)/ขวา(end)
        children: [
          Text(
            title, // (40) ใส่ title จาก String (39) ...ข้อความก่อนจะเปลี่ยน title"การลงทุนควรทำอย่างไร?"
            style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
                fontWeight: FontWeight
                    .bold), // ใน children ใส่ได้หลายค่า Ex. Text //(38) ใส่สีให้ Text, ใส่ fontWeight
          ), // (20) ใส่ Text("..",style: Textstyle(fontSize:..))
          SizedBox(height: 10), // (29) ปรับความสูงระหว่างบรรทัด Text
          Text(
            subtitle, // (45) ทำเหมือน title
            style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold), // (21) Copy จากข้อ20
          ),
          SizedBox(height: 1), // (48)
          TextButton(
              onPressed: () {
                print("Next Page >>>"); // (50) ใส่ printไปก่อน
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailPage(v1, v2, v3,
                            v4))); // (55) วิธีการ Navigate ไป DetailPage
              }, //(76) ที่ detailpage ใส่ v1,....
              child:
                  Text("Readmore")) // (49) ใส่ TextButton เพื่อ link ไปหน้าใหม่
        ], // (50) สร้างหน้า pages ใหม่ ไปที่ Folder pages แล้ว new file
      ),
    );
  }
}
