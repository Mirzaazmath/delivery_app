import 'package:delivery_app/components/text_component.dart';
import 'package:flutter/material.dart';
class OrderDetailScreen extends StatelessWidget {
  const OrderDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
        centerTitle: false,
        title: const Text("Order"),
        bottom:PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 30,
                    color: Theme.of(context).primaryColor,
                  ),
                  Container(
                    height: 30,
                    color: Colors.white,
                  ),
                ],
              ),
              Center(
                child: Container(
                  height: 60,
                  padding:const EdgeInsets.symmetric(horizontal: 20),
                  margin:const  EdgeInsets.symmetric(horizontal: 20),
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
                     const Icon(Icons.fire_truck_outlined),
                     const SizedBox(width: 10,),
                      Expanded(child: TextUtil(text: "Fuel Level in tank",color: const Color(0xff0960a3),)),
                     ClipRRect(
                       borderRadius: BorderRadius.circular(5),
                       child: SizedBox(
                         height: 40,
                         width: 60,
                         child:  Image.asset("assets/feul.webp",fit: BoxFit.fill,),
                       ),
                     )

                    ],
                  ),
                ),
              ),
            ],
          ),



        )
      ),
      body: SingleChildScrollView(
        child: Container(

          width: double.infinity,
          margin:const  EdgeInsets.all(20),
          padding:const  EdgeInsets.all(10),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             TextUtil(text: "Order #1234",color: const Color(0xff0960a3),),
             const  Divider(thickness: 1.3,),
              Row(
                children: [
                 const  Icon(Icons.location_on_outlined,size: 18,),
                const   SizedBox(width: 10,),
                  Expanded(child: TextUtil(text: "Delivery address",size: 12,)),
                 Transform.rotate(
                   angle: -0.5,
                    child:const Icon(Icons.send_outlined,color: Color(0xff0960a3),))
                ],
              ),
              const SizedBox(height: 10,),
              TextUtil(text: "Prudent Globaltech Solutions Pvt.Ltd",size: 14,),
              const SizedBox(height: 10,),
             const  Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever "),
              const SizedBox(height: 10,),
              TextUtil(text: "Delivery Items",color: const Color(0xff0960a3),),
              const SizedBox(height: 10,),
              const  Divider(thickness: 1.3,),
              SizedBox(
                 height: 250,
              child: ListView.builder(
                  padding:const  EdgeInsets.all(10),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context,index){
                    return GestureDetector(

                      child: Container(
                        height: 40,
                        margin: const EdgeInsets.only(bottom: 10),

                        child: Row(
                          children: [
                            Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color:Colors.grey.shade400,
                                ),
                                child:const Icon(Icons.image_outlined,size: 40,color: Colors.grey,)
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextUtil(text: "Item $index",size: 16,weight: true,),
                                    TextUtil(text: "X$index",size: 16,weight: true,),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),

                      ),
                    );

                  }),
                  ),
              const SizedBox(height: 20,),
              Container(
                height: 30,
                width: double.infinity,
                decoration: BoxDecoration(
                  color:const Color(0xff0960a3),
                  borderRadius: BorderRadius.circular(20)
                ),
                alignment: Alignment.center,
                child: TextUtil(text: " start delivery",color: Colors.white,size: 15,),
              )

            ],
          ),
        ),
      ),
    );
  }
}
