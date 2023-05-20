import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kolazz_book/Views/Add_Quotation/MoreQuatations.dart';

import '../../Controller/addQuatation_controller.dart';
import '../../Utils/colors.dart';
import '../../Widgets/custom_appbutton.dart';
import '../../foodddddddddddddddddddd.dart';

class AddQuotation extends StatefulWidget {
  const AddQuotation({Key? key}) : super(key: key);

  @override
  State<AddQuotation> createState() => _AddQuotationState();
}

class _AddQuotationState extends State<AddQuotation> {

  var items = [
    'Drone',
    'Candid Photography',
  ];
  String? dropdownValue;
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: AddQuatationController(),
      builder:(controller) {
      return Scaffold(
        backgroundColor: AppColors.back,
        appBar: AppBar(
          leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back_ios, color:AppColors.AppbtnColor,)),
          backgroundColor:AppColors.secondary ,
          actions: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Center(child: Text("Add New Quotation",
                  style: TextStyle(fontSize: 16, color:AppColors.AppbtnColor, fontWeight: FontWeight.bold)
              ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20,),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.teamcard2,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            const Text("Auto Q ID",style: TextStyle(color: AppColors.pdfbtn),),
                            Padding(
                              padding:  EdgeInsets.symmetric(vertical: 8.0,horizontal:0 ),
                              child: Container(

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.containerclr2),
                                padding: EdgeInsets.symmetric(vertical: 5),
                                width: MediaQuery.of(context).size.width/2.1,
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text("Q001",style: TextStyle(color: AppColors.textclr),),
                                ),),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("Client Name",style: TextStyle(color: AppColors.pdfbtn),),
                            Padding(
                              padding:  EdgeInsets.symmetric(vertical: 8.0,horizontal:0 ),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.containerclr2),
                                padding: EdgeInsets.symmetric(vertical: 5),
                                width: MediaQuery.of(context).size.width/2.1,
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text("Kinjal Patel",style: TextStyle(color: AppColors.textclr),),
                                ),),
                            )

                          ],
                        ) ,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("City/Venue",style: TextStyle(color: AppColors.pdfbtn),),
                            Padding(
                              padding:  EdgeInsets.symmetric(vertical: 8.0,horizontal:0 ),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.containerclr2),
                                padding: EdgeInsets.symmetric(vertical: 5),
                                width: MediaQuery.of(context).size.width/2.1,
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text("Kanpur",style: TextStyle(color: AppColors.textclr),),
                                ),),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Event",style: TextStyle(color: AppColors.pdfbtn),),
                            Padding(
                              padding:  EdgeInsets.symmetric(vertical: 8.0,horizontal:0 ),
                              child: Container(

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: AppColors.containerclr2),
                                padding: EdgeInsets.symmetric(vertical: 5),
                                width: MediaQuery.of(context).size.width/2.1,
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Text("Wedding",style: TextStyle(color: AppColors.textclr),),
                                ),),
                            )

                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Wrap(
                  // crossAxisAlignment: WrapCrossAlignment.start,
                  alignment: WrapAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height:50,
                          child: ListView.builder(
                            itemCount:
                            2,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return  Container(decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(8),topLeft: Radius.circular(8)),
                                color: AppColors.teamcard2,
                              ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                                    decoration: BoxDecoration(
                                      color:AppColors.datecontainer,

                                    ),
                                    child: Text("22/2/2023",style: TextStyle(color: AppColors.textclr),),
                                  ),
                                ),
                              );
                            },),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp ()));
                            },
                              child: Icon(Icons.add_circle_outline,color: AppColors.temtextclr,size: 30,)),
                        ),
                        Text("Add Date",style: TextStyle(color: AppColors.temtextclr,fontSize: 16,fontWeight: FontWeight.bold),)

                      ],
                    ),
                    // Container(
                    //   margin: EdgeInsets.zero,
                    //
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.only(topRight: Radius.circular(8),topLeft: Radius.circular(8)),
                    //   color: AppColors.teamcard2,
                    // ),
                    //   child: Padding(
                    //     padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
                    //     child: Container(
                    //       padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    //       decoration: BoxDecoration(
                    //         color:AppColors.datecontainer,
                    //
                    //       ),
                    //       child: Text("22/2/2023",style: TextStyle(color: AppColors.textclr),),
                    //     ),
                    //   ),
                    // ),
                  ],),
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.teamcard2,
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10))
                  ),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,

                        child: Text("(For Developer User Can Hold/Or To Delete This Row)",style: TextStyle(fontStyle: FontStyle.italic,color: AppColors.textclr,fontSize: 12),),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text("Type Of Photographer",style: TextStyle(fontWeight: FontWeight.w500,color: AppColors.textclr,fontSize: 18),),
                              ),
                            ),
                            Container(
                              height: 30,
                              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0),
                                  color: AppColors.datecontainer),
                              width: MediaQuery.of(context).size.width/1.0,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: dropdownValue,
                                  hint:Text("Candid Photography",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.w400),),
                                  icon: const Icon(Icons.keyboard_arrow_down_rounded,
                                    color: Colors.white,),
                                  elevation: 16,
                                  style:  TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),
                                  underline: Container(
                                    // height: 2,
                                    color: Colors.black54,
                                  ),
                                  onChanged: (String? value) {
                                    // This is called when the user selects an item.
                                    setState(() {
                                      dropdownValue = value!;
                                    });
                                  },
                                  items: items
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 30,
                              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0),
                                  color: AppColors.datecontainer),
                              width: MediaQuery.of(context).size.width/1.0,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: dropdownValue,
                                  hint:Text("Candid Photography",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.w400),),
                                  icon: const Icon(Icons.keyboard_arrow_down_rounded,
                                    color: Colors.white,),
                                  elevation: 16,
                                  style:  TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),
                                  underline: Container(
                                    // height: 2,
                                    color: Colors.black54,
                                  ),
                                  onChanged: (String? value) {
                                    // This is called when the user selects an item.
                                    setState(() {
                                      dropdownValue = value!;
                                    });
                                  },
                                  items: items
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),

                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 30,
                              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0),
                                  color: AppColors.datecontainer),
                              width: MediaQuery.of(context).size.width/1.0,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: dropdownValue,
                                  hint:Text("Traditional Photography",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.w400),),
                                  icon: const Icon(Icons.keyboard_arrow_down_rounded,
                                    color: Colors.white,),
                                  elevation: 16,
                                  style:  TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),
                                  underline: Container(
                                    // height: 2,
                                    color: Colors.black54,
                                  ),
                                  onChanged: (String? value) {
                                    // This is called when the user selects an item.
                                    setState(() {
                                      dropdownValue = value!;
                                    });
                                  },
                                  items: items
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 30,
                              padding: EdgeInsets.symmetric(horizontal: 8,vertical: 0),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(0),
                                  color: AppColors.datecontainer),
                              width: MediaQuery.of(context).size.width/1.0,
                              child: DropdownButtonHideUnderline(
                                child: DropdownButton<String>(
                                  value: dropdownValue,
                                  hint:Text("Traditional Photography",style: TextStyle(color: AppColors.textclr,fontWeight: FontWeight.w400),),
                                  icon: const Icon(Icons.keyboard_arrow_down_rounded,
                                    color: Colors.white,),
                                  elevation: 16,
                                  style:  TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),
                                  underline: Container(
                                    // height: 2,
                                    color: Colors.black54,
                                  ),
                                  onChanged: (String? value) {
                                    // This is called when the user selects an item.
                                    setState(() {
                                      dropdownValue = value!;
                                    });
                                  },
                                  items: items
                                      .map<DropdownMenuItem<String>>((String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,

                        child: Text("(For Developer User Can Hold/Or To Delete This Row)",style: TextStyle(fontStyle: FontStyle.italic,color: AppColors.textclr,fontSize: 13),),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Icon(Icons.add_circle_outline,color: AppColors.temtextclr,size: 30,),
                      ),
                      Text("Add Type Of Photographer",style: TextStyle(color: AppColors.temtextclr,fontSize: 16,fontWeight: FontWeight.bold),),
                      SizedBox(height: 20,),

                    ],
                  ),
                ),
                SizedBox(height: 20,),

                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Output",style: TextStyle(color: AppColors.textclr,fontSize: 19,fontWeight: FontWeight.bold),),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.teamcard,

                            borderRadius: BorderRadius.circular(10)),
                        height: 35,
                        width: MediaQuery.of(context).size.width/1.7,
                      )
                    ],),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Amount",style: TextStyle(color: AppColors.textclr,fontSize: 19,fontWeight: FontWeight.bold,overflow: TextOverflow.ellipsis),),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.teamcard,

                            borderRadius: BorderRadius.circular(10)),
                        height: 35,
                        width: MediaQuery.of(context).size.width/1.7,
                      )
                    ],),
                ),
                SizedBox(height: 30,),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MoreQuatations()));
                  },
                  child: Container(
                    height: 55,
                    width: MediaQuery.of(context).size.width/1.3,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color:AppColors.pdfbtn
                    ),
                    child: Center(
                      child: Text("Add",
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.whit)),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
              ],
            ),
          ),
        ),
      );
    },);
  }
}
