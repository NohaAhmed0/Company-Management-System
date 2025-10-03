import 'package:depi_project/core/cache/elveted_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';




class AddAddress extends StatefulWidget {
  const AddAddress({super.key});

  @override
  State<AddAddress> createState() => _AddAddressState();
}

class _AddAddressState extends State<AddAddress> {
  String? selectedCity = 'Riyadh';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Address',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            _buildLocationBanner(),
            const SizedBox(height: 25.0),


            _buildLabel('City'),
            _buildCityDropdown(),
            const SizedBox(height: 20.0),


            _buildLabel('Region'),
            _buildTextField(
                initialValue: 'Alexander Language School', isReadOnly: true),
            const SizedBox(height: 20.0),


            _buildLabel('Street'),
            _buildTextField(hintText: 'Add Your Street'),
            const SizedBox(height: 20.0),


            _buildLabel('Building'),
            _buildTextField(hintText: 'Add Number of Building'),
            const SizedBox(height: 50.0),

           elvetedButton1(onPressed: () {

           }, title: 'Add')
          ],
        ),
      ),
    );
  }



  Widget _buildLocationBanner() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 12.0),
      decoration: BoxDecoration(
        color: Color(0xFF4B8673),
        borderRadius: BorderRadius.circular(8.0.r),
      ),
      child: Row(
        children: <Widget>[
          CircleAvatar(
            radius: 26.r,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.location_on_rounded,
              size: 24.sp,
              color: Color(0xFFF5DF99)

            ),
          ),
           SizedBox(width: 20.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  <Widget>[
              Text(
                'your location',
                style: TextStyle(
                    color: Color(0x66FFFFFF),
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w500,
                  height: 2,
                  letterSpacing: 0,
                ),
              ),
              Text(
                'Please add address',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                  height: 1.4,
                  letterSpacing: 0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLabel(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xFF161616),
          fontSize: 16.sp,
          fontWeight: FontWeight.w600,
          height: 1.2,
          letterSpacing: -0.36
        ),
      ),
    );
  }

  Widget _buildTextField({
    String? hintText,
    String? initialValue,
    bool isReadOnly = false,
  }) {
    return TextFormField(
      initialValue: initialValue,
      readOnly: isReadOnly,
      style: TextStyle(
      color: Colors.black,
      fontSize: 16.sp,
      fontWeight: FontWeight.w600,
        letterSpacing: 0,
    ),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: const Color(0xFFB5B5B5),
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          letterSpacing: -0.36,
        ),
        fillColor: const Color(0xFFF9FFF6),
        filled: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 15.0.w,
          vertical: 15.0.h,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: const Color(0xFFDFDFDF),
            width: 1.w,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: const Color(0xFFDFDFDF),
            width: 1.w,
          ),
        ),
      ),
    );
  }



  Widget _buildCityDropdown() {
    List<String> cities = ['Riyadh', 'Jeddah', 'Dammam'];

    return DropdownButtonFormField<String>(
      value: selectedCity,
      decoration: InputDecoration(
        fillColor: const Color(0xFFF9FFF6),
        filled: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 14.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: const Color(0xFFDFDFDF),
            width: 1.w,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide(
            color: const Color(0xFFDFDFDF),
            width: 1.w,
          ),
        ),
      ),
      icon: const Icon(
        Icons.keyboard_arrow_down,
        color: Colors.black,
      ),
      style: TextStyle(
        color: Colors.black,
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        letterSpacing: 0,
        height: 1.2,
      ),
      isExpanded: true,
      onChanged: (String? newValue) {
        setState(() {
          selectedCity = newValue;
        });
      },

    items: cities.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }


  }
