import 'package:flutter/material.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {

  final TextEditingController _titleTEcontroller = TextEditingController();
  final TextEditingController _productCodeTEcontroller = TextEditingController();
  final TextEditingController _quantityTEcontroller = TextEditingController();
  final TextEditingController _priceTEcontroller = TextEditingController();
  final TextEditingController _totalPriceTEcontroller = TextEditingController();
  final TextEditingController _descriptionTEcontroller = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add New Product"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextFormField(
              controller: _titleTEcontroller,
              decoration: InputDecoration(
                label: Text("Title"),
                hintText: "Enter Product Title",
                focusedBorder: OutlineInputBorder(

                )
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: _productCodeTEcontroller,
              decoration: InputDecoration(
                  label: Text("Product Code"),
                  hintText: "Enter Product Code",
                  focusedBorder: OutlineInputBorder(

                  )
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: _quantityTEcontroller,
              decoration: InputDecoration(
                  label: Text("Quantity"),
                  hintText: "Enter Product Quantity",
                  focusedBorder: OutlineInputBorder(

                  )
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: _priceTEcontroller,
              decoration: InputDecoration(
                  label: Text("Price"),
                  hintText: "Enter Product Price",
                  focusedBorder: OutlineInputBorder(

                  )
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: _totalPriceTEcontroller,
              decoration: InputDecoration(

                  label: Text("Total Price"),
                  hintText: "Enter Product Total Price",
                  focusedBorder: OutlineInputBorder(

                  )
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: _descriptionTEcontroller,
              decoration: InputDecoration(
                  label: Text("Description"),
                  hintText: "Enter Product Description",
                  focusedBorder: OutlineInputBorder(

                  )
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              height: 40,
              child: ElevatedButton(onPressed: (){

              }, child: Text("Add"),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(15),
                textStyle: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700
                )
              ),),
            )
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    _titleTEcontroller.dispose();
    _quantityTEcontroller.dispose();
    _productCodeTEcontroller.dispose();
    _priceTEcontroller.dispose();
    _totalPriceTEcontroller.dispose();
    _descriptionTEcontroller.dispose();
    super.dispose();
  }
}
