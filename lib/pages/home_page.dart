import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled3/widget/item_list_widget.dart';

class HomePage extends StatelessWidget {


  List<Map<String, dynamic>> data = [
    {
      "id": 1,
      "type": "Sent",
      "description": "Sending Payment to Clients",
    },
    {
      "id": 2,
      "type": "Receive",
      "description": "Receiving Salary from company",
    },
    {
      "id": 3,
      "type": "Loan",
      "description": "Loan for the Car",
    },
    {
      "id": 4,
      "type": "Receive",
      "description": "Receiving Salary from company 2",
    },
    {
      "id": 5,
      "type": "Sent",
      "description": "Sending Payment to Clients 2",
    },
    {
      "id": 6,
      "type": "Loan",
      "description": "Loan for the Car",
    },
  ];
  // lista fuera del metodo build

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F8FE),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(14.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(26.0),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0Xff3D4584).withOpacity(0.05),
                        offset: Offset(0.0, 7.0),
                        blurRadius: 16.0,
                      ),
                    ]),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.search,
                          color: Color(0Xff3D4584),
                          size: 18.0,
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Color(0Xff3D4584),
                          size: 18.0,
                        ),
                      ],
                    ),
                    const CircleAvatar(
                      backgroundColor: Colors.black12,
                      radius: 40.0,
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/9795010/pexels-photo-9795010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Hira Riaz",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          color: Color(0Xff3D4584)),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text("UX/UI Designer",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                          color: Colors.black87,
                        )),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "\$8550",
                              style: TextStyle(
                                color: Color(0Xff3D4584),
                              ),
                            ),
                            SizedBox(height: 6.0),
                            Text("Income"),
                          ],
                        ),
                        SizedBox(
                          height: 34.0,
                          width: 30.0,
                          child: VerticalDivider(
                            color: Colors.black87.withOpacity(0.3),
                          ),
                        ),
                        Column(
                          children: [
                            Text("\$8550",
                                style: TextStyle(
                                  color: Color(0Xff3D4584),
                                )),
                            Text("Expenses"),
                          ],
                        ),
                        SizedBox(
                          height: 34.0,
                          width: 30.0,
                          child: VerticalDivider(
                            color: Colors.black87.withOpacity(0.3),
                          ),
                        ),
                        Column(
                          children: [
                            Text("\$8550",
                                style: TextStyle(
                                  color: Color(0Xff3D4584),
                                )),
                            Text("Loan"),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 22.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Overview",
                        style: TextStyle(
                          fontSize: 26.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff3D4584),
                        ),
                      ),
                      SizedBox(
                        width: 6.0,
                      ),
                      Icon(
                        Icons.notification_add_outlined,
                        size: 20.0,
                        color: Color(0xff3D4584),
                      ),
                    ],
                  ),
                  Text(
                    "Set 12, 2022",
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff3D4584),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 22,
              ),
              //...data.map((e) => ItemListWidget()).toList(),
              //...List.generate(data.length, (index) => ItemListWidget())
              ListView.builder(
                  shrinkWrap: true, //no se reduzca la vista
                  physics: ScrollPhysics(), // para el scroll pueda funcionar
                  itemCount: data.length,// la cantidad que se va imprimir
                  itemBuilder: (BuildContext context, int index){
                return ItemListWidget(
                  item: data[index],
                );
              })

            ],
          ),
        ),
      )),
    );
  }
}
