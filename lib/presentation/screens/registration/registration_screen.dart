import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cadetbank/core/navigation/routes.dart';
import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/core/res/values/strings.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  bool hasNoMiddleName = false;
  bool obscurePassword = true;

  final _formKey = GlobalKey<FormState>();

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController middleNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FocusNode mobileFocusNode = FocusNode(); // ✅ Focus node for mobile

  final Color buttonGreen = const Color(0xFF00A86B);

  @override
  void initState() {
    super.initState();
    // Rebuild widget when mobile field focus changes
    mobileFocusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    mobileFocusNode.dispose();
    super.dispose();
  }

  InputDecoration _buildDecoration({
    required String labelText,
    String? hintText,
    Widget? prefix,
    String? prefixText,
    String? helperText,
  }) {
    return InputDecoration(
      labelText: labelText,
      labelStyle: const TextStyle(color: Colors.black), // keep label black
      floatingLabelStyle: const TextStyle(color: Colors.black), // override active label
      hintText: hintText,
      prefix: prefix,
      prefixText: prefixText,
      helperText: helperText,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: buttonGreen, width: 2),
        borderRadius: BorderRadius.circular(8),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade400, width: 1),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  final List<TextInputFormatter> phMobileFormatters = [
    FilteringTextInputFormatter.digitsOnly,
    PhMobileNumberFormatter(),
  ];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: Dimens.s20, vertical: Dimens.s24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back button
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              const SizedBox(height: Dimens.s16),

              // Title
              Text(
                "Create an account",
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: Dimens.s12),

              Text(
                "Fill in the details to start your CadetBank account.",
                style: TextStyle(
                  fontSize: 16,
                  color: colorScheme.onBackground.withOpacity(0.7),
                ),
              ),
              const SizedBox(height: Dimens.s30),

              // Form
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // First Name
                    TextFormField(
                      controller: firstNameController,
                      decoration: _buildDecoration(
                        labelText: "First name",
                        hintText: "Your first name",
                      ),
                    ),
                    const SizedBox(height: Dimens.s16),

                    // Middle Name + checkbox
                    if (!hasNoMiddleName)
                      TextFormField(
                        controller: middleNameController,
                        decoration: _buildDecoration(
                          labelText: "Middle name",
                          hintText: "Your middle name",
                        ),
                      ),
                    Row(
                      children: [
                        Checkbox(
                          value: hasNoMiddleName,
                          activeColor: buttonGreen, // ✅ buttonGreen
                          onChanged: (value) {
                            setState(() {
                              hasNoMiddleName = value ?? false;
                            });
                          },
                        ),
                        const Text("I have no legal middle name"),
                      ],
                    ),
                    const SizedBox(height: Dimens.s16),

                    // Last Name
                    TextFormField(
                      controller: lastNameController,
                      decoration: _buildDecoration(
                        labelText: "Last name",
                        hintText: "Your last name",
                      ),
                    ),
                    const SizedBox(height: Dimens.s16),

                    // Email
                    TextFormField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: _buildDecoration(
                        labelText: "Email address (Optional)",
                        hintText: "Your email address",
                        helperText: "We'll verify your email after you register",
                      ),
                    ),
                    const SizedBox(height: Dimens.s16),

                    // Mobile Number
                    TextFormField(
                      controller: mobileController,
                      keyboardType: TextInputType.phone,
                      inputFormatters: phMobileFormatters,
                      focusNode: mobileFocusNode,
                      decoration: _buildDecoration(
                        labelText: "Mobile Number",
                        hintText: "9** *** ****",
                        prefixText: mobileFocusNode.hasFocus ? "🇵🇭 +63 " : null, // ✅ only show when focused
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your mobile number';
                        }
                        String digitsOnly = value.replaceAll(' ', '');
                        if (!RegExp(r'^[0-9]{9}$').hasMatch(digitsOnly)) {
                          return 'Enter a valid 9-digit mobile number';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: Dimens.s16),

                    // Password
                    TextFormField(
                      controller: passwordController,
                      obscureText: obscurePassword,
                      decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Create a password",
                        labelStyle: const TextStyle(color: Colors.black),
                        floatingLabelStyle: const TextStyle(color: Colors.black),
                        suffixIcon: IconButton(
                          icon: Icon(
                            obscurePassword ? Icons.visibility_off : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              obscurePassword = !obscurePassword;
                            });
                          },
                        ),
                        helperText: "👌 Strong password tips",
                        helperStyle: TextStyle(color: buttonGreen),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: buttonGreen, width: 2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400, width: 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(Dimens.s20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // TODO: handle registration logic
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: buttonGreen,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  Strings.kContinue,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: Dimens.s12),
            TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.login);
              },
              child: Text(
                Strings.login,
                style: TextStyle(color: buttonGreen),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Formatter class for PH mobile numbers
class PhMobileNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    String digitsOnly = newValue.text.replaceAll(RegExp(r'\D'), '');
    if (digitsOnly.length > 9) digitsOnly = digitsOnly.substring(0, 9);

    String formatted = '';
    for (int i = 0; i < digitsOnly.length; i++) {
      if (i == 3 || i == 6) formatted += ' ';
      formatted += digitsOnly[i];
    }

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}