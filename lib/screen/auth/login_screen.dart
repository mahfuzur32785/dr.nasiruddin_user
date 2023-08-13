import 'package:doc_app/api/api_service.dart';
import 'package:doc_app/screen/auth/reg_screen.dart';
import 'package:doc_app/screen/home_page.dart';
import 'package:doc_app/screen/main/main_screen.dart';
import 'package:doc_app/utils/utils.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = false;
  bool isLoading = false;
  final formKey = GlobalKey<FormState>();
  final phoneCtrl = TextEditingController();
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
                              "Log in",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Don\'t have an account? ',style: TextStyle(color: Colors.black54),),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const RegistrationScreen(),));
                              },
                              child: const Text(
                                'Register',
                                style: TextStyle(
                                    // color: redColor,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Divider(color: Colors.grey.shade300),
                        const SizedBox(height: 20),
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
                          keyboardType: TextInputType.emailAddress,
                          // initialValue: state.email,
                          controller: phoneCtrl,
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
                              Text("Password",style: TextStyle(fontWeight: FontWeight.bold),),
                              Text("*",style: TextStyle(color: Colors.red),),
                            ],
                          ),
                        ),

                        TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          // initialValue: state.password,
                          controller: passCtrl,
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
                            onPressed: () async {
                              Utils.closeKeyBoard(context);
                              if(formKey.currentState!.validate()){
                                setState(() {
                                  isLoading = true;
                                });

                                await ApiRequest().fetchUserLogin(phoneCtrl.text, passCtrl.text).then((value){

                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage(),));
                                  setState(() {
                                    isLoading = false;
                                  });
                                });
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              backgroundColor: const Color(0xffaec2e3),
                              foregroundColor: Colors.black,
                            ),
                            child: isLoading ? const CircularProgressIndicator() : const Text("Log In"),
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
