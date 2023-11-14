import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PhotoContainer extends StatelessWidget {
  final String id;
  final String title;
  final String url;
  const PhotoContainer(
      {super.key, required this.id, required this.title, required this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(image: DecorationImage(image: NetworkImage(url))),
      height: 150.w,
      width: 150.w,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              id,
              style: TextStyle(
                  fontSize: 26.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
