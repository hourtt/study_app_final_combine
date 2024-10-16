import 'package:app/pages/components/dropdown.dart';
import 'package:app/pages/components/myTextField.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class CreateGroupPage extends StatefulWidget {
  CreateGroupPage({super.key});

  @override
  State<CreateGroupPage> createState() => _CreategroupPageState();
}

class _CreategroupPageState extends State<CreateGroupPage> {
  final TextEditingController GroupName = TextEditingController();

  final TextEditingController GroupID = TextEditingController();

  final TextEditingController Major = TextEditingController();

  final TextEditingController Rule = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color(0xFFDAE7FA),
        appBar: AppBar(
          backgroundColor: const Color(0xFF6D90FF),
          title: const Text(
            'Create Group',
            style: TextStyle(
              fontFamily: 'Ubuntu',
              color: Colors.white,
              fontSize: 30,
              letterSpacing: 0.0,
              fontWeight: FontWeight.normal,
            ),
          ),
          leading: IconButton(
            icon: Icon(FluentIcons.ios_arrow_ltr_24_regular),
            onPressed: () => Navigator.pushNamed(context, '/home'),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),

              const Icon(
                Icons.person,
                color: Color.fromARGB(255, 70, 108, 235),
                size: 130,
              ),

              const SizedBox(
                height: 20,
              ),

              //* GroupName
              MyTextfield(
                controller: GroupName,
                hintText: "GroupName",
                obscureText: false,
              ),
              const SizedBox(
                height: 15,
              ),
              //* GroupID
              MyTextfield(
                controller: GroupID,
                hintText: "GroupID",
                obscureText: false,
              ),

              const SizedBox(
                height: 15,
              ),

              MajorDropdown(),
              const SizedBox(
                height: 15,
              ),

              //* Rule
              MyTextfield(
                controller: Rule,
                hintText: "Class Rule",
                obscureText: false,
              ),
              //* CREATE GROUP BUTTON
              Container(
                padding: const EdgeInsets.all(15),
                margin:
                    const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/homepage');
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 70, 108, 235),
                    // padding: const EdgeInsets.only(
                    //     left: 0, right: 0, top: 20, bottom: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Create Group",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
