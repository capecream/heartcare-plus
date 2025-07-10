import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('การตั้งค่าต่างๆ'),
        backgroundColor: Colors.red[700],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // ส่วนข้อมูลส่วนตัว
          const Text(
            'ข้อมูลส่วนตัว',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),

          Card(
            elevation: 3,
            child: Column(
              children: [
                // การแจ้งเตือน
                ListTile(
                  leading: const Icon(Icons.notifications),
                  title: const Text('การแจ้งเตือน'),
                  trailing: Switch(
                    value: true,
                    onChanged: (value) {
                      // Handle notification toggle
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // ส่วนล่าง
          Card(
            elevation: 3,
            child: Column(
              children: [
                // ปุ่มออกจากระบบ
                ListTile(
                  leading: const Icon(Icons.exit_to_app, color: Colors.red),
                  title: const Text(
                    'ออกจากระบบ',
                    style: TextStyle(color: Colors.red),
                  ),
                  onTap: () {
                    _showLogoutConfirmation(context);
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // ติดต่อเรา
          const Center(
            child: Text(
              'หากพบปัญหาโปรดติดต่อเรา',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showLogoutConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('ออกจากระบบ'),
        content: const Text('คุณแน่ใจว่าต้องการออกจากระบบหรือไม่?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('ยกเลิก'),
          ),
          TextButton(
            onPressed: () {
              // Handle logout logic
              Navigator.pop(context);
              Navigator.pop(context); // กลับไปหน้าหลัก
            },
            child: const Text(
              'ออกจากระบบ',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
