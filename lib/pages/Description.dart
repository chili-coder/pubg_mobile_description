import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Description extends StatelessWidget {
  const Description({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 24,
                                width: 4,
                                color: Colors.deepOrange,
                              ),
                              SizedBox(width: 10,),
                              Text("Reviews",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),),
                            ],
                          ),
                          Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,),

                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Text("Avg Rattings",style: TextStyle(color: Colors.black54,fontSize: 12),),
                          SizedBox(width: 10,),
                          RatingBar.builder(
                            initialRating: 4,
                             minRating: 4,
                            direction: Axis.horizontal,
                           // allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                            itemSize: 20,
                            itemBuilder: (context, _) => Icon(Icons.star,
                              color: Colors.deepOrange,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          SizedBox(width: 10,),
                          Text("4",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Total Reviews",style: TextStyle(color: Colors.black54,fontSize: 12),),
                          SizedBox(width: 10,),
                          Text("2167",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 12),),
                        ],
                      ),
                      Divider(thickness: 1,),

                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount:18,
                          itemBuilder: (context,index){
                            return    Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                ListTile(
                                  contentPadding:EdgeInsets.all(0),
                                  leading:ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.asset("assets/images/user.png",height: 40,width: 40,),),
                                  title: Text("Md Sohagh",style: TextStyle(fontSize: 12),),
                                  subtitle: Text("2022/11/27",style: TextStyle(fontSize: 12),),
                                  trailing:  RatingBar.builder(
                                    initialRating: 5,
                                    minRating: 5,
                                    direction: Axis.horizontal,
                                    // allowHalfRating: true,
                                    itemCount: 5,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                                    itemSize: 16,
                                    itemBuilder: (context, _) => Icon(Icons.star,
                                      color: Colors.deepOrange,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ),
                                Text("View Comment text here",style: TextStyle(color: Colors.black54,fontSize: 12),)
                              ],);
                          }),





                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 70,
            width: double.infinity,
           // color: Colors.black54,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12,
                ),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
            ),

            child:  Padding(
              padding: const EdgeInsets.only(top: 14,left: 20,right: 20,bottom: 14),
              child: ElevatedButton(
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text("Buy Now",),
                ),
                style: ElevatedButton.styleFrom(shape: StadiumBorder()),
              ),
            ),



          ),

        ],
      ),

        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 120),
          child: new FloatingActionButton(
              elevation: 2,
              child: new Icon(Icons.rate_review_outlined,color: Colors.deepOrange,),
              backgroundColor: Colors.white,
              onPressed: (){}
          ),
        ),

    );
  }
}
