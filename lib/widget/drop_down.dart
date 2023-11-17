import 'package:dalmia_homescreen/util/data.dart';
import 'package:flutter/material.dart';

// DropDownMenu 

// class DropDownMenu extends StatelessWidget {
//   final String text;
//   DropDownMenu({super.key, required this.text});

//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

//   String selectedOption = 'select';

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Form(
//         key: _formKey,
//         child: Column(
//           children: [
//             DropdownButtonFormField<String>(
//               value: selectedOption,
//               // onChanged: (String newValue) {
//               //   setState(() {
//               //     selectedOption = newValue;
//               //   });
//               // },

//               items: <String>[
//                 'select',
//                 'Option 1',
//                 'Option 2',
//                 'Option 3',
//                 'Option 4'
//               ].map((String value) {
//                 return DropdownMenuItem<String>(
//                   value: value,
//                   child: Text(value),
//                 );
//               }).toList(),

//               decoration: InputDecoration(
//                 labelText: 'Select a $text',
//                 border: const OutlineInputBorder(),
//               ),
//               onChanged: (String? value) {},
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//-------------------------------------

// For data testing 

class DropDownMenu extends StatefulWidget {
  final String text;
  const DropDownMenu({super.key, required this.text});

  @override
  State<DropDownMenu> createState() => _DropDownMenu();
}

class _DropDownMenu extends State<DropDownMenu> {
  // final String text;
  int selectedDataId = 1001; // Default value

  @override
  Widget build(BuildContext context) {
    // var text;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Select a text'),
          const SizedBox(height: 2),
          DropdownButton(
            
            value: selectedDataId,
            items: dataList.map((item) {
              return DropdownMenuItem(
                value: item['dataId'],
                child: Text(item['titleData']),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedDataId = value as int;
                print(selectedDataId);
              });
            },
          ),
        ],
      ),
    );
  }
}
