import 'package:class_login_app/components/custom_text_form_field.dart';
import 'package:class_login_app/size.dart';
import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>(); // 1. 글로벌 Key
  CustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      // 2. 글로벌 key를 Form 태그에 연결하여 해당 key로 Form의 상태를
      // 관리 할 수 있다.
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField('Email'),
          SizedBox(height: medium_gap),
          CustomTextFormField('Password'),
          SizedBox(height: large_gap),
          TextButton(
            onPressed: () {
              // 유효성 검사
              if (_formKey.currentState!.validate()) {
                // 오류가 없다면 화면 이동 처리 예정
                Navigator.pushNamed(context, "/home");
              }
            },
            child: Text('Login'),
          )
        ],
      ),
    );
  }
}
