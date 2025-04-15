import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_task_again/widgets/custom.dart';
import 'package:new_task_again/widgets/Dropdown.dart';

import 'package:new_task_again/colors/customcolor.dart';

class Bookappointment extends StatefulWidget {


  Bookappointment ({super.key});

  @override
  State<Bookappointment> createState() => _BookappointmentState();
}

class _BookappointmentState extends State<Bookappointment> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController UHIDController = TextEditingController();
  final TextEditingController panCardController = TextEditingController();
  final TextEditingController cardNoController = TextEditingController();
  final TextEditingController ServiceSrNoController = TextEditingController();
  final TextEditingController mobileController = TextEditingController();
  final TextEditingController rankController = TextEditingController();
  final TextEditingController dateTimeController = TextEditingController();
  final TextEditingController OPDFeeController = TextEditingController();
  final TextEditingController NameController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController AddressController = TextEditingController();
  final TextEditingController CountryController = TextEditingController();
  final TextEditingController StateController = TextEditingController();
  final TextEditingController CityController = TextEditingController();
  final TextEditingController DiscountController = TextEditingController();
  final TextEditingController RemarksController = TextEditingController();
  final TextEditingController RefMobController = TextEditingController();




  String? selectedPanel;
  String? selectedDepartment;
  String? selectedDoctor;
  String? selectedSlot;
  String? selectedMr;
  String? selectedRelation;
  String? selectedGender;
  String? selectedStatus;
  String? selectedBloodG;
  String? selectedSource;
  String? selectedPayment;






  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: Text("Book Appointment"),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text("Enter UHID",style:TextStyle(
              //   fontSize: 14.sp,
              //   fontWeight: FontWeight.w600,
              //   fontFamily: 'Inter',
              // ),),
              // InputField(
              //   controller: UHIDController,
              //   hintText: " Enter UHID",
              //   keyboardType: TextInputType.text,
              //   textCapitalization: TextCapitalization.none,
              //   maxLine: 1,
              //   data: "UHID",
              // ),
              SizedBox(height: 10.h,),
              Text("Date & Time",style:TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Inter',
              ),),
              InputField(
                controller: dateTimeController,
                hintText: "2025-03-22 16:05:55",
                keyboardType: TextInputType.datetime,
                textCapitalization: TextCapitalization.none,
                maxLine: 1,
                data: "date & time",
              ),
              SizedBox(height: 10.h,),
              Text("Email",style:TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
              ),),
              InputField(
                controller: emailController,
                hintText: "Enter your Email",
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.none,
                maxLine: 1,
                data: "Email",
              ),
              SizedBox(height: 10.h,),
              // Text("Pan Card",style:TextStyle(
              //   fontSize: 14.sp,
              //   fontWeight: FontWeight.w600,
              //   fontFamily: 'Inter',
              // ),),
              // InputField(
              //   controller: panCardController,
              //   hintText: "Enter your PAN NUMBER",
              //   keyboardType: TextInputType.text,
              //   textCapitalization: TextCapitalization.none,
              //   maxLine: 1,
              //   data: "Pan Number",
              // ),
              Text("Mobile",style:TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
              ),),
              InputField(
                controller: mobileController,
                hintText: "Enter your Mobile Number",
                keyboardType: TextInputType.number,
                textCapitalization: TextCapitalization.none,
                maxLine: 1,
                data: "Mobile Number",
              ),
              // SizedBox(height: 10.h,),

              // Row(
              //   children: [
              //     Expanded(child:Text("Panel",style:TextStyle(
              //       fontSize: 14.sp,
              //       fontWeight: FontWeight.w600,
              //       fontFamily: 'Inter',
              //     ),),
              //
              //     ),SizedBox(width: 10.w,),

                  // Expanded(
                  //   child:  Text("Card No.",style:TextStyle(
                  //     fontSize: 14.sp,
                  //     fontWeight: FontWeight.w600,
                  //     fontFamily: 'Inter',
                  //   ),),
                  // ),

              //   ],
              // ),Row(
              //   children: [
              //     Expanded(child:
              //     CustomDropdown(
              //         hintText: 'Select a panel',
              //         items: ['Arogya', 'Apollo', 'Max', 'Medicare','Examples'],
              //         value: selectedPanel,
              //         onChanged:(val){
              //           setState(() {
              //             selectedPanel=val;
              //           });
              //         }
              //     ),),SizedBox(width: 19.w,),

                  // Expanded(
                  //   child: InputField(
                  //     controller: cardNoController,
                  //     hintText: "Enter your Card No.",
                  //     keyboardType: TextInputType.number,
                  //     textCapitalization: TextCapitalization.none,
                  //     maxLine: 1,
                  //     data: "Card No.",
                  //   ),
                  // ),
              //   ],
              // ),
              // SizedBox(height: 10.w,),
              // Text("Service Sr. No.",style:TextStyle(
              //   fontSize: 14.sp,
              //   fontWeight: FontWeight.w600,
              //   fontFamily: 'Inter',
              // ),),
              // InputField(
              //   controller: ServiceSrNoController,
              //   hintText: "Enter Service Sr. No.",
              //   keyboardType: TextInputType.text,
              //   textCapitalization: TextCapitalization.none,
              //   maxLine: 1,
              //   data: "Service Sr. No.",
              // ),
              // SizedBox(height: 10.w,),
              // Text("Rank",style:TextStyle(
              //   fontSize: 14.sp,
              //   fontWeight: FontWeight.w600,
              //   fontFamily: 'Inter',
              // ),),
              // InputField(
              //   controller: rankController,
              //   hintText: "Enter Rank",
              //   keyboardType: TextInputType.text,
              //   textCapitalization: TextCapitalization.none,
              //   maxLine: 1,
              //   data: "rank",
              // ),
              // SizedBox(height: 10.w,),
              // Row(
              //   children: [
              //     Expanded(child:Text("Department",style:TextStyle(
              //       fontSize: 14.sp,
              //       fontWeight: FontWeight.w600,
              //       fontFamily: 'Inter',
              //     ),), ),
              //     SizedBox(width: 10.w,),
              //     Expanded(child: Text("Doctor",style:TextStyle(
              //       fontSize: 14.sp,
              //       fontWeight: FontWeight.w600,
              //       fontFamily: 'Inter',
              //     ),), ),
              //   ],
              // ),
              // Row(
              //   children: [
              //     Expanded(child:
              //     CustomDropdown(
              //         hintText:"Select a Department",
              //         items:['option 1','option 2'],
              //         value: selectedDepartment,
              //         onChanged:(val) {
              //           setState(() {
              //             selectedDepartment=val;
              //           });
              //         }
              //     )),
              //     SizedBox(width: 10.w,),
              //     Expanded(child:
              //     CustomDropdown(
              //         hintText:"Select a Doctor",
              //         items:['option 1','option 2'],
              //         value: selectedDoctor,
              //         onChanged:(val) {
              //           setState(() {
              //             selectedDoctor=val;
              //           });
              //         }
              //     ))
              //   ],
              // ),
              SizedBox(height: 10.w,),
              Row(
                children: [
                  Expanded(child:
                  Text("Slot",style:TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                  ),),),
                  // Expanded(
                  //   child: Text("OPD Fee",style:TextStyle(
                  //     fontSize: 14.sp,
                  //     fontWeight: FontWeight.w600,
                  //     fontFamily: 'Inter',
                  //   ),),
                  // ),
                ],
              ),
              Row(
                children: [
                  Expanded(child:
                  CustomDropdown(
                      hintText:"Select a Slot",
                      items:['slot 1','slot 2','slot 3'],
                      value: selectedSlot,
                      onChanged:(val) {
                        setState(() {
                          selectedSlot=val;
                        });
                      }
                  )),
                  SizedBox(width: 10.w,),
                  // Expanded(
                  //   child: InputField(
                  //     controller: OPDFeeController,
                  //     hintText: "Enter",
                  //     keyboardType: TextInputType.number,
                  //     textCapitalization: TextCapitalization.none,
                  //     maxLine: 1,
                  //     data: "OPD Fee",
                  //   ),
                  // ),
                ],
              ),
               SizedBox(height: 10.w,),
               Text("Paitent Name",style:TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
              ),),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: CustomDropdown(
                        hintText:"Select ",
                        items:['Mr','Mrs','Miss'],
                        value: selectedMr,
                        onChanged:(val) {
                          setState(() {
                            selectedMr=val;
                          });
                        }
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  Expanded(
                    flex: 3,
                    child: InputField(
                    controller: NameController,
                    hintText: "Enter Patient Name",
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.none,
                    maxLine: 1,
                    data: "Name",
                  ), )
                ],
              ),
              // SizedBox(height: 10.w,),
              // Text("S/D/W of:",style:TextStyle(
              //   fontSize: 14.sp,
              //   fontWeight: FontWeight.w600,
              //   fontFamily: 'Inter',
              // ),),
              // Row(
              //   children: [
              //     Expanded(
              //       flex: 1,
              //       child: CustomDropdown(
              //           hintText:"Select ",
              //           items:['Mr','Mrs','Miss'],
              //           value: selectedMr,
              //           onChanged:(val) {
              //             setState(() {
              //               selectedMr=val;
              //             });
              //           }
              //       ),
              //     ),
              //     SizedBox(width: 10.w,),
              //     Expanded(
              //       flex: 3,
              //       child: InputField(
              //         controller: NameController,
              //         hintText: "Enter",
              //         keyboardType: TextInputType.text,
              //         textCapitalization: TextCapitalization.none,
              //         maxLine: 1,
              //         data: "Name",
              //       ), )
              //   ],
              // ),
              // SizedBox(height: 10.w,),
              // Text("Height(in cm)",style:TextStyle(
              //   fontSize: 14.sp,s
              //   fontWeight: FontWeight.w600,
              //   fontFamily: 'Inter',
              // ),),
              // InputField(
              //   controller: mobileController,
              //   hintText: "Enter your height",
              //   keyboardType: TextInputType.number,
              //   textCapitalization: TextCapitalization.none,
              //   maxLine: 1,
              //   data: "Height",
              // ),
              // SizedBox(height: 10.w,),
              // Text("Weight(in KG)",style:TextStyle(
              //   fontSize: 14.sp,
              //   fontWeight: FontWeight.w600,
              //   fontFamily: 'Inter',
              // ),),
              // InputField(
              //   controller: mobileController,
              //   hintText: "Enter your weight",
              //   keyboardType: TextInputType.number,
              //   textCapitalization: TextCapitalization.none,
              //   maxLine: 1,
              //   data: "weight",
              // ),
              // SizedBox(height: 10.w,),
              // Row(
              //   children: [
              //     Expanded(child:Text("Relation",style:TextStyle(
              //       fontSize: 14.sp,
              //       fontWeight: FontWeight.w600,
              //       fontFamily: 'Inter',
              //     ),), ),
              //     SizedBox(width: 10.w,),
              //     Expanded(
              SizedBox(height: 10,),
              Text("Gender",style:TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                  ),),
                  // ),
              //   ],
              // // ),
              //
              Row(
                children: [
                  // Expanded(child:
                  // CustomDropdown(
                  //     hintText:"Select Relation",
                  //     items:['Father','Mother','Brother','Sister','Other'],
                  //     value: selectedRelation,
                  //     onChanged:(val) {
                  //       setState(() {
                  //         selectedRelation=val;
                  //       });
                  //     }
                  // )),
                  Expanded(child:
                  CustomDropdown(
                      hintText:"Select Gender",
                      items:['Male','Female'],
                      value: selectedGender,
                      onChanged:(val) {
                        setState(() {
                          selectedGender=val;
                        });
                      }
                  ))
                ],
              ),
              SizedBox(height: 10.w,),
              Row(
                children: [
                  // Expanded(child:Text("Marital",style:TextStyle(
                  //   fontSize: 14.sp,
                  //   fontWeight: FontWeight.w600,
                  //   fontFamily: 'Inter',
                  // ),), ),
                  Expanded(child: Text("DOB",style:TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                  ),), ),
                ],
              ),
              Row(
                children: [
                  // Expanded(child:
                  // CustomDropdown(
                  //     hintText:"Select ",
                  //     items:['Married','Single'],
                  //     value: selectedStatus,
                  //     onChanged:(val) {
                  //       setState(() {
                  //         selectedStatus=val;
                  //       });
                  //     }
                  // ),
                  // ),
                  // SizedBox(width: 10.w,),
                  Expanded(child: InputField(
                    controller: dobController,
                    hintText: "Select DOB",
                    keyboardType: TextInputType.none,
                    textCapitalization: TextCapitalization.none,
                    maxLine: 1,
                    data: "Date of Birth",
                    enable: false, // Important: so the keyboard doesn’t open
                    onTap: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime(2000), // Default date
                        firstDate: DateTime(1900), // Earliest DOB allowed
                        lastDate: DateTime.now(), // Latest DOB is today
                      );
                      if (pickedDate != null) {
                        String formattedDate = "${pickedDate.year}-${pickedDate.month.toString().padLeft(2, '0')}-${pickedDate.day.toString().padLeft(2, '0')}";
                        setState(() {
                          dobController.text = formattedDate;
                        });
                      }
                    },
                  ),

                    )
                ],
              ),
              SizedBox(height: 10.w,),
              Text("Address",style:TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
              ),),
              InputField(
                controller: AddressController,
                hintText: " Enter Address",
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.none,
                maxLine: 1,
                data: "Address",
              ),
              SizedBox(height: 10,),
              Text(" Country",style:TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
              ),),
              InputField(
                controller: CountryController,
                hintText: " Enter Country",
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.none,
                maxLine: 1,
                data: "Country",
              ),
              SizedBox(height: 10,),
              Text("State",style:TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
              ),),
              InputField(
                controller: StateController,
                hintText: " Enter State",
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.none,
                maxLine: 1,
                data: "State",
              ),
              SizedBox(height: 10,),
              Text("City",style:TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
              ),),
              InputField(
                controller: CityController,
                hintText: " Enter City",
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.none,
                maxLine: 1,
                data: "City",
              ),
              SizedBox(height: 10,),
              // Row(
              //   children: [
              //     Expanded(child:Text("Blood Group",style:TextStyle(
              //       fontSize: 14.sp,
              //       fontWeight: FontWeight.w600,
              //       fontFamily: 'Inter',
              //     ),), ),
              //     SizedBox(width: 10.w,),
              //     Expanded(child: Text("Source",style:TextStyle(
              //       fontSize: 14.sp,
              //       fontWeight: FontWeight.w600,
              //       fontFamily: 'Inter',
              //     ),), ),
              //   ],
              // ),
              // Row(
              //   children: [
              //     Expanded(child:
              //     CustomDropdown(
              //         hintText:"Select Blood Group",
              //         items:['A+',
              //           'A−',
              //           'B+',
              //           'B−',
              //           'AB+',
              //           'AB−',
              //           'O+',
              //           'O−',],
              //         value: selectedBloodG,
              //         onChanged:(val) {
              //           setState(() {
              //             selectedBloodG=val;
              //           });
              //         }
              //     )),
              //     SizedBox(width: 10.w,),
              //     Expanded(child:
              //     CustomDropdown(
              //         hintText:"Select Source",
              //         items:['Self',
              //           'Family',
              //           'Friend',
              //           'Referral',
              //           'Online',
              //           'Walk-in',
              //           'Camp',
              //           'Other',],
              //         value: selectedSource,
              //         onChanged:(val) {
              //           setState(() {
              //             selectedSource=val;
              //           });
              //         }
              //     ))
              //   ],
              // ),
              // SizedBox(height: 10.w,),
              // Text("Discount",style:TextStyle(
              //   fontSize: 14.sp,
              //   fontWeight: FontWeight.w600,
              //   fontFamily: 'Inter',
              // ),),
              // InputField(
              //   controller: DiscountController,
              //   hintText: "%",
              //   keyboardType: TextInputType.text,
              //   textCapitalization: TextCapitalization.none,
              //   maxLine: 1,
              //   data: "Discount",
              // ),
              SizedBox(height: 10,),
              Text("Remarks",style:TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter',
              ),),
              InputField(
                controller: RemarksController,
                hintText: "Enter Remarks",
                keyboardType: TextInputType.text,
                textCapitalization: TextCapitalization.none,
                maxLine: 1,
                data: "Remarks",
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Text("Ref Mobile",style:TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                    ),),
                  ),
                  Expanded(child:
                  Text("Payment",style:TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                  ),),),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: InputField(
                      controller: RefMobController,
                      hintText: "Enter",
                      keyboardType: TextInputType.number,
                      textCapitalization: TextCapitalization.none,
                      maxLine: 1,
                      data: "OPD Fee",
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  Expanded(child:
                  CustomDropdown(
                      hintText:"Select a mode",
                      items:['Cash',
                        'Card',
                        'UPI',
                        'Net Banking',
                        'Wallet',
                        'Cheque',
                        'Insurance',
                        'Credit',
                        'Other',],
                      value: selectedPayment,
                      onChanged:(val) {
                        setState(() {
                          selectedPayment=val;
                        });
                      }
                  )),
                ],
              ),
              SizedBox(height: 10.w,),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(onPressed: (){

                      if(_formKey.currentState!.validate()){
                        print("Form submitted");
                      }
                    },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff3BAEDA),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal:20,vertical: 10),

                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.h),
                          )
                        ),
                        child:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Sumbit",style:TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Inter',
                            ),),
                          ],
                        ) ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
