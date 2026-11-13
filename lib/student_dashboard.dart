import 'package:flutter/material.dart';

class StudentDashboard extends StatelessWidget {
  const StudentDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Dashboard'),
        actions: [
          IconButton(
            onPressed: () => debugPrint('Logout clicked'),
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.blue.shade100,
                  child: ClipOval(
                    child: Image.asset(
                      'assets/picture.png',
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) =>
                          const Icon(Icons.person, size: 44),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shandii Luis B. Sevilla',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text('ID: 554106'),
                      Text('Course/Section: To be added'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Card(
              child: Column(
                children: const [
                  ListTile(
                    leading: Icon(Icons.email_outlined),
                    title: Text('Email'),
                    subtitle: Text('s.sevilla.554106@umindanao.edu.ph'),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone_outlined),
                    title: Text('Contact Number'),
                    subtitle: Text('09234423874'),
                  ),
                  ListTile(
                    leading: Icon(Icons.home_outlined),
                    title: Text('Address'),
                    subtitle: Text('home at the house'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text('Subjects', style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 8),
            const _SubjectCard(
              name: 'Computer Programming',
              instructor: 'Instructor: To be added',
              schedule: 'Monday, 8:00 AM - 10:00 AM',
            ),
            const _SubjectCard(
              name: 'Database Management',
              instructor: 'Instructor: To be added',
              schedule: 'Wednesday, 10:00 AM - 12:00 PM',
            ),
            const _SubjectCard(
              name: 'Web Development',
              instructor: 'Instructor: To be added',
              schedule: 'Friday, 1:00 PM - 3:00 PM',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint('Add Subject Clicked!'),
        tooltip: 'Add subject',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _SubjectCard extends StatelessWidget {
  const _SubjectCard({
    required this.name,
    required this.instructor,
    required this.schedule,
  });

  final String name;
  final String instructor;
  final String schedule;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.menu_book_outlined),
        title: Text(name),
        subtitle: Text('$instructor\n$schedule'),
        isThreeLine: true,
      ),
    );
  }
}
