import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

// class DateSelectorWidget extends StatefulWidget {
//   const DateSelectorWidget({super.key});

//   @override
//   State<DateSelectorWidget> createState() => _DateSelectorWidgetState();
// }

// class _DateSelectorWidgetState extends State<DateSelectorWidget> {
//   DateTime _selectedDate = DateTime.now();
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         SizedBox(
//           height: 100.0,
//           child: PageView.builder(
//             controller: PageController(
//               initialPage: DateTime.now().day - 1,
//             ),
//             itemBuilder: (context, index) {
//               final date = DateTime.now().subtract(Duration(days: DateTime.now().day - index - 1));
//               return GestureDetector(
//                 onTap: () => _showDatePicker(date),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       DateFormat('E').format(date),
//                       style: TextStyle(
//                         fontSize: 18.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Text(
//                       DateFormat('d').format(date),
//                       style: TextStyle(
//                         fontSize: 30.0,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//               );
//             },
//             itemCount: DateTime.now().day,
//             onPageChanged: (index) {
//               setState(() {
//                 _selectedDate = DateTime.now().subtract(Duration(days: DateTime.now().day - index - 1));
//               });
//             },
//           ),
//         ),
//         ElevatedButton(
//           onPressed: () => _showDateRangePicker(),
//           child: Text('Choose Date Range'),
//         ),
//       ],
//     );
//   }

//   void _showDatePicker(DateTime initialDate) async {
//     final newDate = await showDatePicker(
//       context: context,
//       initialDate: initialDate,
//       firstDate: DateTime.now().subtract(Duration(days: 365)),
//       lastDate: DateTime.now().add(Duration(days: 365)),
//     );
//     if (newDate != null) {
//       setState(() {
//         _selectedDate = newDate;
//       });
//     }
//   }

//   void _showDateRangePicker() {
//     // Implement your own date range picker here
//     print('Showing date range picker for $_selectedDate');

//   }
// }

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateSelectorWidget extends StatefulWidget {
  const DateSelectorWidget({Key? key}) : super(key: key);

  @override
  _DateSelectorWidgetState createState() => _DateSelectorWidgetState();
}

class _DateSelectorWidgetState extends State<DateSelectorWidget> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      height: 70,
      width: 100,
      child: Expanded(
        child: Column(
          children: [
            SizedBox(
              height: 60.0,
              child: PageView.builder(
                controller: PageController(
                  initialPage: DateTime.now().day - 1,
                ),
                itemBuilder: (context, index) {
                  final date = DateTime.now()
                      .subtract(Duration(days: DateTime.now().day - index - 1));
                  return GestureDetector(
                    onTap: () => _showDatePicker(date),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          DateFormat('E').format(date),
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          DateFormat('d').format(date),
                          style: const TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: DateTime.now().year,
                onPageChanged: (index) {
                  setState(
                    () {
                      _selectedDate = DateTime.now().subtract(
                          Duration(days: DateTime.now().day - index - 1));
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showDatePicker(DateTime initialDate) async {
    final newDate = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime.now().subtract(const Duration(days: 365)),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (newDate != null) {
      setState(() {
        _selectedDate = newDate;
      });
    }
  }
}
