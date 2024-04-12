import 'package:eng_aya/model/OrganizationDeatailsModel.dart';

import 'package:eng_aya/views/widgets/OrganizationsListScreen.dart';
import 'package:eng_aya/views/widgets/SearchFormField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OrganizationsScreen extends StatelessWidget {
   OrganizationsScreen({super.key,});
  final List<OrganizationDetail> organizations = [
    // Add your organization details here
    OrganizationDetail(
      logoPath: 'assets/images/Misr.jpg',
      organizationName: 'Misr ElKher',
      category: 'Health Care',
      location: 'Beba',
      timeRange: '9:00 - 13:00',
      date: '22/11',
      description: 'Help Al Aman provide vital healthcare. Your donations transform lives, ensuring exceptional care for patients.',
    ),
    OrganizationDetail(
      logoPath: 'assets/images/Misr.jpg',
      organizationName: 'Misr ElKher',
      category: 'Health Care',
      location: 'Beba',
      timeRange: '9:00 - 13:00',
      date: '22/11',
      description: 'Help Al Aman provide vital healthcare. Your donations transform lives, ensuring exceptional care for patients.',
    ),
    OrganizationDetail(
      logoPath: 'assets/images/Misr.jpg',
      organizationName: 'Misr ElKher',
      category: 'Health Care',
      location: 'Beba',
      timeRange: '9:00 - 13:00',
      date: '22/11',
      description: 'Help Al Aman provide vital healthcare. Your donations transform lives, ensuring exceptional care for patients.',
    ),
    // Add as many organizations as you need
  ];
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Organizations',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SearchFormField(),
              SizedBox(height: 24,),
              OrganizationListView(organizations: organizations)
            ],
          ),
        ),
      ),
    );
  }
}
