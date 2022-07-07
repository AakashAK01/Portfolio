import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final String projectname;
  final int projectyear;
  final String projectImage;
  final String projectDescription;

  const ProjectCard(
      {required this.projectname,
      required this.projectDescription,
      required this.projectImage,
      required this.projectyear,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: [
            BoxShadow(
              offset: Offset(5, 15),
              color: Colors.black.withOpacity(.15),
              blurRadius: 15,
            )
          ]),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              projectname,
              style: TextStyle(fontSize: 18),
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(15.0)),
              child: Text(
                projectyear.toString(),
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Expanded(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(
              projectImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          projectDescription,
          maxLines: 3,
          style: TextStyle(
            fontSize: 14,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ]),
    );
  }
}
