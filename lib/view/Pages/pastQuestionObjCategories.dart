import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nla_author_app/model/pastQuestionStateM.dart';
import 'package:nla_author_app/services/themeService.dart';
import 'package:nla_author_app/view/Pages/addObjPage.dart';
import 'package:nla_author_app/view/common/custormLoadingIndicator.dart';

class PastQuestionObj extends StatefulWidget {
  const PastQuestionObj({Key? key}) : super(key: key);

  @override
  _PastQuestionObjState createState() => _PastQuestionObjState();
}

class _PastQuestionObjState extends State<PastQuestionObj> {
  bool _isLoading = false;
  List _categories = [];
  @override
  void initState() {
    setState(() {
      _isLoading = true;
    });
    PastQueController().getCategories().then((category) {
      setState(() {
        _isLoading = false;
        _categories = category;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          ThemeServce().switchTheme();
        }),
        child: Icon(Icons.add, size: 30),
      ),
      appBar: AppBar(
        title: Text(
          "Categories",
          style: GoogleFonts.robotoSlab(fontSize: 30),
        ),
        elevation: 0.0,
      ),
      body: _isLoading
          ? Center(
              child: CustLoadingIndicator(
              size: 30,
            ))
          : SafeArea(
              child: ListView.builder(
                  padding: EdgeInsets.only(
                    left: 20,
                    right: 20,
                    top: 10,
                  ),
                  itemCount: _categories.length,
                  itemBuilder: (context, i) {
                    // return
                    return Card(
                      margin: EdgeInsets.symmetric(vertical: 5.0),
                      child: InkWell(
                        onTap: () => Get.to(() => AddObj()),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              Icon(Icons.book_rounded),
                              SizedBox(width: 10),
                              Text("${_categories[i]}",
                                  style: GoogleFonts.roboto(fontSize: 20.0))
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
    );
  }
}
