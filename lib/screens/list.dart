import 'package:flutter/material.dart';
import '../widgets/customlist.dart';
import 'BookAppointment.dart';
class ListUI extends StatefulWidget {
  const ListUI({super.key});

  @override
  State<ListUI> createState() => _ListUIState();
}

class _ListUIState extends State<ListUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Appointments")),
      body: ListView(
        children: const [
          AppointmentCard(
            doctorName: "Dr. Shabi H.",
            specialization: "Orthopedic Surgeon",
            date: "Tues Jan 3, 2023",
            time: "1:30 - 2:30 pm",
            imageUrl: "https://via.placeholder.com/150", // Use actual image URL
          ),
          AppointmentCard(
            doctorName: "Dr. Afshan",
            specialization: "Dental Specialist",
            date: "Sat Jan 7, 2023",
            time: "11:30 - 12:30 am",
            imageUrl: "https://via.placeholder.com/150",
          ),

        ],
      ),
    floatingActionButton: FloatingActionButton(
    onPressed: () {
      Navigator.push(context,
        MaterialPageRoute
          (builder:(context)
          => Bookappointment(),
      ),
      );
    // handle add appointment action
  },
    backgroundColor: Colors.blue,
    child: const Icon(Icons.add),
    ),
    );
  }

}
