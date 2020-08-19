import 'package:carousel_app_scaffold/ui/views/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'login_viewmodel.dart';

class LoginView extends StatelessWidget {
  final Function postSubmit;

  const LoginView({
    Key key,
    this.postSubmit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
      viewModelBuilder: () => LoginViewModel(
        postSubmit,
      ),
      builder: (context, model, child) => Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: getAppBar(),
        body: Container(
          child: Form(
            key: model.formKey,
            child: Column(
              children: [
                SizedBox(height: 48),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextFormField(
                    validator: model.validateNameInput,
                    controller: model.nameController,
                    decoration: InputDecoration(hintText: 'Name'),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: TextFormField(
                    validator: model.validateMailInput,
                    controller: model.mailController,
                    decoration: InputDecoration(hintText: 'E-Mail'),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    SizedBox(width: 16),
                    Checkbox(
                      onChanged: model.toggleTermsAndCondition,
                      value: model.acceptTermsAndConditions,
                    ),
                    Text('Ich stimme den AGB zu.')
                  ],
                ),
                SizedBox(height: 16),
                InkWell(
                  child: Container(
                    width: 200,
                    height: 40,
                    child: Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onTap: model.login,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
