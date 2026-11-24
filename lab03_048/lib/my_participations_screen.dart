
import 'package:flutter/material.dart';
import 'participation_model.dart'; // นำเข้าข้อมูลจำลอง

class MyParticipationsScreen extends StatelessWidget {
  const MyParticipationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Participations'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ส่วนที่ 1: Header Section
          _buildHeaderSection(),

          // ส่วนที่ 2: List Section
          _buildListSection(),
        ],
      ),
    );
  }
}

// ส่วนที่ 1: Header Section
Widget _buildHeaderSection() {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.all(20.0),
    color: Colors.blue.shade50,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'ชื่อผู้ใช้: รหัสนิสิต 6720210048',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'กิจกรรมที่ลงทะเบียนทั้งหมด: ${mockParticipations.length} รายการ',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.blueGrey,
          ),
        ),
      ],
    ),
  );
}

// ส่วนที่ 2: List Section
Widget _buildListSection() {
  return Expanded(
    child: ListView.builder(
      itemCount: mockParticipations.length,
      itemBuilder: (context, index) {
        final item = mockParticipations[index];

        Color iconColor = Colors.grey;
        IconData statusIcon = Icons.help;
        Color textColor = Colors.black;

        if (item.status == 'Approved') {
          iconColor = Colors.green;
          statusIcon = Icons.check_circle;
        } else if (item.status == 'Pending') {
          iconColor = Colors.orange;
          statusIcon = Icons.access_time_filled;
        } else if (item.status == 'Rejected') {
          iconColor = Colors.red;
          statusIcon = Icons.cancel;
          textColor = Colors.grey;
        }

        return Card(
          margin: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          child: ListTile(
            leading: Icon(
              statusIcon,
              color: iconColor,
              size: 40,
            ),
            title: Text(
              item.activity,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'วันที่เข้าร่วม: ${item.participantData}\n'
              'สถานะ: ${item.status}',
            ),
            isThreeLine: true,
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    '${item.activity}\n'
                    'รายละเอียด: ${item.description}',
                  ),
                  duration: const Duration(seconds: 3),
                ),
              );
            },
          ),
        );
      },
    ),
  );
}
