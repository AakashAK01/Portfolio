import 'package:flutter/material.dart';
import 'package:hello_world/widgets/Cards/intro_card.dart';
import 'package:hello_world/pages/home/home_page.dart';
import 'package:hello_world/widgets/Header/header.dart';
import 'package:hello_world/widgets/Cards/project.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Header(),
                  SizedBox(
                    height: 25,
                  ),
                  Text("Projects",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ProjectCard(
                          projectname: "My Project",
                          projectyear: 2022,
                          projectDescription:
                              "This is the project's description. You can write your own description here.",
                          projectImage:
                              "https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
                        ),
                        ProjectCard(
                          projectname: "My Project",
                          projectyear: 2022,
                          projectDescription:
                              "This is the project's description. You can write your own description here.",
                          projectImage:
                              "https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
                        ),
                        ProjectCard(
                          projectname: "My Project",
                          projectyear: 2022,
                          projectDescription:
                              "This is the project's description. You can write your own description here.",
                          projectImage:
                              "https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
                        ),
                        ProjectCard(
                          projectname: "My Project",
                          projectyear: 2022,
                          projectDescription:
                              "This is the project's description. You can write your own description here.",
                          projectImage:
                              "https://images.unsplash.com/photo-1551288049-bebda4e38f71?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
