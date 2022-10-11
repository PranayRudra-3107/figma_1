import 'package:figma/machineDetails.dart';
import 'package:flutter/material.dart';
import 'machineDetails.dart';
class Machine extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body:
    Column(
      children: [
        Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 5,left: 10,right: 10,bottom: 5),
          // padding: const EdgeInsets.all(10),
          height: 61,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black12, width: 1),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                TextField(
                  onTap: () {
                    //Go to the next screen
                  },
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        // borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none
                    ),
                    hintText: 'Search by plant, model or machine',
                    hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 15
                    ),
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ]
          ),
        ),
        Text('Recently Searched',style: TextStyle(
          color: Colors.grey,
          fontSize: 15,
        )
        ),
        Container(
          height: 100,
          width: double.infinity,
          //color: Colors.purple,
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 5,left: 10,right: 10),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: Colors.black12, width: 1),
          ),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Plant name',style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.5,
                  fontSize: 15,
                ),),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    machineContent("Machine"),
                    Icon(Icons.arrow_forward_ios, color: Colors.grey)
                    // machineContent(">")
                  ],
                ),
                machineContent("Model")
              ]
          ),
        ),
        Expanded(
          child:
          ListView.builder(
              itemCount: 5,
              itemBuilder: (context,index){
                return Container(
                  height: 100,
                  width: double.infinity,
                  //color: Colors.purple,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(top: 5,left: 10,right: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: Colors.black12, width: 1),
                  ),
                  child: InkWell(
                    onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=> MachineDetails()),),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Plant name',style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Roboto',
                            letterSpacing: 0.5,
                            fontSize: 15,
                          ),),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              machineContent("NF35353"),
                              Icon(Icons.arrow_forward_ios, color: Colors.grey)
                              // machineContent(">")
                            ],
                          ),
                          machineContent("White Classic")
                        ]
                    ),
                  ),
                );
              }),
        ),
      ],
    ),
  );
  Widget machineContent(String title){
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,style: TextStyle(
          color: Colors.black,
          fontFamily: 'Roboto',
          letterSpacing: 0.5,
          fontSize: 17,
        ),),

      ],
    );
  }
}