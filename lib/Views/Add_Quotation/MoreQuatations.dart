import 'package:flutter/material.dart';

import '../../Utils/colors.dart';
import 'Add_new_quotations.dart';
import 'editequotation.dart';

class MoreQuatations extends StatefulWidget {
  const MoreQuatations({Key? key}) : super(key: key);

  @override
  State<MoreQuatations> createState() => _MoreQuatationsState();
}

class _MoreQuatationsState extends State<MoreQuatations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgruond,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios, color:AppColors.AppbtnColor,)),
        backgroundColor: Color(0xff303030),
        actions: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Center(child: Text("Quotations",
                style: TextStyle(fontSize: 16, color:Color(0xff1E90FF), fontWeight: FontWeight.bold)
            ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(

            children: [
            SizedBox(height: 15,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>EditQuotation()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                    color: AppColors.darkblakcolor,

                    borderRadius: BorderRadius.circular(10)),
                // height: 120,
                width: MediaQuery.of(context).size.width/1.1,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Job ID",style: TextStyle(color: AppColors.AppbtnColor),),
                          Text("KB003",style: TextStyle(color: AppColors.darkblack, decoration: TextDecoration.underline,),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Date",style: TextStyle(color: AppColors.AppbtnColor),),
                          Text("28/April/2023",style: TextStyle(color: AppColors.whit),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Client Name",style: TextStyle(color: AppColors.AppbtnColor),),
                          Text("Kinjal Patel",style: TextStyle(color: AppColors.whit),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0,left: 10,right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("City",style: TextStyle(color: AppColors.AppbtnColor),),
                          Text("Mumbai",style: TextStyle(color: AppColors.whit),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
              SizedBox(height: 580,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => AddQuotation()));
                },
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width/1.2,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: Color(0xff40ACFF)
                  ),
                  child: Center(
                    child: Text("Add New Quotations",
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.whit)),
                  ),
                ),
              ),
          ],
          ),
        ),
      ),
    );
  }
}
