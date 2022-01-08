import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nla_author_app/model/pastQuestionStateM.dart';
import 'package:nla_author_app/view/Pages/pastQuestionObjCourse.dart';
import 'package:nla_author_app/view/common/custormButton.dart';
import 'package:nla_author_app/view/common/custormTextField.dart';
import 'package:nla_author_app/view/common/custormsnackbar.dart';

class AddObj extends StatefulWidget {
  const AddObj({Key? key, this.course = "none"}) : super(key: key);
  final String course;

  @override
  _AddObjState createState() => _AddObjState(course);
}

class _AddObjState extends State<AddObj> {
  _AddObjState(this.course);
  final course;
  TextEditingController courseController = TextEditingController();
  TextEditingController questionController = TextEditingController();
  TextEditingController optionAController = TextEditingController();
  TextEditingController optionBController = TextEditingController();
  TextEditingController optionCController = TextEditingController();
  TextEditingController optionDController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool _isLoading = false;
  bool isNewCourse = false;

  @override
  void initState() {
    course != "none" ? courseController.text = course : isNewCourse = true;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          isNewCourse ? "Add new obj" : course,
          style: GoogleFonts.robotoSlab(fontSize: 23),
        ),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Form(
              autovalidateMode: AutovalidateMode.always,
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(height: 5.0),
                  CustOutLinedTextField(
                    controller: courseController,
                    hint: "Course",
                    isReadOnly: !isNewCourse,
                  ),
                  SizedBox(height: 20.0),
                  CustOutLinedTextField(
                    controller: questionController,
                    hint: "Question",
                    maxLine: 5,
                  ),
                  SizedBox(height: 20.0),
                  CustOutLinedTextField(
                    controller: optionAController,
                    hint: "Right Answer",
                    maxLine: 5,
                  ),
                  SizedBox(height: 20.0),
                  CustOutLinedTextField(
                    controller: optionBController,
                    hint: "Option 2",
                    maxLine: 5,
                  ),
                  SizedBox(height: 20.0),
                  CustOutLinedTextField(
                    controller: optionCController,
                    hint: "Option 3",
                    maxLine: 5,
                  ),
                  SizedBox(height: 20.0),
                  CustOutLinedTextField(
                    controller: optionDController,
                    hint: "Option 4",
                    maxLine: 5,
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  CustormButton(
                      isLoading: _isLoading,
                      func: () {
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            _isLoading = true;
                          });
                          PastQueController()
                              .addOnj(
                                  question: questionController.text,
                                  optiona: optionAController.text,
                                  optionb: optionBController.text,
                                  optionc: optionCController.text,
                                  optiond: optionDController.text,
                                  course: courseController.text)
                              .then((isSuccessful) {
                            if (isSuccessful) {
                              questionController.clear();
                              optionAController.clear();
                              optionBController.clear();
                              optionCController.clear();
                              optionDController.clear();
                            }
                            setState(() {
                              _isLoading = false;
                            });
                          });
                        } else {
                          custormSnackBar(
                              title: "Error",
                              message: "No fields be empty");
                        }
                      },
                      text: "SUBMIT"),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
