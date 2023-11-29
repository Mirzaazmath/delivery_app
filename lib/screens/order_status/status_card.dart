import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../components/text_component.dart';

Widget getStatusCard(String id,context){
    switch(id) {
      ///////// Order pending ///////////////
      case "1": {
        return  Stack(
            children: [
              SizedBox(
                height: 150,
                child: Column(
                  children: [
                    Container(
                        height: 40,
                        color: Theme.of(context).primaryColor
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:  Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 150,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextUtil(text: "Order pending",color: const Color(0xff0861a5),size: 20,),
                                  const SizedBox(height: 5,),
                                  TextUtil(text: "Your order is not complete",color:const Color(0xff0861a5),size: 13,),
                                ],
                              ),
                            ),
                            const  SizedBox(height: 30,
                                width: 30,
                                child:  CircularProgressIndicator(

                                )
                            )
                          ],
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                          thickness: 1,
                        ),
                        TextUtil(text: "We haven't received your payment",color:const Color(0xff0861a5),size: 13,),
                        const  SizedBox(height: 15,),
                        Row(
                          children: [
                            GestureDetector(
                              onTap:(){},
                              child: Container(
                                height: 30,
                                width: 120,
                                //width: double.infinity,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                alignment: Alignment.center,
                                child: TextUtil(text: "cancel order",color:const  Color(0xff0861a5),size: 15,),
                              ),
                            ),
                            const SizedBox(width: 20,),
                            Expanded(
                              child: Container(
                                height: 30,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color:const Color(0xff0960a3),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                alignment: Alignment.center,
                                child: TextUtil(text: "Retry payment",color: Colors.white,size: 15,),
                              ),
                            )
                          ],
                        )

                      ],
                    ),

                  ),
                ),


              )]);

      }
    ///////// Order Placed ///////////////
      case "2": {
        return Stack(
            children: [
              SizedBox(
                height: 70,
                child: Column(
                  children: [
                    Container(
                        height: 40,
                        color: Theme.of(context).primaryColor
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:  Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 70,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextUtil(text: "Order placed",color: const Color(0xff0861a5),size: 20,),
                                  const SizedBox(height: 5,),
                                  TextUtil(text: "We'll review and confirm your order",color:const Color(0xff0861a5),size: 13,),
                                ],
                              ),
                            ),
                            const  Icon(Icons.done,size: 40,color:Color(0xff0861a5),)
                          ],
                        ),





                      ],
                    ),

                  ),
                ),


              )]);
      }
    ///////// Order confirmed ///////////////
      case "3": {
        return Stack(
            children: [
              SizedBox(
                height: 70,
                child: Column(
                  children: [
                    Container(
                        height: 40,
                        color: Theme.of(context).primaryColor
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:  Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 70,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextUtil(text: "Order confirmed",color: const Color(0xff0861a5),size: 20,),
                                  const SizedBox(height: 5,),
                                  TextUtil(text: "We'll notify when your order is ready",color:const Color(0xff0861a5),size: 13,),
                                ],
                              ),
                            ),
                            const  Icon(Icons.done,size: 40,color:Color(0xff0861a5),)
                          ],
                        ),





                      ],
                    ),

                  ),
                ),


              )]);
      }
    ///////// Order ready ///////////////
      case "4": {
        return Stack(
            children: [
              SizedBox(
                height: 70,
                child: Column(
                  children: [
                    Container(
                        height: 40,
                        color: Theme.of(context).primaryColor
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:  Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 70,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextUtil(text: "Order ready",color: const Color(0xff0861a5),size: 20,),
                                  const SizedBox(height: 5,),
                                  TextUtil(text: "We'll notify when driver is allocated",color:const Color(0xff0861a5),size: 13,),
                                ],
                              ),
                            ),
                            const  Icon(Icons.done,size: 40,color:Color(0xff0861a5),)
                          ],
                        ),





                      ],
                    ),

                  ),
                ),


              )]);
      }
    ///////// Driver allocted ///////////////
      case "5": {
        return Stack(
            children: [
              SizedBox(
                height: 70,
                child: Column(
                  children: [
                    Container(
                        height: 40,
                        color: Theme.of(context).primaryColor
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:  Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 70,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextUtil(text: "Driver allocated",color: const Color(0xff0861a5),size: 20,),
                                  const SizedBox(height: 5,),
                                  TextUtil(text: "We'll notify when driver is out for delivery",color:const Color(0xff0861a5),size: 13,),
                                ],
                              ),
                            ),
                            const  Icon(Icons.done,size: 40,color:Color(0xff0861a5),)
                          ],
                        ),





                      ],
                    ),

                  ),
                ),


              )]);
      }
    ///////// Out for delivery ///////////////
      case "6": {
        return Stack(
          alignment: Alignment.bottomCenter,
            children: [
              SizedBox(
                height: 350,
                child: Column(
                  children: [
                    Container(
                        height: 270,
                       decoration: BoxDecoration(
                         image: DecorationImage(
                           image: AssetImage("assets/map.jpeg"),fit: BoxFit.fill
                         )
                       ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:  Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 130,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextUtil(text: "Out for delivery",color: Colors.brown,size: 20,),
                                  const SizedBox(height: 5,),
                                  TextUtil(text: "Your order is on the way",color:const Color(0xff0861a5),size: 13,),
                                ],
                              ),
                            ),
                            const Icon(Icons.share_location,size: 40,color: Colors.brown,)
                          ],
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                          thickness: 1,
                        ),
                        const SizedBox(height: 10,),
                        GestureDetector(
                          onTap:(){},
                          child: Container(
                            height: 30,
                            width: double.infinity,
                            //width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            alignment: Alignment.center,
                            child: TextUtil(text: "Call driver",color:const  Color(0xff0861a5),size: 15,),
                          ),
                        ),




                      ],
                    ),

                  ),
                ),


              )]);
      }
    ///////// Order Delivered ///////////////
      case "7": {
        return Stack(
            children: [
              SizedBox(
                height: 150,
                child: Column(
                  children: [
                    Container(
                        height: 40,
                        color: Theme.of(context).primaryColor
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:  Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 130,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextUtil(text: "Order delivered",color: Colors.green,size: 20,),
                                  const SizedBox(height: 5,),
                                  TextUtil(text: "Your order is delivered to you",color:const Color(0xff0861a5),size: 13,),
                                ],
                              ),
                            ),
                            const Icon(Icons.done,size: 40,color: Colors.green,)
                          ],
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                          thickness: 1,
                        ),
                        const SizedBox(height: 10,),
                        GestureDetector(
                          onTap:(){},
                          child: Container(
                            height: 30,
                            width: double.infinity,
                            //width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            alignment: Alignment.center,
                            child: TextUtil(text: "Download Invoice",color:const  Color(0xff0861a5),size: 15,),
                          ),
                        ),




                      ],
                    ),

                  ),
                ),


              )]);
      }
    ///////// Order Cancelled ///////////////
      case "8": {
        return Stack(
            children: [
              SizedBox(
                height: 150,
                child: Column(
                  children: [
                    Container(
                        height: 40,
                        color: Theme.of(context).primaryColor
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child:  Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 120,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  TextUtil(text: "Order cancelled",color: Colors.red,size: 20,),
                                  const SizedBox(height: 5,),
                                  TextUtil(text: "Your order is cancelled ",color:const Color(0xff0861a5),size: 13,),
                                ],
                              ),
                            ),
                            const Icon(Icons.close,size: 40,color: Colors.red,)
                          ],
                        ),
                        Divider(
                          color: Colors.grey.shade300,
                          thickness: 1,
                        ),
                        const SizedBox(height: 10,),
                        TextUtil(text: "Refund Initiated",color:const  Color(0xff0861a5),size: 15,),




                      ],
                    ),

                  ),
                ),


              )]);
      }

      default: {
        return Container();
      }

    }

  }