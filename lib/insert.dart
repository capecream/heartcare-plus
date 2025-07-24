import 'package:flutter/material.dart';
import 'package:heartcare_plus/home.dart';
import 'package:heartcare_plus/insertpage/date/date_his.dart';
import 'package:heartcare_plus/insertpage/history/treatment_history_page.dart';
import 'package:heartcare_plus/insertpage/medicine/medicine.dart';
import 'package:heartcare_plus/insertpage/persure/persure.dart';

void main() {
  runApp(const HealthApp());
}

class HealthApp extends StatelessWidget {
  const HealthApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HeartCare Plus',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HealthRecordPage(),
      routes: {
        '/date': (context) => const DateHistory(),
        '/history': (context) => const TreatmentHistoryPage(),
        '/medicine': (context) => const MedicineScreen(),
        '/pressure': (context) => const Persure(),
      },
    );
  }
}

class HealthRecordPage extends StatelessWidget {
  const HealthRecordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomePage()),
            );
          },
        ),
        title: const Text('บันทึกข้อมูลสุขภาพ'),
        backgroundColor: Colors.red[700],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // ประวัติการรักษา
            _buildMenuCard(
              context,
              icon: Icons.medical_services,
              title: 'ประวัติการรักษา',
              subtitle: 'บันทึกและดูประวัติการรักษาทั้งหมด',
              routeName: '/history',
            ),
            const SizedBox(height: 16),

            // การนัดหมาย
            _buildMenuCard(
              context,
              icon: Icons.calendar_today,
              title: 'การนัดหมาย',
              subtitle: 'ดูและบันทึกการนัดหมายกับแพทย์',
              routeName: '/date',
            ),
            const SizedBox(height: 16),

            // การทานยา
            _buildMenuCard(
              context,
              icon: Icons.medication,
              title: 'การทานยา',
              subtitle: 'บันทึกประวัติการรับประทานยา',
              routeName: '/medicine',
            ),
            const SizedBox(height: 16),

            // ความดันและหัวใจ
            _buildMenuCard(
              context,
              icon: Icons.monitor_heart,
              title: 'ความดันและหัวใจ',
              subtitle: 'บันทึกค่าความดันและอัตราการเต้นหัวใจ',
              routeName: '/pressure',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required String routeName,
  }) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  color: Colors.red[700],
                  size: 30,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: Colors.grey[400],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
