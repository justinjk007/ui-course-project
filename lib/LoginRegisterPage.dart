import 'package:flutter/material.dart';

import 'home_page.dart';

class LoginRegisterPage extends StatefulWidget {
  LoginRegisterPage({
    this.onSignedIn,
  });

  final VoidCallback onSignedIn;

  State<StatefulWidget> createState() {
    return _LoginRegisterState();
  }
}

enum FormType { login, register }

class _LoginRegisterState extends State<LoginRegisterPage> {
  final formKey = new GlobalKey<FormState>();
  FormType _formType = FormType.login;
  String _email = "";
  String _password = "";
  String _verifyPassword = "";

  //methods
  bool validateAndSave() {
    final form = formKey.currentState;
    if (_formType == FormType.login) {
      if (_verifyPassword != _password) {
        // set up the button
        Widget okButton = FlatButton(
          child: Text("OK"),
          onPressed: () {
            Navigator.pop(context);
          },
        );

        // set up the AlertDialog
        AlertDialog alert = AlertDialog(
          title: Text("Verify Password"),
          content: Text("Passwords Do Not Match."),
          actions: [
            okButton,
          ],
        );
        // show the dialog
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return alert;
          },
        );
      }
    }

    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }

  void validateAndSubmit() async {
    if (validateAndSave()) {
      Navigator.pushReplacement(
                  context,
                  new MaterialPageRoute(
                    settings: RouteSettings(isInitialRoute: true),
                    builder: (context) => new HomePage(),
                  ),
                );
    }
  }

  //transition to register page
  void moveToRegister() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.register;
    });
  }

//transition to login page
  void moveToLogin() {
    formKey.currentState.reset();
    setState(() {
      _formType = FormType.login;
    });
  }

  //design
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: new AppBar(
        title: Text('Byke'),
      ),
      body: new Container(
        margin: EdgeInsets.all(15.0),
        child: new Form(
          key: formKey,
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: createInputs() + createButtons(),
          ),
        ),
      ),
    );
  }

//creats a vertical view
  List<Widget> createInputs() {
    if (_formType == FormType.login) {
      return [
        new TextFormField(
          maxLines: 1,
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          decoration: new InputDecoration(
              hintText: 'Email',
              icon: new Icon(Icons.mail, color: Colors.grey)),
          validator: (value) {
            return value.isEmpty ? 'Email is Required.' : null;
          },
          onSaved: (value) {
            return _email = value.trim();
          },
        ),
        new TextFormField(
          maxLines: 1,
          autofocus: false,
          decoration: new InputDecoration(
              hintText: 'Password',
              icon: new Icon(Icons.lock, color: Colors.grey)),
          obscureText: true,
          validator: (passvalue) {
            return passvalue.isEmpty ? 'Password is Required' : null;
          },
          onSaved: (passvalue) {
            return _password = passvalue.trim();
          },
        ),
        new TextFormField(
          maxLines: 1,
          autofocus: false,
          decoration: new InputDecoration(
              hintText: 'Verify Password',
              icon: new Icon(Icons.lock, color: Colors.grey)),
          obscureText: true,
          validator: (passvalue) {
            return passvalue.isEmpty ? 'Password is Required' : null;
          },
          onSaved: (passvalue) {
            return _verifyPassword = passvalue.trim();
          },
        ),
      ];
    } else {
      return [
        new TextFormField(
          maxLines: 1,
          keyboardType: TextInputType.text,
          autofocus: false,
          decoration: new InputDecoration(
              hintText: 'User Name',
              icon: new Icon(Icons.account_circle, color: Colors.grey)),
          validator: (value) {
            return value.isEmpty ? 'User Name is Required.' : null;
          },
          onSaved: (value) {
            return _email = value.trim();
          },
        ),
        new TextFormField(
          maxLines: 1,
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          decoration: new InputDecoration(
              hintText: 'Email',
              icon: new Icon(Icons.mail, color: Colors.grey)),
          validator: (value) {
            return value.isEmpty ? 'Email is Required.' : null;
          },
          onSaved: (value) {
            return _email = value.trim();
          },
        ),
        new TextFormField(
          maxLines: 1,
          autofocus: false,
          decoration: new InputDecoration(
              hintText: 'Password',
              icon: new Icon(Icons.lock, color: Colors.grey)),
          obscureText: true,
          validator: (passvalue) {
            return passvalue.isEmpty ? 'Password is Required' : null;
          },
          onSaved: (passvalue) {
            return _password = passvalue.trim();
          },
        ),
      ];
    }
  }

  List<Widget> createButtons() {
    if (_formType == FormType.login) {
      return [
        new RaisedButton(
          elevation: 5.0,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)),
          child: new Text("Login", style: new TextStyle(fontSize: 20.0)),
          textColor: Colors.white,
          color: Colors.green,
          onPressed: validateAndSubmit,
        ),
        new FlatButton(
          child: new Text("Create New Account",
              style: new TextStyle(fontSize: 18.0)),
          textColor: Colors.deepOrange,
          onPressed: moveToRegister,
        ),
      ];
    } else {
      return [
        new RaisedButton(
          elevation: 5.0,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)),
          child:
              new Text("Create Account", style: new TextStyle(fontSize: 18.0)),
          textColor: Colors.white,
          color: Colors.green,
          onPressed: validateAndSubmit,
        ),
        new RaisedButton(
          elevation: 5.0,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(30.0)),
          child: new Text("Already have Account? Login",
              style: new TextStyle(fontSize: 18.0)),
          textColor: Colors.white,
          color: Colors.green,
          onPressed: moveToLogin,
        ),
      ];
    }
  }
}
