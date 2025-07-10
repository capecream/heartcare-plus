import 'package:flutter/material.dart';
import 'login.dart';
import 'registor.dart';

void main() => runApp(HeartCarePlusApp());

class HeartCarePlusApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HeartCare Plus',
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // โลโก้หัวใจ
                Icon(Icons.favorite, color: Colors.red, size: 60),

                SizedBox(height: 16),

                // ชื่อแอป
                Text(
                  'HeartCare\nPlus',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    height: 1.2,
                  ),
                ),

                SizedBox(height: 16),

                // ภาพหมอ (แทนด้วย Icon หรือภาพ Asset)
                Image.asset(
                  'assets/Doctor.png', // เปลี่ยน path ตามรูปที่คุณมี
                  height: 160,
                ),

                SizedBox(height: 24),

                Text(
                  'เข้าสู่ระบบ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8),
                Text(
                  'กรุณาลงทะเบียนใหม่หรือล็อกอินเข้าสู่ระบบก่อน',
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),

                SizedBox(height: 24),

                // ปุ่มลงทะเบียน
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Registorpage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    minimumSize: Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  child: Text('ลงทะเบียน', style: TextStyle(fontSize: 16)),
                ),

                SizedBox(height: 12),

                Text('หรือ', style: TextStyle(color: Colors.grey[600])),

                SizedBox(height: 12),

                // ปุ่มเข้าสู่ระบบ
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Loginpage()),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(double.infinity, 48),
                    side: BorderSide(color: Colors.grey),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  child: Text('เข้าสู่ระบบ',
                      style: TextStyle(fontSize: 16, color: Colors.blueGrey)),
                ),

                SizedBox(height: 24),

                GestureDetector(
                  onTap: () {
                    // นำทางไปหน้าติดต่อเรา
                  },
                  child: Text(
                    'หากพบปัญหาในการเข้าสู่ระบบโปรด ติดต่อเรา',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blueAccent,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
