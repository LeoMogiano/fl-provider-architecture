import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_reads/providers/providers.dart';
import 'package:my_reads/widgets/widgets.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final bookProvider = context.watch<BookProvider>();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Book',
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(10, 20, 10, 30),
        child: SingleChildScrollView(
          child: Column(
            children: [

              bookProvider.selectedBook == null 
              ? Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: size.height / 3),
                child: const CircularProgressIndicator(),
              )
              : BookDetailWidget(
                book: bookProvider.selectedBook!,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
