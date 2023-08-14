import 'package:flutter/material.dart';
import 'package:phone_reader/features/home/view/view.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  '/home': (_) => const HomeView(),
  '/post': (_) => const HomeView(),
};
