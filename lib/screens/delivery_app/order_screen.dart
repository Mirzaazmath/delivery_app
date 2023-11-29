import 'package:delivery_app/components/text_component.dart';
import 'package:flutter/material.dart';

import 'order_detail_screen.dart';
class OrderListScreen extends StatelessWidget {
 final bool isCompleted;
  const OrderListScreen({super.key,required this.isCompleted});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        title:  Text(isCompleted? "Completed":"Pending"),
      ),
      body: ListView.builder(
        padding:const  EdgeInsets.all(10),
        shrinkWrap: true,
        itemCount: 10,
          itemBuilder: (context,index){
          return GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const OrderDetailScreen()));
            },
            child: Container(
              height: 70,
              margin: const EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:const  Color(0xfff4f3f8),
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
              child: Row(
                children: [
                  Container(
                    width: 60,
                    height: 70,

                    decoration: BoxDecoration(
                      color:isCompleted? Colors.greenAccent.shade700:Colors.grey,
                      borderRadius:const  BorderRadius.horizontal(left: Radius.circular(10)),
                    ),

                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextUtil(text: "23",weight: true,color: Colors.white,),
                        TextUtil(text: "Thu",color: Colors.white,),

                      ],
                    )
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          TextUtil(text: "Order #9876$index",size: 16,weight: true,),
                          const SizedBox(height: 5,),
                          Expanded(
                            child: Row(
                              children: [
                              const   Icon(Icons.location_on,size: 19,),
                               const SizedBox(width: 10,),
                                Expanded(child: TextUtil(text: "Akshya Nagar 1st Block 1st Cross, Rammurthy nagar, Bangalore-560016",size: 12,)),
                              ],
                            ),
                          )

                        ],
                      ),
                    ),
                  )
                ],
              ),

            ),
          );

      }),


    );
  }
}
