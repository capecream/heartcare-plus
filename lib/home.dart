import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PatientProfilePage extends StatelessWidget {
  const PatientProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ข้อมูลตัวอย่าง
    final appointmentDate = DateTime(2025, 5, 15, 15, 30);
    final lastCheckupDate = DateTime(2025, 5, 10, 7, 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('ข้อมูลผู้ป่วย'),
        backgroundColor: Colors.red[700],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ส่วนหัว
            const Text(
              'สวัสดี นายสมชาย เบือนไทย',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // นัดหมายล่าสุด
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'นัดหมายล่าสุด HeartCarePlus',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'วันที่ ${DateFormat('dd MMMM พ.ศ. y', 'th').format(appointmentDate)} เวลา ${DateFormat('HH:mm').format(appointmentDate)}น.',
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            // ปฏิทิน
            const Text(
              'พฤษภาคม 2568',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Table(
              border: TableBorder.all(),
              children: [
                const TableRow(
                  children: [
                    TableCell(child: Center(child: Text('อา'))),
                    TableCell(child: Center(child: Text('จ'))),
                    TableCell(child: Center(child: Text('อ'))),
                    TableCell(child: Center(child: Text('พ'))),
                    TableCell(child: Center(child: Text('พฤ'))),
                    TableCell(child: Center(child: Text('ศ'))),
                    TableCell(child: Center(child: Text('ส'))),
                  ],
                ),
                TableRow(
                  children: List.generate(
                      7,
                      (i) => TableCell(
                            child: Center(child: Text('${i + 4}')),
                          )),
                ),
                TableRow(
                  children: List.generate(
                      7,
                      (i) => TableCell(
                            child: Center(child: Text('${i + 11}')),
                          )),
                ),
                TableRow(
                  children: List.generate(
                      7,
                      (i) => TableCell(
                            child: Center(child: Text('${i + 18}')),
                          )),
                ),
                TableRow(
                  children: List.generate(
                      7,
                      (i) => TableCell(
                            child: Center(child: Text('${i + 25}')),
                          )),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // ประวัติการรักษา
            const Text(
              'ประวัติการรักษา',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Card(
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildMedicalRecordItem('แพทย์ผู้รักษา',
                        '10 พฤษภาคม 2568, 7:30น. โรงพยาบาลนครพิงค์'),
                    const Divider(),
                    _buildMedicalRecordItem(
                        'อัตราการเต้นของหัวใจล่าสุด', '75 BPM'),
                    const Divider(),
                    _buildMedicalRecordItem(
                        'ค่าความดันเลือดล่าสุด', 'SYS 120 / DIA 80'),
                    const Divider(),
                    const Text(
                      'มอบให้สุขภาพแข็งแรงอยู่กับลูกหลานต่อไป',
                      style: TextStyle(fontSize: 16),
                    ),
                    const Divider(),
                    _buildMedicalRecordItem('BMI', 'ไม่มีข้อมูล'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMedicalRecordItem(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
