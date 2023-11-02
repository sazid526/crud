import 'package:crud/screen/add_new_product_screen.dart';
import 'package:crud/screen/product_list_screen.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
   const ProductItem({super.key, required this.product});

   final Product product;



  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onLongPress: (){
        showDialog(context: (context), builder: (context){
          return AlertDialog(

            title: Text("Select Actions"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  onTap: (){
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => AddNewProductScreen()));
                  },
                  title: Text("Edit"),
                  leading: Icon(Icons.edit),
                ),
                ListTile(
                  title: Text("Delete"),
                  leading: Icon(Icons.delete),
                )
              ],
            ),
          );
        });
      },
      leading: Image.network(product.image,width: 80,),
      title: Text(product.productName),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(product.productCode),
              SizedBox(width: 30,),
            ],
          ),
          Text("Total Price: ${product.totalPrice}")
        ],
      ),
      trailing: Text("\$120"),
    );
  }
}
