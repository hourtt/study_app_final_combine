// ignore_for_file: unused_import

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// class Reminderpage extends StatelessWidget {
//   const Reminderpage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Reminder',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const HomePage(),
//     );
//   }
// }

class ReminderPage extends StatefulWidget {
  const ReminderPage({Key? key}) : super(key: key);

  @override
  State<ReminderPage> createState() => _ReminderPageState();
}

class _ReminderPageState extends State<ReminderPage> {
  final _formKey = GlobalKey<FormState>();
  final _textController = TextEditingController();
  final _textFieldFocusNode = FocusNode();

  String? _selectedValue1;
  String? _selectedValue2;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _textController.dispose();
    _textFieldFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(FluentIcons.ios_arrow_ltr_24_regular),
          onPressed: () => Navigator.pushNamed(context, '/home'),
        ),
        title: const Text('Reminder'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                'Assignment',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  ListTile(
                    title: const Text('Linear Algebra'),
                    leading: Radio(
                      value: 'Linear Algebra',
                      groupValue: _selectedValue1,
                      onChanged: (value) {
                        setState(() {
                          _selectedValue1 = value as String?;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Web Programming 2'),
                    leading: Radio(
                      value: 'Web Programming 2',
                      groupValue: _selectedValue1,
                      onChanged: (value) {
                        setState(() {
                          _selectedValue1 = value as String?;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('C++'),
                    leading: Radio(
                      value: 'C++',
                      groupValue: _selectedValue1,
                      onChanged: (value) {
                        setState(() {
                          _selectedValue1 = value as String?;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'School Fees',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  ListTile(
                    title: const Text('Khmer'),
                    leading: Radio(
                      value: 'Khmer',
                      groupValue: _selectedValue2,
                      onChanged: (value) {
                        setState(() {
                          _selectedValue2 = value as String?;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('English'),
                    leading: Radio(
                      value: 'English',
                      groupValue: _selectedValue2,
                      onChanged: (value) {
                        setState(() {
                          _selectedValue2 = value as String?;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Chinese'),
                    leading: Radio(
                      value: 'Chinese',
                      groupValue: _selectedValue2,
                      onChanged: (value) {
                        setState(() {
                          _selectedValue2 = value as String?;
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Create your Task',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.add),
                  Expanded(
                    child: Form(
                      key: _formKey,
                      child: TextFormField(
                        controller: _textController,
                        focusNode: _textFieldFocusNode,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'TextField',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
