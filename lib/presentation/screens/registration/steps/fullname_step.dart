import 'package:cadetbank/core/res/values/app_colors.dart';
import 'package:flutter/material.dart';

class FullNameStepScreen extends StatefulWidget {
  final void Function(String firstName, String? middleName, String lastName) onNext;
  const FullNameStepScreen({Key? key, required this.onNext}) : super(key: key);

  @override
  State<FullNameStepScreen> createState() => _FullNameStepScreenState();
}

class _FullNameStepScreenState extends State<FullNameStepScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _middleNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  bool _noMiddleName = false;
  bool _middleNameError = false;

  void _onNext() {
    setState(() {
      _middleNameError = !_noMiddleName && _middleNameController.text.trim().isEmpty;
    });
    if (_firstNameController.text.trim().isEmpty || _lastNameController.text.trim().isEmpty) return;
    if (_middleNameError) return;
    widget.onNext(
      _firstNameController.text.trim(),
      _noMiddleName ? null : _middleNameController.text.trim(),
      _lastNameController.text.trim(),
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
          icon: const Icon(Icons.close, color: Colors.black),
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
              const Text(
                "What's your name?",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              const SizedBox(height: 8),
              const Text(
                'Make sure your name is correct to continue enjoying our services ⚡',
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
              const SizedBox(height: 32),
              const Text('First name', style: TextStyle(fontSize: 15, color: Colors.black54)),
              TextField(
                controller: _firstNameController,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'First name',
                  hintStyle: TextStyle(color: Colors.black26),
                ),
              ),
              const SizedBox(height: 16),
              const Text('Middle name', style: TextStyle(fontSize: 15, color: Colors.black54)),
              TextField(
                controller: _middleNameController,
                enabled: !_noMiddleName,
                style: const TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter middle name',
                  hintStyle: const TextStyle(color: Colors.black26),
                  errorText: _middleNameError ? 'Please enter your middle name' : null,
                  errorStyle: const TextStyle(color: Colors.red),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    value: _noMiddleName,
                    onChanged: (val) {
                      setState(() {
                        _noMiddleName = val ?? false;
                        if (_noMiddleName) _middleNameError = false;
                      });
                    },
                  ),
                  const Text('I have no legal middle name', style: TextStyle(fontSize: 15)),
                ],
              ),
              const Text('Last name', style: TextStyle(fontSize: 15, color: Colors.black54)),
              TextField(
                controller: _lastNameController,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Last name',
                  hintStyle: TextStyle(color: Colors.black26),
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
                  onPressed: _onNext,
                  child: const Text('Next', style: TextStyle(fontSize: 18, color: Colors.white)),
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
