import 'package:delivery_app/components/text_component.dart';
import 'package:delivery_app/screens/order_status/status_card.dart';
import 'package:flutter/material.dart';
class OrderStatusScreen extends StatefulWidget {
  const OrderStatusScreen({super.key});

  @override
  State<OrderStatusScreen> createState() => _OrderStatusScreenState();
}

class _OrderStatusScreenState extends State<OrderStatusScreen> {
  String selectedMenu="1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading:const  Icon(Icons.arrow_back),
        centerTitle: false,
        foregroundColor: Colors.black,
        title: const Text("Order #123453"),
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        actions: [PopupMenuButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          initialValue: selectedMenu,
          // Callback that sets the selected popup menu item.
          onSelected: (item) {
            setState(() {
              selectedMenu = item;
            });
          },
          itemBuilder: (BuildContext context) => <PopupMenuEntry>[
            const PopupMenuItem(
              value: "1",
              child: Text('Order pending'),
            ),
            const PopupMenuItem(
              value: "2",
              child: Text('Order placed'),
            ),
            const PopupMenuItem(
              value: "3",
              child: Text('Order confirmed'),
            ),
            const PopupMenuItem(
              value: "4",
              child: Text('Order ready'),
            ),
            const PopupMenuItem(
              value: "5",
              child: Text('Diver allocated'),
            ),
            const PopupMenuItem(
              value: "6",
              child: Text('Out for delivery'),
            ),
            const PopupMenuItem(
              value: "7",
              child: Text('Order Delivered'),
            ),
            const PopupMenuItem(
              value: "8",
              child: Text('Order cancelled'),
            ),
          ],
        ),],

      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getStatusCard(selectedMenu,context),

             Padding(
               padding:const EdgeInsets.symmetric(horizontal: 16),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24,),
                TitleText(text: "Delivery info",),
                const SizedBox(height: 16,),
                DescriptionText(text: "Delivery Location",),
                const SizedBox(height: 8,),
                  DescriptionText(text: "Apollo Hospital Gachibowli,#123,Street,Main,Cross,Karnataka,Bengaluru,India",),
                const SizedBox(height: 16,),
                DescriptionText(text: "Delivery Slot",color: Colors.black,),
                const SizedBox(height: 8,),
                  DescriptionText(text: "15 Sep 2023 - Between 12pm to 3pm"),
                const SizedBox(height: 24,),
                TitleText(text: "Order Summary",),
                const SizedBox(height: 16,),
                ListView.builder(
                    shrinkWrap: true,
                    physics:const  NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context,index){
                      return GestureDetector(

                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                            children: [
                              DescriptionText(text: "Item x $index",color:const  Color(0xff1A1C1E),),

                              DescriptionText(text: "Rs.1200",),
                            ],
                          ),
                        ),
                      );

                    }),
               const  Divider(
                 height: 32,
                 color: Color(0xffC3C6CF),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    DescriptionText(text: "Item Total",color:const  Color(0xff1A1C1E)),
                    DescriptionText(text: "Rs.10,2300"),
                  ],
                ),
                const SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    DescriptionText(text: "Delivery fee",color:const  Color(0xff1A1C1E)),
                    DescriptionText(text: "Rs.1200",),
                  ],
                ),
                const SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    DescriptionText(text: "Gst on delivery fee",color:const  Color(0xff1A1C1E)),
                    DescriptionText(text: "Rs.1200",color:const  Color(0xff1A1C1E),),
                  ],
                ), const SizedBox(height: 5,),
                DescriptionText(text: "18%",color:const  Color(0xff73777F),),
                const  Divider(
                  height: 32,
                  color: Color(0xffC3C6CF),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    TitleText(text: "Total Bill"),
                    TitleText(text: "Rs.12,300",),
                  ],
                ),
                const   SizedBox(height:24,),
                TitleText(text: "Payment summary",),
                const SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    DescriptionText(text: "FuelGenie Credits",color:const   Color(0xff1A1C1E),),
                    DescriptionText(text: "Rs.12,000",),
                  ],
                ), const SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    DescriptionText(text: "Online payment",color:const   Color(0xff1A1C1E),),
                    DescriptionText(text: "Rs.300",),
                  ],
                ),
                const  Divider(
                  height: 32,
                  color: Color(0xffC3C6CF),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    TitleText(text: "Total Paid",),
                    TitleText(text: "Rs.00",),
                  ],
                ),
              const   SizedBox(height: 20,),


              ],
            ),)
          ],
        ),
      ),

    );
  }



  }


