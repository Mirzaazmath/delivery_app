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
               padding:const EdgeInsets.all(15),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextUtil(text: "Delivery info",size: 18,weight: true,),
                const SizedBox(height: 15,),
                TextUtil(text: "Delivery Location",size: 14,weight: true,),
                const SizedBox(height: 5,),
                const  Text("Apollo Hospital Gachibowli,#123,Street,Main,Cross,Karnataka,Bengaluru,India"),
                const SizedBox(height: 15,),
                TextUtil(text: "Delivery Slot",size: 14,weight: true,),
                const SizedBox(height: 5,),
                const  Text("15 Sep 2023 - Between 12pm to 3pm"),
                const SizedBox(height: 15,),
                TextUtil(text: "Order Summary",size: 18,weight: true,),
                const SizedBox(height: 15,),
                ListView.builder(
                    shrinkWrap: true,
                    physics:const  NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context,index){
                      return GestureDetector(

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            TextUtil(text: "Item x $index",size: 15,),
                            TextUtil(text: "Rs.1200",size: 13,),
                          ],
                        ),
                      );

                    }),
               const  Divider(color: Colors.grey,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    TextUtil(text: "Item Total",size: 15,),
                    TextUtil(text: "Rs.10,2300",size: 13,),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    TextUtil(text: "Delivery fee",size: 15,),
                    TextUtil(text: "Rs.1200",size: 13,),
                  ],
                ),
                const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    TextUtil(text: "Gst on delivery fee",size: 15,),
                    TextUtil(text: "Rs.1200",size: 13,),
                  ],
                ), const SizedBox(height: 5,),
                TextUtil(text: "18%",size: 15,color: Colors.grey,),
                const  Divider(color: Colors.grey,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    TextUtil(text: "Total Bill",size: 16,weight: true,),
                    TextUtil(text: "Rs.12,300",size: 16,weight: true,),
                  ],
                ),
                const   SizedBox(height:20,),
                TextUtil(text: "Payment summary",size: 16,weight: true,),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    TextUtil(text: "FuelGenie Credits",size: 15,),
                    TextUtil(text: "Rs.12,000",size: 13,),
                  ],
                ), const SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    TextUtil(text: "Online payment",size: 15,),
                    TextUtil(text: "Rs.300",size: 13,),
                  ],
                ), const SizedBox(height: 5,),
                const  Divider(color: Colors.grey,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    TextUtil(text: "Total Paid",size: 16,weight: true,),
                    TextUtil(text: "Rs.00",size: 16,weight: true,),
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


