import 'package:flutter/material.dart';

void main() =>  runApp(MaterialApp(
  theme: ThemeData(brightness: Brightness.light,
  primaryColor: Colors.amber),
  home: const MyApp(),
));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late String pname, pid, pprogramid;
  late double pgpa;

  getStudentName(name){
    this.pname = name;
  }

  getStudentID(id){
    this.pid = id;
  }

  getStudyProgramID(programId){
    this.pprogramid = programId;
  }

  getGPA(gpa){
    this.pgpa = gpa;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Title Collage"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.only(bottom : 8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText : "Name",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2.0
                    )
                  )
                ),
                onChanged: (String name){
                  getStudentName(name);
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom : 8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText : "Student ID",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 177, 243, 33),
                      width: 2.0
                    )
                  )
                ),
                onChanged: (String id){
                  getStudentID(id);
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom : 8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText : "Study Program ID",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 177, 243, 33),
                      width: 2.0
                    )
                  )
                ),
                onChanged: (String programId){
                  getStudyProgramID(programId);
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(bottom : 8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText : "GPA",
                  fillColor: Colors.white,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromARGB(255, 177, 243, 33),
                      width: 2.0
                    )
                  )
                ),
                onChanged: (String gpa){
                  getGPA(gpa);
                },
              ),
            )
          ]),
      ),
    );
  }
}