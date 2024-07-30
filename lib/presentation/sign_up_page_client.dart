import 'package:flutter/material.dart';
import 'package:djayz_booking_1/routes/app_routes.dart';
import 'package:djayz_booking_1/widgets/custom_text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _dobController = TextEditingController();
  final _countryController = TextEditingController();

  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  void _signUp() {
    if (_formKey.currentState!.validate()) {
      print(
          'First Name: ${_firstNameController.text}, Last Name: ${_lastNameController.text}, Email: ${_emailController.text}, Phone: ${_phoneController.text}, Passwort: ${_passwordController.text}, Confirm Password: ${_confirmPasswordController.text}, Date of Birth: ${_dobController.text}, Country: ${_countryController.text}');
      Navigator.pushNamed(context, AppRoutes.mainMenuScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                CustomTextFormField(
                  controller: _firstNameController,
                  labelText: 'First Name',
                  obscureText: false,
                ),
                SizedBox(height: 20.0),
                CustomTextFormField(
                  controller: _lastNameController,
                  labelText: 'Last Name',
                  obscureText: false,
                ),
                SizedBox(height: 20.0),
                CustomTextFormField(
                  controller: _emailController,
                  labelText: 'Email Address',
                  obscureText: false,
                ),
                SizedBox(height: 20.0),
                CustomTextFormField(
                  controller: _phoneController,
                  labelText: 'Your Phone Number',
                  obscureText: false,
                ),
                SizedBox(height: 20.0),
                CustomTextFormField(
                  controller: _passwordController,
                  labelText: 'Password',
                  obscureText: _obscurePassword,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                  ),
                ),
                SizedBox(height: 20.0),
                CustomTextFormField(
                  controller: _confirmPasswordController,
                  labelText: 'Confirm Password',
                  obscureText: _obscureConfirmPassword,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureConfirmPassword
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        _obscureConfirmPassword = !_obscureConfirmPassword;
                      });
                    },
                  ),
                ),
                SizedBox(height: 20.0),
                CustomTextFormField(
                  controller: _dobController,
                  labelText: 'Date of Birth',
                  obscureText: false,
                ),
                SizedBox(height: 20.0),
                CustomTextFormField(
                  controller: _countryController,
                  labelText: 'Country',
                  obscureText: false,
                ),
                SizedBox(height: 40.0),
                ElevatedButton(
                  onPressed: _signUp,
                  child: Text('Sign Up'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 213, 213, 213),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 100.0,
                      vertical: 15.0,
                    ),
                    minimumSize: Size(double.infinity, 60),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
