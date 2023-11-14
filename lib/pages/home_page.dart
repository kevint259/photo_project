import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.push('/photos'),
          child: Text(
            "Request API",
            style: TextStyle(
              fontSize: 26.sp,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
