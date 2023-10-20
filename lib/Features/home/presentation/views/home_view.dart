import 'package:calculator_app/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  const HomeView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: HomeViewBody(),
      ),
    );
  }
}
