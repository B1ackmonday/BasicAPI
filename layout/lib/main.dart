import 'package:flutter/material.dart';
import 'package:layout/pages/home.dart';

// (1) หลังจาก create project ให้ลบ code ทั้งหมดให้เหลือแค่ void main และ runApp
// (2) สร้าง MyApp โดยใช้ statelesswidget (พิมพ์ stl)
// (3) comment out const
// (4) ใส่ return เป็น MaterialApp();
// (5) ใน MaterialApp ใส่ title:" ",home: ,(จะlinkไปอีกpageนึง เว้นไว้ก่อนได้)
// (6) สร้าง folder ชื่อ pages ใน lib
// (7) ใน folder pages สร้างไฟล์ชื่อ home.dart
// (*ข้อแตกต่าง) stl จะเป็นwidgetที่ไม่มีการเปลี่ยนแปลงของข้อมูลในwidgetนั้น (fixไว้เลย),
//             stf จะเป็นwidget ที่มีการเปลี่ยนแปลงเป็น dynamic เช่นการคำนวณ หรือrefreshหน้า
// (17) ใส่ค่า home: HomePage(), *สังเกตุด้านบนบรรทัด 2 จะมี import page ขึ้นมาให้;
// (17-1) ตอนนี้หน้า home.dart เข้ามาอยู่ที่ main.dart เรียบร้อยแล้ว (ลองเปิด cmd flutter run ได้เลย)
// (17-2) เปิด google flutter layout

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //วิธี remove debug
      title: "InvestorLogic",
      home: HomePage(),
    );
  }
}
