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
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Container(
                    padding: const EdgeInsets.all(16),

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
                                  TextUtil(text: "Order pending",color: const Color(0xff001C37),size: 24,),
                                  const SizedBox(height: 4,),
                                  DescriptionText(text: "Your order is not complete",color:const Color(0xff001C37)),
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
                        const Divider(
                          height: 32,
                          color: Color(0xffC3C6CF)

                        ),
                        DescriptionText(text: "We haven't received your payment",color:const Color(0xff001C37)),
                        const  SizedBox(height: 16,),
                        Row(
                          children: [
                            GestureDetector(
                              onTap:(){},
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 24),
                                height: 40,
                                width: 141,
                                //width: double.infinity,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                alignment: Alignment.center,
                                child: DescriptionText(text: "cancel order",color:const  Color(0xff0961A4)),
                              ),
                            ),
                            const SizedBox(width: 20,),
                            Expanded(
                              child: Container(
                                height: 40,
                                width: 199,
                                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 24),
                                decoration: BoxDecoration(
                                    color:const Color(0xff0961A4),
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                alignment: Alignment.center,
                                child: DescriptionText(text: "Retry payment",color: Colors.white,),
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
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Container(
                    padding: const EdgeInsets.all(16),

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
                                  TextUtil(text: "Order placed",color: const Color(0xff001C37),size: 24,),
                                  const SizedBox(height: 4,),
                                  DescriptionText(text: "We'll review and confirm your order",color:const Color(0xff001C37)),

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
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Container(
                    padding: const EdgeInsets.all(16),

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
                                  TextUtil(text: "Order Confirm",color: const Color(0xff001C37),size: 24,),
                                  const SizedBox(height: 4,),
                                  DescriptionText(text: "We’ll notify when your order is ready",color:const Color(0xff001C37)),

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
        return  Stack(
            children: [
              SizedBox(

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
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Container(
                    padding: const EdgeInsets.all(16),

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
                                  TextUtil(text: "Order ready",color: const Color(0xff001C37),size: 24,),
                                  const SizedBox(height: 4,),
                                  DescriptionText(text: "We’ll review and confirm your order",color:const Color(0xff001C37)),

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
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Container(
                    padding: const EdgeInsets.all(16),

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
                                  TextUtil(text: "Driver allocated",color: const Color(0xff001C37),size: 24,),
                                  const SizedBox(height: 4,),
                                  DescriptionText(text: "We’ll review and confirm your order",color:const Color(0xff001C37)),

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
                       decoration:const  BoxDecoration(
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
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Container(
                    padding: const EdgeInsets.all(16),

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
                                  TextUtil(text: "Out for delivery",color:const  Color(0xff845400),size: 24,),
                                  const SizedBox(height: 4,),
                                  TextUtil(text: "Your order is on the way",color:const Color(0xff001C37),size: 13,),
                                ],
                              ),
                            ),
                            const Icon(Icons.share_location,size: 40,color: Color(0xff845400),)
                          ],
                        ),
                       const  Divider(
                          height: 32,
                          color: Color(0xffC3C6CF),

                        ),
                        const SizedBox(height: 10,),
                        GestureDetector(
                          onTap:(){},
                          child: Container(
                           padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                            width: double.infinity,
                            //width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            alignment: Alignment.center,
                            child: DescriptionText(text: "Call driver",color:const  Color(0xff0961A4)),
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
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Container(
                    padding: const EdgeInsets.all(16),

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
                                  TextUtil(text: "Order delivered",color:const  Color(0xff098915),size: 24,),
                                  const SizedBox(height: 4,),
                                  DescriptionText(text: "Your order is delivered to you",color:const Color(0xff001C37)),
                                ],
                              ),
                            ),
                            const Icon(Icons.done,size: 40,color: Colors.green,)
                          ],
                        ),
                       const  Divider(
                          height: 32,
                          color: Color(0xffC3C6CF),

                        ),
                        const SizedBox(height: 10,),
                        GestureDetector(
                          onTap:(){},
                          child: Container(
                          padding:const  EdgeInsets.symmetric(vertical: 10,horizontal: 24),
                            width: double.infinity,
                            //width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(20)
                            ),
                            alignment: Alignment.center,
                            child: DescriptionText(text: "Download Invoice",color:const  Color(0xff0961A4)),
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
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  child: Container(
                    padding: const EdgeInsets.all(16),

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
                                  TextUtil(text: "Order cancelled",color:const  Color(0xffBA1A1A),size: 24,),
                                  const SizedBox(height: 4,),
                                  DescriptionText(text: "Your order is cancelled ",color:const Color(0xff001C37),),
                                ],
                              ),
                            ),
                            const Icon(Icons.close,size: 40,color: Color(0xffBA1A1A),)
                          ],
                        ),
                       const  Divider(
                          height: 32,
                          color: Color(0xffC3C6CF),

                        ),

                        DescriptionText(text: "Refund Initiated",color:const  Color(0xff001C37)),




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