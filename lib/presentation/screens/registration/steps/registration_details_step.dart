import 'package:flutter/material.dart';
import 'package:cadetbank/core/res/values/app_colors.dart';

class RegistrationDetailsStepScreen extends StatefulWidget {
  final String firstName;
  final String? middleName;
  final String lastName;
  final void Function(String email, String mobile, String password) onFinish;
  const RegistrationDetailsStepScreen({Key? key, required this.firstName, this.middleName, required this.lastName, required this.onFinish}) : super(key: key);

  @override
  State<RegistrationDetailsStepScreen> createState() => _RegistrationDetailsStepScreenState();
}

class _RegistrationDetailsStepScreenState extends State<RegistrationDetailsStepScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobileController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _passwordObscure = true;

  void _onFinish() {
    if (_emailController.text.trim().isEmpty || _mobileController.text.trim().isEmpty || _passwordController.text.trim().isEmpty) return;
    widget.onFinish(
      _emailController.text.trim(),
      _mobileController.text.trim(),
      _passwordController.text.trim(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Text(
                '👋 Hi, ${widget.firstName} ${widget.middleName ?? ''} ${widget.lastName}!',
                style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const SizedBox(height: 8),
              const Text(
                'Let’s get you set up with your details to continue enjoying our services ⚡',
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
              const SizedBox(height: 32),
              const Text('Email (Optional)', style: TextStyle(fontSize: 15, color: Colors.black54)),
              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                style: const TextStyle(fontSize: 18, color: Colors.black),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter your email',
                  hintStyle: TextStyle(color: Colors.black26),
                ),
              ),
              const SizedBox(height: 16),
              const Text('📱 Mobile Number', style: TextStyle(fontSize: 15, color: Colors.black54)),
              TextField(
                controller: _mobileController,
                keyboardType: TextInputType.number,
                style: const TextStyle(fontSize: 18, color: Colors.black),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter your mobile number',
                  hintStyle: TextStyle(color: Colors.black26),
                ),
              ),
              const SizedBox(height: 16),
              const Text('🔒 Password', style: TextStyle(fontSize: 15, color: Colors.black54)),
              TextField(
                controller: _passwordController,
                obscureText: _passwordObscure,
                style: const TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter your password',
                  hintStyle: const TextStyle(color: Colors.black26),
                  suffixIcon: IconButton(
                    icon: Icon(_passwordObscure ? Icons.visibility_off : Icons.visibility),
                    onPressed: () => setState(() => _passwordObscure = !_passwordObscure),
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.green00A651,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    elevation: 0,
                  ),
                  onPressed: _onFinish,
                  child: const Text('Finish', style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ),
              const SizedBox(height: 16),
              Center(
                child: Container(
                  width: 80,
                  height: 4,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
