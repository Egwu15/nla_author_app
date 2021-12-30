import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nla_author_app/view/common/custormButton.dart';
import 'package:nla_author_app/view/common/custormTextField.dart';

class AddObj extends StatefulWidget {
  const AddObj({Key? key}) : super(key: key);

  @override
  _AddObjState createState() => _AddObjState();
}

class _AddObjState extends State<AddObj> {
  TextEditingController questionController = TextEditingController();
  @override
    final bool _isLoading = false;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Obj",
          style: GoogleFonts.robotoSlab(fontSize: 30),
        ),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                SizedBox(height: 5.0),
                CustOutLinedTextField(
                  controller: questionController,
                  hint: "Course",
                ),
                SizedBox(height: 20.0),
                CustOutLinedTextField(
                  controller: questionController,
                  hint: "Question",
                  maxLine: 5,
                ),
                SizedBox(height: 20.0),
                CustOutLinedTextField(
                  controller: questionController,
                  hint: "Right Answer",
                  maxLine: 5,
                ),
                SizedBox(height: 20.0),
                CustOutLinedTextField(
                  controller: questionController,
                  hint: "Option 2",
                  maxLine: 5,
                ),
                SizedBox(height: 20.0),
                CustOutLinedTextField(
                  controller: questionController,
                  hint: "Option 3",
                  maxLine: 5,
                ),
                SizedBox(height: 20.0),
                CustOutLinedTextField(
                  controller: questionController,
                  hint: "Option 4",
                  maxLine: 5,
                ),

                SizedBox(height: 30.0,),
                CustormButton(isLoading: _isLoading, func: (){}, text: "SUBMIT"),
                SizedBox(height: 10.0,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
