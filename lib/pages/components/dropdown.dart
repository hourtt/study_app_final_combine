import 'package:flutter/material.dart';

class MajorDropdown extends StatefulWidget {
  @override
  _MajorDropdownState createState() => _MajorDropdownState();
}

class _MajorDropdownState extends State<MajorDropdown> {
  String? selectedMajor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28.0),
      child: DropdownButtonFormField<String>(
        value: selectedMajor,
        onChanged: (String? newValue) {
          setState(() {
            selectedMajor = newValue;
          });
        },
        items: const [
          DropdownMenuItem(value: '0', child: Text('Computer Science')),
          DropdownMenuItem(value: '1', child: Text('Chinese')),
          DropdownMenuItem(value: '2', child: Text('English')),
          DropdownMenuItem(value: '3', child: Text('Civil Engineering')),
          DropdownMenuItem(value: '4', child: Text('Korean')),
          DropdownMenuItem(value: '5', child: Text('Nursing & Midwifery')),
          DropdownMenuItem(value: '6', child: Text('Business & Finance')),
          DropdownMenuItem(value: '7', child: Text('Theology')),
        ],
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13.0),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 109, 162, 227),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13.0),
            borderSide:
                const BorderSide(color: Color.fromARGB(255, 5, 99, 176)),
          ),
          fillColor: const Color.fromARGB(255, 238, 245, 255),
          filled: true,
          hintText: "Major",
        ),
        icon: Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Theme.of(context).colorScheme.onSurfaceVariant,
        ),
        dropdownColor: Theme.of(context).colorScheme.surface,
      ),
    );
  }
}