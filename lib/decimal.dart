import 'package:flutter/material.dart';
import 'package:units_converter/units_converter.dart';
class Decimal extends StatefulWidget {
  const Decimal({super.key});

  @override
  State<Decimal> createState() => _DecimalState();
}

class _DecimalState extends State<Decimal> {
  String input = "";
  var nums=NumeralSystems();
  String result="";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
            padding: const EdgeInsets.only(top: 9.0),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  keyboardType: TextInputType.number,
                  onChanged: (val) {
                    input = val;
                    


                  
                  },
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 16.0),
                      hintText: "      Decimal Number",
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Colors.black))),
                ),
              ),
            ),
          ),
            ElevatedButton(onPressed: () {
              setState(() {
                nums.convert(NUMERAL_SYSTEMS.decimal, input);
                result = nums.binary.stringValue.toString();
              });
              }, 
            child: Center(child: Text('Convert To Binary'))),


            ElevatedButton(onPressed: () {
              setState(() {
                nums.convert(NUMERAL_SYSTEMS.decimal, input);
                result = nums.octal.stringValue.toString();
              });
              }, 
            child: Center(child: Text('Convert To Octal'))),


            ElevatedButton(onPressed: () {
              setState(() {
                nums.convert(NUMERAL_SYSTEMS.decimal, input);
                result = nums.hexadecimal.stringValue.toString();
              });
              }, 
            child: Center(child: Text('Convert To Hexadecimal'))),
            SizedBox(height: 20,),
            Text(result.toString()),
            SizedBox(height: 20,),
            Text('Developeded By Abishek Deshar')
          ],
        ),
      ),
    );
  }
}