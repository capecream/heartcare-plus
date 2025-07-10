import 'package:flutter/material.dart';

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
        '/treatment': (context) => const TreatmentHistoryPage(),
        '/appointment': (context) => const AppointmentPage(),
        '/medication': (context) => const MedicationPage(),
        '/bloodpressure': (context) => const BloodPressurePage(),
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
              routeName: '/treatment',
            ),
            const SizedBox(height: 16),

            // การนัดหมาย
            _buildMenuCard(
              context,
              icon: Icons.calendar_today,
              title: 'การนัดหมาย',
              subtitle: 'ดูและบันทึกการนัดหมายกับแพทย์',
              routeName: '/appointment',
            ),
            const SizedBox(height: 16),

            // การทานยา
            _buildMenuCard(
              context,
              icon: Icons.medication,
              title: 'การทานยา',
              subtitle: 'บันทึกประวัติการรับประทานยา',
              routeName: '/medication',
            ),
            const SizedBox(height: 16),

            // ความดันและหัวใจ
            _buildMenuCard(
              context,
              icon: Icons.monitor_heart,
              title: 'ความดันและหัวใจ',
              subtitle: 'บันทึกค่าความดันและอัตราการเต้นหัวใจ',
              routeName: '/bloodpressure',
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

// หน้าตัวอย่าง (หน้าจริงควรพัฒนาตามความต้องการ)
class TreatmentHistoryPage extends StatelessWidget {
  const TreatmentHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ประวัติการรักษา'),
      ),
      body: const Center(child: Text('หน้าประวัติการรักษา')),
    );
  }
}

class AppointmentPage extends StatelessWidget {
  const AppointmentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('การนัดหมาย'),
      ),
      body: const Center(child: Text('หน้าการนัดหมาย')),
    );
  }
}

class MedicationPage extends StatelessWidget {
  const MedicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('การทานยา'),
      ),
      body: const Center(child: Text('หน้าการทานยา')),
    );
  }
}

class BloodPressurePage extends StatelessWidget {
  const BloodPressurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ความดันและหัวใจ'),
      ),
      body: const Center(child: Text('หน้าความดันและหัวใจ')),
    );
  }
}
