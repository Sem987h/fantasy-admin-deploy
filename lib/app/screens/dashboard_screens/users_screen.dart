import 'package:fantasy_admin_internal/app/theme/theme_constans.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  static const String route = '/users';

  @override
  State<UsersScreen> createState() => UsersScreenState();
}

class UsersScreenState extends State<UsersScreen> {
  bool onHover = false;

  // Sample user data
  List<Map<String, String>> userData = [
    {
      'SNo': '1',
      'Name': 'John Doe',
      'Email': 'mailto:john.doe@example.com',
      'Mobile': '123456789',
      'Address': '123 Main St',
      'Pin Code': '12345',
    },
    {
      'SNo': '2',
      'Name': 'John Doe',
      'Email': 'mailto:john.doe@example.com',
      'Mobile': '123456789',
      'Address': '123 Main St',
      'Pin Code': '12345',
    },
    {
      'SNo': '3',
      'Name': 'John Doe',
      'Email': 'mailto:john.doe@example.com',
      'Mobile': '123456789',
      'Address': '123 Main St',
      'Pin Code': '12345',
    },
    {
      'SNo': '4',
      'Name': 'John Doe',
      'Email': 'mailto:john.doe@example.com',
      'Mobile': '123456789',
      'Address': '123 Main St',
      'Pin Code': '12345',
    },
    // Add more user data as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Users',
                  style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                SizedBox(
                  width: 250,
                  // Add Expanded widget here
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search Data",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Table(
              columnWidths: const {
                2: FlexColumnWidth(3),
                4: FlexColumnWidth(2),
              },
              border: TableBorder.all(
                borderRadius: BorderRadius.circular(10),
                width: 0.20,
              ),
              children: [
                TableRow(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(7),
                  ),
                  children: const [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: Text(
                        'SNo',
                        style: TextStyle(
                            color: AppColors.fontBlack,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: Text(
                        'Name',
                        style: TextStyle(
                            color: AppColors.fontBlack,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: Text(
                        'Email',
                        style: TextStyle(
                            color: AppColors.fontBlack,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: Text(
                        'Mobile',
                        style: TextStyle(
                            color: AppColors.fontBlack,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: Text(
                        'Address',
                        style: TextStyle(
                            color: AppColors.fontBlack,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: Text(
                        'Pin Code',
                        style: TextStyle(
                            color: AppColors.fontBlack,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                      child: Text(
                        'Action',
                        style: TextStyle(
                            color: AppColors.fontBlack,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                // Use a loop to create TableRow for each user
                for (int index = 0; index < userData.length; index++)
                  TableRow(
                    decoration: BoxDecoration(
                      color: index % 2 == 0 ? Colors.white54 : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 35),
                        child: Text(
                          userData[index]['SNo'] ?? '',
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 35),
                        child: Text(
                          userData[index]['Name'] ?? '',
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 35),
                        child: Text(
                          userData[index]['Email'] ?? '',
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 35),
                        child: Text(
                          userData[index]['Mobile'] ?? '',
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 35),
                        child: Text(
                          userData[index]['Address'] ?? '',
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 35),
                        child: Text(
                          userData[index]['Pin Code'] ?? '',
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 30, vertical: 25),
                        child: InkWell(
                          onHover: (value) {
                            setState(() {
                              onHover = true;
                            });
                          },
                          onTap: () {},
                          child: Ink(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: onHover ? Colors.blue : Colors.black,
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.remove_red_eye_outlined,
                                size: 20.0,
                                color: onHover ? Colors.blue : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
