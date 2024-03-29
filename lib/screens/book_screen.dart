import 'package:am2_library_project/widgets/detail_table_widget.dart';
import 'package:am2_library_project/widgets/main_app_bar.dart';
import 'package:am2_library_project/widgets/gradient_background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import '../model/book.dart';

class BookScreen extends StatefulWidget {
  final Book book;
  const BookScreen({Key? key, required this.book}) : super(key: key);

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {

  @override
  Widget build(BuildContext context) {
    final book = widget.book;

    return GradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MainAppBar(title: book.title),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 40.0),
          child: ListView(
            children: [
              SvgPicture.asset("images/book.svg"),
              const SizedBox(height: 30.0),
              Text(
                book.title,
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(height: 20.0),
              Text(
                "Descripción",
                style: Theme.of(context).textTheme.headline2,
              ),
              Text(
                book.description,
                style: Theme.of(context).textTheme.bodyText1,
              ),
              const SizedBox(height: 20.0),
              DetailTableWidget(
                id: book.id, 
                author: book.author, 
                category: book.category, 
                createAt: book.createAt,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
