import 'package:delivery_app/screens/order_screen.dart';
import 'package:flutter/material.dart';

import '../components/text_component.dart';
class DashBoardScreen extends StatelessWidget {
  const DashBoardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        title: Row(
          children: [
           const  CircleAvatar(
              backgroundImage: AssetImage("assets/myprofile.jpeg"),
            ),
           const  SizedBox(width: 10,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextUtil(text: "Welcome!",size: 12,),
                  TextUtil(text: "Dev_73arner",),
                ],
              ),
            ),

          ],
        ),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.notifications_outlined))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const  SizedBox(height: 20,),
          TextUtil(text: "# Orders",weight: true,),
           const  SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const OrderListScreen(isCompleted: true,)));
                    },
                    child: Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                         BoxShadow(
                           color: Colors.grey.shade300,
                           offset:const  Offset(1,1),
                           blurRadius: 5
                         ),
                         BoxShadow(
                             color: Colors.grey.shade300,
                             offset:const  Offset(-1,-1),
                             blurRadius: 5
                         )
                       ]
                      ),
                      child: Column(

                        children: [
                          Expanded(child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              TextUtil(text: "Completed",weight: true,),
                              const SizedBox(height: 10,),
                              TextUtil(text: "10",weight: true,size: 25,),



                            ],
                          )),
                          Container(
                            height: 5,
                          decoration:const  BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))

                          ),
                          )
                        ],
                      ),

                    ),
                  ),
                ),
               const  SizedBox(width: 20,),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const OrderListScreen(isCompleted: false,)));
                    },
                    child: Container(
                      height: 120,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade300,
                                offset:const  Offset(1,1),
                                blurRadius: 5
                            ),
                            BoxShadow(
                                color: Colors.grey.shade300,
                                offset:const  Offset(-1,-1),
                                blurRadius: 5
                            )
                          ]
                      ),
                      child: Column(

                        children: [
                          Expanded(child:
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [

                              TextUtil(text: "Pending",weight: true,),
                              const SizedBox(height: 10,),
                              TextUtil(text: "15",weight: true,size: 25,),



                            ],
                          )),
                          Container(
                            height: 5,
                            decoration:const  BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.vertical(bottom: Radius.circular(15))

                            ),
                          )
                        ],
                      ),

                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
