import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'package:my_reads/models/models.dart';
import 'package:my_reads/providers/providers.dart';
import 'package:my_reads/screens/screens.dart';
import 'package:my_reads/widgets/widgets.dart';

class HomeBookScreen extends StatelessWidget {
  const HomeBookScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;
    final bookProvider = context.watch<BookProvider>();
    

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MyReads',
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(10, 16, 10, 0),
        child:   SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              SearchField(
               onChanged: (value) {
                  if(value.isEmpty) {
                   return bookProvider.fetchBooks();
                  }
                  bookProvider.searchBooks(value);      
                },
              ),

              const SizedBox(height: 20),

              const Text(
                'Currently Reading',
                style: TextStyle(
                  fontSize: 22,
                  letterSpacing: -0.3,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Divider(
                color: Colors.grey,
                height: 5,
                thickness: 0.5,
              ),

              const SizedBox(height: 20),

              bookProvider.isLoading 
              ? Container(
                alignment: Alignment.center,
                margin:  EdgeInsets.only(top: size.height / 4),
                child: const CircularProgressIndicator(),
              )
              : bookProvider.books.isEmpty
                ? Container(
                  margin:  EdgeInsets.only(top: size.height / 4),
                  alignment: Alignment.center,
                  child: const Column(
                    children: [
                      Icon(
                        Icons.book,
                        size: 50,
                        color: Colors.grey,
                      ),
                      Text('No books found'),
                    ],
                  ),
                )
                : BookGridView(
                  books: bookProvider.books,
                  onTapBook: (book) {
                    bookProvider.selectBook(book.id ?? '');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailScreen(),
                      ),
                    );
                  },
                ),
                
            ],
          ),
        ),
      ),
    );
  }
    
}

class BookGridView extends StatelessWidget {

  const BookGridView({
    super.key,
    required this.books,
    required this.onTapBook
  });

  final List<Book> books;
  final Function(Book) onTapBook; 

  @override
  Widget build(BuildContext context) {

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.65,
      ),
      itemCount: books.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => onTapBook(books[index]),
          child: BookWidget(
            book: books[index],
          ),
        );
      },
    );
  }
}
