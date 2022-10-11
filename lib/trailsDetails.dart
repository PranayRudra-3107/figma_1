import 'package:flutter/material.dart';
class TrailsDetails extends StatefulWidget {
  const TrailsDetails({Key? key}) : super(key: key);

  @override
  State<TrailsDetails> createState() => _State();
}

class _State extends State<TrailsDetails> {
  @override
  Widget build(BuildContext context) =>Scaffold(
    body: Column(
      children: [
        Container(
          height: 70,
          width: double.infinity,
          alignment: Alignment.center,
          color: Colors.white12,
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(10),
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const Text('NF3535',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Roboto',
                        letterSpacing: 0.5,
                        fontSize: 20,
                      ),
                    ),
                    const Text('ID: 135BA28'),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(color: Colors.black12, width: 1),
                        ),
                        child: Icon(Icons.file_download_outlined,size: 35),
                    )
                  ]
                ),
              ]),
        ),
        Container(
          child:
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
              suffixIcon: Icon(Icons.calendar_today_outlined),
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(columns: const <DataColumn>[
              DataColumn(
                label: Expanded(
                  child: Text(
                    '     ',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),DataColumn(
                label: Expanded(
                  child: Text(
                    '8:01:00',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),DataColumn(
                label: Expanded(
                  child: Text(
                    '8:02:00',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),DataColumn(
                label: Expanded(
                  child: Text(
                    '8:03:00',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),DataColumn(
                label: Expanded(
                  child: Text(
                    'Name',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ], rows: const <DataRow>[
              DataRow(cells: <DataCell>[
                DataCell(Text('Sensor1')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
              ],),
              DataRow(cells: <DataCell>[
                DataCell(Text('Sensor1')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
              ],),
              DataRow(cells: <DataCell>[
                DataCell(Text('Sensor1')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
              ],),
              DataRow(cells: <DataCell>[
                DataCell(Text('Sensor1')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
              ],),
              DataRow(cells: <DataCell>[
                DataCell(Text('Sensor1')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
              ],),
              DataRow(cells: <DataCell>[
                DataCell(Text('Sensor1')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
              ],),
              DataRow(cells: <DataCell>[
                DataCell(Text('Sensor1')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
              ],),
              DataRow(cells: <DataCell>[
                DataCell(Text('Sensor1')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
                DataCell(Text('ON')),
              ],),

            ]),
          ),
        ),

      ],
    ),
  );
}
