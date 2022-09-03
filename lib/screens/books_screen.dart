import 'package:bookshop/widgets/all_books.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:bookshop/widgets/book_list.dart';

import '../utils/app_info.dart';
import '../utils/app_layout.dart';
import '../utils/app_styles.dart';
import '../widgets/app_most_rated_widget.dart';
import '../widgets/app_search_icon.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
        children: [
            Gap(AppLayout.getHeight(40)),
            Text("We Best The \n Best In You... ", style: Styles.headLineStyle3.copyWith(
            fontSize: 35,
          )),
          Gap(AppLayout.getHeight(30)),
          const SearchIcon(),
          Gap(AppLayout.getHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Latest", style: Styles.headLineStyle.copyWith(
                color: Colors.black, fontSize: 18
              ),),
              Text("View all", style: Styles.headLineStyle4),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 15),
            child: Row(
                children: latestList.map((singleBook) => Books(book: singleBook)).toList()
            ),
          ),
          //romance
          Gap(AppLayout.getHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Romance Books", style: Styles.headLineStyle.copyWith(
                  color: Colors.black, fontSize: 18
              ),),
              Text("View all", style: Styles.headLineStyle4),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 30),
            child: Row(
                children: bookList.map((singleBook) => AllBooks(book: singleBook)).toList()
            ),
          ),
          //psycho
          Gap(AppLayout.getHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Psychological Books", style: Styles.headLineStyle.copyWith(
                  color: Colors.black, fontSize: 18
              ),),
              Text("View all", style: Styles.headLineStyle4),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 30),
            child: Row(
                children: bookList.map((singleBook) => AllBooks(book: singleBook)).toList()
            ),
          ),
          //mind
          Gap(AppLayout.getHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("mind Books", style: Styles.headLineStyle.copyWith(
                  color: Colors.black, fontSize: 18
              ),),
              Text("View all", style: Styles.headLineStyle4),
            ],
          ),
          Gap(AppLayout.getHeight(25)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 30),
            child: Row(
                children: bookList.map((singleBook) => AllBooks(book: singleBook)).toList()
            ),
          ),
          //most rated
          Gap(AppLayout.getHeight(30)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Most Rated Books", style: Styles.headLineStyle3.copyWith(
                  fontWeight: FontWeight.bold, fontSize: 18
              )),

            ],
          ),
          Gap(AppLayout.getHeight(30)),
          Column(
            children: [
              Row(
                children: [
                  const MostRatedBook(title: "Mind Walker", author: "Van Jay",category: "mind", price: "\$700"),
                  Gap(AppLayout.getHeight(5)),
                  const MostRatedBook(title: "Mind Walker", author: "Van Jay", category: "psychology", price: "\$700"),
                ],
              ),
              Gap(AppLayout.getHeight(10)),
              Row(
                children: [
                  const MostRatedBook(title: "Mind Walker", author: "Van Jay",category: "Thinking", price: "\$700"),
                  Gap(AppLayout.getHeight(5)),
                  const MostRatedBook(title: "Mind Walker", author: "Van Jay",category: "Romance",price: "\$700"),
                ],
              ),

            ],
          )
        ],
      ),
    );
  }
}
