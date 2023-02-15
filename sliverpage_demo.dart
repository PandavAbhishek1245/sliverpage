import 'package:flutter/material.dart';


class SliverpageDemo extends StatefulWidget {
  const SliverpageDemo({Key? key}) : super(key: key);

  @override
  State<SliverpageDemo> createState() => _SliverpageDemoState();
}

class _SliverpageDemoState extends State<SliverpageDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              snap: false,
              floating: false,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                title: Padding(
                  padding: EdgeInsets.only(left: 30),
                  child: Text('SliverAppbar'),
                ),
                background: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRF7U1ptamvGOzO79KG1EWQhqkjskayanLrc7R528xTkNQ3_-fV0QZISLIZQ1KBlcCenDw&usqp=CAU',fit: BoxFit.fill,
                ),
              ),
            ),

            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Container(
                       color: index.isEven?Colors.blue:Colors.green,
                        height: 100,
                        child: Center(
                          child: Text('$index',textScaleFactor:3),
                        ),

                      );
                    },
                childCount: 20,
                    ),
            ),


            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                         color: index%2==0?Colors.orange:Colors.purple,
                      ),
                        child: Center(
                          child: Text(
                            '$index',
                            style: TextStyle(color: Colors.white,fontSize: 40),
                          ),
                        ),
                    );
                    },childCount: 20,), gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
               ),
              ),

          ],
        ),
      ),
    );
  }
}
