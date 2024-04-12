import 'package:eng_aya/views/widgets/FormDataRow.dart';
import 'package:flutter/material.dart';

class CardFormData extends StatelessWidget {
  const CardFormData({
    super.key, required this.city, required this.time, required this.date,
  });
  final String city;
  final String time;
  final String date;
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        FormDataRow(
          title: city,
          logo: 'assets/images/flag.svg',
        ),
        const SizedBox(
          height: 5,
        ),
        FormDataRow(
          title: time,
          logo: 'assets/images/Watch.svg',
        ),
        const SizedBox(
          height: 5,
        ),
        FormDataRow(
          title: date,
          logo: 'assets/images/Calender.svg',
        ),
      ],
    );
  }
}
