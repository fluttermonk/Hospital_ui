import 'package:flutter/material.dart';

import '../widgets/CustomAppointment.dart';
class AppointmentDetailsPage extends StatefulWidget {
  const AppointmentDetailsPage({super.key});

  @override
  State<AppointmentDetailsPage> createState() => _AppointmentDetailsPageState();
}

class _AppointmentDetailsPageState extends State<AppointmentDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppointmentDetails(
        doctorName: 'Dr. Afshan',
        specialization: 'Dentist',
        date: 'April 20, 2025',
        time: '11:30 - 12:30',
        imageUrl: 'https://via.placeholder.com/150',
      ),
    );
  }
}
