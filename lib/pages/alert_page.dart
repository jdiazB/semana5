import 'package:flutter/material.dart';
import 'package:untitled3/widget/form_modal_widget.dart';

class AlertPage extends StatelessWidget {
  void showAlert1(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.4),
      barrierDismissible: true,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          contentPadding: EdgeInsets.zero,
          content: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/figma.png',
                  height: 70.0,
                ),
                const Text(
                  "Blog post published",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                ),
                const SizedBox(
                  height: 6.0,
                ),
                const Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt",
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    color: Colors.black54,
                    fontSize: 12.0,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        child: Text(
                          "Cancelar",
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff7E56DA),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                        ),
                        child: Text(
                          "Confirm",
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void showAlert2(BuildContext context) {
    showDialog(
        context: context,
        barrierColor: Colors.black.withOpacity(0.4),
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            content: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 140.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://images.pexels.com/photos/6579068/pexels-photo-6579068.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    "Your video has been uploaded!",
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Color(0xff424550),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 6.0,
                  ),
                  Text(
                    "You're video has finished uploading and is live",
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xff424550).withOpacity(0.65),
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "share link",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff424550).withOpacity(0.8)),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 6.0, vertical: 9.0),
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black26.withOpacity(0.16),
                              ),
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Text(
                            "untitle.com/promo/total/bhhjh",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 13.0),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 6.0,
                      ),
                      OutlinedButton.icon(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0))),
                          icon: Icon(Icons.link),
                          label: Text(
                            "Copylink",
                            style: TextStyle(fontSize: 13.0),
                          )),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: OutlinedButton(
                              onPressed: () {}, child: Text("Skip"))),
                      SizedBox(
                        width: 18,
                      ),
                      Expanded(
                          child: ElevatedButton(
                              onPressed: () {}, child: Text("Next")))
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }

  void showAlert3(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return FormModalWidget();
          /*AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.0)),
            contentPadding: EdgeInsets.zero,
            content: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/figma.png',
                    height: 60.0,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Share with people",
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff424550)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "The following users have access",
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal,
                        color: Color(0xff424550).withOpacity(0.70)),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 18.0,
                          backgroundColor: Colors.black26,
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/6953880/pexels-photo-6953880.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Candice wu",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0),
                              ),
                              const Text(
                                "candicewu@gmail.com",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 11.0),
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
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 18.0,
                          backgroundColor: Colors.black26,
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/6953880/pexels-photo-6953880.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Candice wu",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0),
                              ),
                              const Text(
                                "candicewu@gmail.com",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 11.0),
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
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      children: [
                        const CircleAvatar(
                          radius: 18.0,
                          backgroundColor: Colors.black26,
                          backgroundImage: NetworkImage(
                              'https://images.pexels.com/photos/6953880/pexels-photo-6953880.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Candice wu",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.0),
                              ),
                              const Text(
                                "candicewu@gmail.com",
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 11.0),
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
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 14.0,
                  ),
                  Container(
                    height: 40.0,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        color: Colors.black.withOpacity(0.17),
                        width: 1.4,)
                    ),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: "A",
                            isExpanded: true,
                            icon: Icon(Icons.arrow_drop_down,
                            size: 16.0,
                            color: Colors.black54,),
                            // underline: SizedBox(),
                            items: [
                              DropdownMenuItem(
                                value: "A",

                                child: Row(
                                  children: [
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
                            onChanged: (value) {},
                          ),
                      ),
                  ),
                  /*ListTile(
                    contentPadding: EdgeInsets.all(0),
                    minLeadingWidth: 0,
                    leading: CircleAvatar(
                      backgroundColor: Colors.black26,
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/6953880/pexels-photo-6953880.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: Text(
                      "Candice wu",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 13.0),
                    ),
                    subtitle: Text(
                      "candicewu@gmail.com",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 12.0),
                    ),
                  ),*/
                ],
              ),
            ),
          );*/
        });
  }

  showAlert4(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            contentPadding: EdgeInsets.zero,
            content: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn-icons-png.flaticon.com/512/2922/2922888.png"))),

                  ),
                  Text("Change your payment method"),
                  Text("Update your plan payment detalls"),
                  SizedBox(height: 20,),
                  InkWell(
                    onTap: () {

                    },

                    child: Container(
                      decoration: BoxDecoration(color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.grey)
                      ),

                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 10,bottom: 30),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage("https://cdn-icons-png.flaticon.com/512/349/349228.png")
                              )
                            ),

                          ),
                          SizedBox(width: 10,),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Visa ending in 1234"),
                                Text("Expiry 06/2024"),
                                SizedBox(height: 15,),
                                Row(
                                  children: [
                                    Text("Set as default"),
                                    Text("Edit")
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            margin: EdgeInsets.only(bottom: 60),
                            child: Radio( value: 1 ,groupValue:1 , onChanged: (int? value) {

                            },),
                          )
                        ],
                      ),

                    ),
                  ),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(onPressed: () {

                      }, child: Text("Cancel")       ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(
                      child: ElevatedButton(onPressed: () {

                      }, child: Text("Confirm")),
                    )
                  ],
                )],
                 
              ),
              
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.black,
              child: const Text(
                "Alert 1",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                showAlert1(context);
              },
            ),
            MaterialButton(
              color: Colors.black,
              child: const Text(
                "Alert 2",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                showAlert2(context);
              },
            ),
            MaterialButton(
              color: Colors.black,
              child: const Text(
                "Alert 3",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                showAlert3(context);
              },
            ),
            MaterialButton(
              color: Colors.black,
              child: const Text(
                "Alert 4",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                showAlert4(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
