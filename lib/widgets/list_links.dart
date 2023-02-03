import 'package:flutter/material.dart';


import 'package:flutter/material.dart';

class ListLink extends StatelessWidget {
  ListLink({super.key});

  final List<String> links = ["List","Projects","Calendar"];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: links.length,
        itemBuilder: (BuildContext context,int index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
    
            child: Stack(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 8.0),
                  decoration: BoxDecoration(
                    color: index == 0 ? Color.fromARGB(255, 249, 159, 159) : Colors.white,
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Text(links[index],style: TextStyle(color: index==0 ? Colors.black : Colors.black54,fontSize: 20.0,fontWeight: FontWeight.bold),),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}