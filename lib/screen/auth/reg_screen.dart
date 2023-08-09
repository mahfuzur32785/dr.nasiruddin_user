import 'package:doc_app/api/api_service.dart';
import 'package:doc_app/screen/auth/login_screen.dart';
import 'package:doc_app/utils/utils.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool _passwordVisible = false;
  bool isLoading = false;

  final formKey = GlobalKey<FormState>();

  final nameCtrl = TextEditingController();
  final phoneCtrl = TextEditingController();
  final addressCtrl = TextEditingController();
  final passCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              sliver: SliverToBoxAdapter(
                child: Form(
                  key: formKey,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 16),

                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 25),
                          child: Center(
                            child: Text(
                              "Register",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Already have an account? ',style: TextStyle(color: Colors.black54),),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: const Text(
                                'Login',
                                style: TextStyle(
                                  // color: redColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Divider(color: Colors.grey.shade300),
                        // const SizedBox(height: 20),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                            children: [
                              Text("Full Name",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("*",style: TextStyle(color: Colors.red),),
                            ],
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.name,
                          // initialValue: state.email,
                          controller: nameCtrl,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter Name';
                            }else{
                              nameCtrl.text = value.trim();
                            }
                            return null;
                          },
                          // onChanged: (value) => loginBloc.add(LoginEventUserName(value)),
                          decoration: const InputDecoration(
                              hintText: "Enter your name",
                              fillColor: Color(0xffEBEDF4),
                              filled: true,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                            children: [
                              Text("Phone",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("*",style: TextStyle(color: Colors.red),),
                            ],
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.phone,
                          controller: phoneCtrl,
                          // initialValue: state.email,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter Phone';
                            }else{
                              phoneCtrl.text = value.trim();
                            }
                            return null;
                          },
                          // onChanged: (value) => loginBloc.add(LoginEventUserName(value)),

                          decoration: const InputDecoration(
                              hintText: "Enter your phone",
                              fillColor: Color(0xffEBEDF4),
                              filled: true
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                            children: [
                              Text("Address",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("*",style: TextStyle(color: Colors.red),),
                            ],
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.streetAddress,
                          controller: addressCtrl,
                          // initialValue: state.email,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter Address';
                            }else{
                              addressCtrl.text = value.trim();
                            }
                            return null;
                          },
                          maxLines: 2,
                          // onChanged: (value) => loginBloc.add(LoginEventUserName(value)),

                          decoration: const InputDecoration(
                              hintText: "Enter your address",
                              fillColor: Color(0xffEBEDF4),
                              filled: true
                          ),
                        ),
                        const SizedBox(height: 10),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: 6),
                          child: Row(
                            children: [
                              Text("Password",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("*",style: TextStyle(color: Colors.red),),
                            ],
                          ),
                        ),
                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          controller: passCtrl,
                          // initialValue: state.password,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter Password';
                            }else{
                              passCtrl.text = value.trim();
                            }
                            return null;
                          },
                          // onChanged: (value) => loginBloc.add(LoginEventPassword(value)),
                          obscureText: !_passwordVisible,
                          decoration: InputDecoration(
                            hintText:
                            'Enter your password',
                            fillColor: const Color(0xffEBEDF4),
                            filled: true,
                            suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                // color: grayColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        // _buildRememberMe(),
                        const SizedBox(height: 25),
                        SizedBox(
                          height: 48,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () async{
                              Utils.closeKeyBoard(context);
                              if(formKey.currentState!.validate()){
                                setState(() {
                                  isLoading = true;
                                });
                                print('valide');
                                await ApiRequest().fetchUserRegistration(nameCtrl.text, phoneCtrl.text, addressCtrl.text, passCtrl.text).then((value){
                                  if(value == "This Number Already exist!"){
                                    Utils.errorSnackBar(context, value);
                                  }
                                  else{
                                    nameCtrl.text = '';
                                    phoneCtrl.text = '';
                                    addressCtrl.text = '';
                                    passCtrl.text = '';
                                    Utils.showSnackBar(context, value);
                                    Navigator.pop(context);
                                  }
                                  setState(() {
                                    isLoading = false;
                                  });
                                });

                              }
                              // loginBloc.add(const LoginEventSubmit());
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              backgroundColor: const Color(0xffaec2e3),
                              foregroundColor: Colors.black,
                            ),
                            child: isLoading ? CircularProgressIndicator() : const Text("Register"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
