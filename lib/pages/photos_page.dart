import 'package:flutter/material.dart';
import 'package:flutter_project1/controllers/photos_ctrl.dart';
import 'package:flutter_project1/pages/widgets/photo_container.dart';
import 'package:go_router/go_router.dart';

class PhotoPage extends StatelessWidget {
  const PhotoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leadingWidth: 100,
        leading: GestureDetector(
          onTap: () {
            context.pop();
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 10),
              Icon(Icons.arrow_back_ios, color: Colors.blue),
              Text("Back",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  )),
            ],
          ),
        ),
      ),
      body: StreamBuilder(
        stream: PhotosCtrl().photos,
        builder: (context, snapshot) {
          if (snapshot.data != null && snapshot.hasData) {
            return GridView.builder(
              itemCount: snapshot.data!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemBuilder: (context, index) => PhotoContainer(
                  id: snapshot.data![index].id.toString(),
                  title: snapshot.data![index].title,
                  url: snapshot.data![index].thumbnailUrl),
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
