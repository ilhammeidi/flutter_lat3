import 'package:flutter/material.dart';
import 'package:flutter_latihan3/widgets/medical/bottom_nav_bar.dart';
import 'package:flutter_latihan3/widgets/medical/doctor_list.dart';
import 'package:flutter_latihan3/widgets/medical/header_profile.dart';
import 'package:flutter_latihan3/widgets/medical/medical_banner.dart';
import 'package:flutter_latihan3/widgets/medical/medical_search.dart';
import 'package:flutter_latihan3/widgets/medical/medical_services.dart';

class Medical extends StatelessWidget {
  const Medical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: HeaderProfile(),
      ),
      bottomNavigationBar: const BottomNavBar(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(delegate: SliverChildListDelegate([
            const MedicalBanner(),
            const SizedBox(height: 24),
            const MedicalSearch(),
            const SizedBox(height: 24),
            const MedicalServices(),
            const SizedBox(height: 24),
          ])),
          const DoctorList()
        ],
      )
    );
  }
}