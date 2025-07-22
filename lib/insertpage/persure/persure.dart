import 'package:flutter/material.dart';
import 'package:heartcare_plus/insertpage/persure/insert_persure.dart';

class Persure extends StatefulWidget {
  @override
  _Persure createState() => _Persure();
}

class _Persure extends State<Persure> {
  final List<Map<String, String>> historyList = [
    {
      'date': '02 พฤษภาคม 2568',
      'detail':
          'ใบส่งตัว เป็นไข้ ได้รับยาพาราเซตามอลจากโรงพยาบาลนครพิงค์ จ.เชียงใหม่'
    },
    {
      'date': '25 เมษายน 2568',
      'detail':
          'หมอนัดตรวจค่าความดันและอัตราการเต้นของหัวใจ ที่โรงพยาบาลนครพิงค์ จ.เชียงใหม่'
    },
    {
      'date': '18 เมษายน 2568',
      'detail':
          'หมอนัดตรวจค่าความดันและอัตราการเต้นของหัวใจ ที่โรงพยาบาลนครพิงค์ จ.เชียงใหม่'
    },
    {
      'date': '11 เมษายน 2568',
      'detail':
          'หมอนัดตรวจค่าความดันและอัตราการเต้นของหัวใจ ที่โรงพยาบาลนครพิงค์ จ.เชียงใหม่'
    },
  ];

  void _addNewEntry() {
    setState(() {
      historyList.insert(
          0, {'date': 'วันนี้', 'detail': 'ข้อมูลตัวอย่างที่เพิ่งเพิ่ม'});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        title: Text('ประวัติการรักษา', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.favorite, color: Colors.red),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: historyList.length,
          itemBuilder: (context, index) {
            final item = historyList[index];
            return Container(
              margin: EdgeInsets.only(bottom: 12),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xFFB9CCF5),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 4,
                    offset: Offset(2, 2),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['date'] ?? '',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 4),
                  Text(
                    item['detail'] ?? '',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            );
          },
        ),
      ),
      backgroundColor: Color(0xFFF5F5F9),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BloodPressureForm()),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.redAccent,
        tooltip: 'เพิ่มข้อมูลใหม่',
      ),
    );
  }
}
