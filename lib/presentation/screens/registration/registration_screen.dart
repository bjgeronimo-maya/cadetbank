import 'package:cadetbank/core/navigation/routes.dart';
import 'package:cadetbank/core/res/values/dimens.dart';
import 'package:cadetbank/presentation/screens/registration/widgets/registration_form.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.s24),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: Dimens.s20),

                  Transform.translate(
                    offset: const Offset(-16, 0),
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.close, size: 28),
                      padding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                      alignment: Alignment.centerLeft,
                    ),
                  ),

                  const SizedBox(height: Dimens.s32),

                  // Big Title
                  const Text(
                    "Let's get started!",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      letterSpacing: -0.5,
                    ),
                  ),

                  const SizedBox(height: Dimens.s8),

                  // Small Description
                  Text(
                    "Create an account to start managing your finances better with CadetBank ⚡",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey.shade600,
                      height: 1.4,
                    ),
                  ),

                  const SizedBox(height: Dimens.s40),

                  const RegistrationForm(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding:
              const EdgeInsets.fromLTRB(Dimens.s24, 0, Dimens.s24, Dimens.s32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, Routes.login);
                },
                child: Text.rich(
                  TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey.shade600,
                    ),
                    children: const [
                      TextSpan(
                        text: "Log in",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: Dimens.s20),

              // Next button
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF98DBB8),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text(
                    "Next",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
