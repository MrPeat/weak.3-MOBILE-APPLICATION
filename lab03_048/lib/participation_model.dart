class Participation {
  final String activity;
  final String description;
  final String participantData;  
  final String status; // 'Approved', 'Pending',หรือ 'Rejected'

  Participation({
    required this.activity,
    required this.description,
    required this.participantData,
    required this.status,
  });
}
//ข้อมูลตัวอย่างกิจกรรม 5 รายการ
final List<Participation> mockParticipations = [
  Participation(
    activity: 'Leadership Camp 2025',
    description: 'ค่ายพัฒนาศักยภาพความเป็นผู้นำนิสิต',
    participantData: '15 มี.ค. 2025',
    status: 'Pending',
  ),
  Participation(
    activity: 'Al Workshop',
    description: 'อบรมการใช้ง่น Ai สำหรับการศึกษา',
    participantData: '20 มี.ค. 2025',
    status: 'Pending',
  ),
  Participation(
    activity: 'Volunteer Project',
    description: 'โครงการจิตอาสาพัฒนาชุมชน',
    participantData: '5 เม.ย. 2025',
    status: 'Rejected',
  ),
  Participation(
    activity: 'Startup Seminar',
    description: 'สัมมนาการสร้างธุรกิจสตาร์ทอัพ',
    participantData: '12 เม.ย. 2025',
    status: 'Approved',
  ),
  Participation(
    activity: 'Digital Skill Training',
    description: 'ฝึกอบรมทักษะดิจิทัลพื้นฐาน',
    participantData: '25 เม.ย. 2025',
    status: 'Pending',
  ),
];