import 'package:flutter/material.dart';
import 'package:my_reads/models/models.dart';
import 'package:my_reads/services/services.dart';


class BookProvider extends ChangeNotifier {

  final BookService _bookService = BookService();
  List<Book> _books = [];
  Book? _selectedBook;
  bool _isLoading = false;

  List<Book> get books => _books;
  Book? get selectedBook => _selectedBook;
  bool get isLoading => _isLoading;

   BookProvider() {
    fetchBooks();
  }

  Future<void> fetchBooks() async {
    _isLoading = true;
    notifyListeners();
    try {
      _books = await _bookService.getBooks();
    } catch (e) {
      _books = [];
      print(e);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> selectBook(String id) async {
    _isLoading = true;
    notifyListeners();
    try {
      _selectedBook = await _bookService.getBookById(id);
    } catch (e) {
      _selectedBook = null;
      print(e);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> searchBooks(String query) async {
    _isLoading = true;
    notifyListeners();
    try {
      _books = await _bookService.searchBooks(query);
    } catch (e) {
      _books = [];
      print(e);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
