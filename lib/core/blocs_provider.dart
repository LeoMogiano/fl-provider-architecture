import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:my_reads/core/core.dart';
import 'package:my_reads/providers/book_provider.dart';

class CustomProvider extends StatelessWidget {
  const CustomProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BookProvider()),
      ],
      child: const MainApp(),
    );
  }
}