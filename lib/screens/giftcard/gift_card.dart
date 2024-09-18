import 'package:banking_app/common_widgets/common_appbar.dart';
import 'package:flutter/material.dart';

class GiftCardPage extends StatelessWidget {
  const GiftCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CommonAppbar(text: 'Gift Cards'),
        body: Column(
          children: [
            TextField(
              
              decoration: InputDecoration(
                
                hintText: 'Search Gift Cards',
                
              ),
            ),
            Text("Explore by category"),
            // GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context,index)=>{
            //   return Container();
            // })
          ],
        ),
      ),
    );
  }
}