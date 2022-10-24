import 'package:flutter/material.dart';

class FormModalWidget extends StatefulWidget {
  const FormModalWidget({Key? key}) : super(key: key);

  @override
  State<FormModalWidget> createState() => _FormModalWidgetState();
}

class _FormModalWidgetState extends State<FormModalWidget> {

  String valueDrop = "A";

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14.0),
      ),
      contentPadding: EdgeInsets.zero,
      content: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/figma.png',
              height: 60.0,
            ),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              "Share with people",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff424550),
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              "The following users have access:",
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.normal,
                color: const Color(0xff424550).withOpacity(0.70),
              ),
            ),
            // SizedBox(
            //   height: 200,
            //   width: double.maxFinite,
            //   child: ListView(
            //     children: [
            //       Text("Hola",),
            //     ],
            //   ),
            // ),
            const SizedBox(
              height: 10.0,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.black26,
                    backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/6953880/pexels-photo-6953880.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    ),
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Candice Wu",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "candicewu@gmail.com",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "Remove",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 11.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.black26,
                    backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/6953880/pexels-photo-6953880.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    ),
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Candice Wu",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "candicewu@gmail.com",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "Remove",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 11.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.black26,
                    backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/6953880/pexels-photo-6953880.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    ),
                  ),
                  const SizedBox(
                    width: 6.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Candice Wu",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "candicewu@gmail.com",
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "Remove",
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontSize: 11.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 14,
            ),

            Container(
              height: 40.0,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    color: Colors.black.withOpacity(0.17),
                    width: 1.4,
                  )),
              child: DropdownButtonHideUnderline(
                child: DropdownButton(
                  value: valueDrop,
                  isExpanded: true,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    size: 16,
                    color: Colors.black54,
                  ),
                  // underline: SizedBox(),
                  items: [
                    DropdownMenuItem(
                      value: "A",
                      child: Row(
                        children: const [
                          Icon(Icons.person_outline_outlined, size: 18, color: Colors.black54,),
                          SizedBox(
                            width: 6.0,
                          ),
                          Text(
                            "Select team member",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                    DropdownMenuItem(
                      value: "B",
                      child: Text(
                        "Hola 2",
                      ),
                    ),
                    DropdownMenuItem(
                      value: "C",
                      child: Text(
                        "Hola 3",
                      ),
                    ),
                  ],
                  onChanged: (String? value) {
                    valueDrop = value!;
                    setState(() {

                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}