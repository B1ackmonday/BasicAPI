// (51) ใช้ stf สร้าง DetailPage
// (52) คลิกที่ดวงไฟเลือก import material
// (53) ที่ Container ให้เปลี่ยนเป็น Scaffold แล้วใส่ appBar, body --> ListView [Children: Text]
// (54) นำ DetailPage ไปใส่ที่หน้า Home.dart ตรงตำแหน่ง onPress
// (55) สร้าง folder assets ใน folder layout แล้วสร้าง data.json ใน assets

// (68) ลบบรรทัด cons ออกไปก่อน แล้วใส่ final v1,v2,v3,v4;

import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final v1, v2, v3, v4;
  DetailPage(
      this.v1, this.v2, this.v3, this.v4); // (69) ใส่ DetailPage(this.v1...)

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var _v1, _v2, _v3, _v4; // (70) ใส่ var _v1,....

  @override
  void initState() {
    // TODO: implement initState
    super.initState(); // (71) สร้างฟังชัน initstate
    _v1 = widget.v1;
    _v2 = widget.v2;
    _v3 = widget.v3;
    _v4 = widget.v4; // (72) ใส่ _v1 = widget.v1; .....
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          // (74) wrap with padding ปรับ EdgeInset 20
          children: [
            Text(
              _v1,
              style: TextStyle(fontSize: 30),
            ), // (73)
            Text(
              _v2,
              style: TextStyle(fontSize: 25, color: Colors.grey),
            ),
            Image.network(_v3),
            Text(_v4)
          ],
        ),
      ),
    );
  }
}
