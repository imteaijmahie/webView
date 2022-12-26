import 'package:flutter/material.dart';
import 'package:webdesign/screen/custom_drawer.dart';

class MobileView extends StatefulWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  State<MobileView> createState() => _MobileViewState();
}


var _scaffoldKey = GlobalKey<ScaffoldState>();
class _MobileViewState extends State<MobileView> {


  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  var select="Choose";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          key: _scaffoldKey,
          drawer: DrawerChanging(),

          body: ListView(
            children: [
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 70,
                    color: Colors.orangeAccent,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  _scaffoldKey.currentState?.openDrawer();
                                  //Scaffold.of(context).openDrawer();
                                },
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: ClipRRect(
                                      child: Image.asset(
                                        "image/paragraph.png",
                                        height: 50,
                                        width: 50,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              /*SizedBox(width: 20,),
                              Image.asset("icon/logo.PNG",width: 120,height: 120,)*/
                            ],
                          ),
                          SizedBox(width: 20,),
                          Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        width: 2,
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    hintText: "Search here",
                                    prefixIcon: Icon(Icons.search),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          /*Row(
                            children: [
                              Container(
                                width: 120,
                                height:70,
                                decoration: BoxDecoration(
                                    border: Border(left: BorderSide(width: 1,color: Colors.grey))
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.home),
                                    SizedBox(width: 10,),
                                    Text("Dhaka",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                    Icon(Icons.keyboard_arrow_down_sharp)
                                  ],
                                ),
                              ),

                              Container(
                                width: 80,
                                height:70,
                                decoration: BoxDecoration(
                                    border: Border(left: BorderSide(width: 1,color: Colors.grey),)
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.question_mark_sharp),
                                    SizedBox(width: 10,),
                                    Text("Help",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                                  ],
                                ),
                              ),

                              Container(
                                width: 90,
                                height:70,
                                decoration: BoxDecoration(
                                    border: Border(left: BorderSide(width: 1,color: Colors.grey),)
                                ),
                                child: Row(
                                  children: [
                                    SizedBox(width: 10,),
                                    Text("EN |",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red),),
                                    Text(" বাং",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 100,
                                height: 70,
                                color: Colors.red,
                                child: Text("Sign In",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),

                              )
                            ],
                          )*/


                          Container(


                            child: DropdownButton(
                                icon: Icon(Icons.more_vert,size: 40,color: Colors.black,),


                                items: [
                                  DropdownMenuItem(

                                    value: "Item 1",
                                    child:  Container(
                                      width: 120,
                                      height:70,

                                      child: Row(
                                        children: [
                                          Icon(Icons.home),
                                          SizedBox(width: 10,),
                                          Text("Dhaka",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                                          Icon(Icons.keyboard_arrow_down_sharp)
                                        ],
                                      ),
                                    ),),
                                  DropdownMenuItem(
                                    value: "Item 2",
                                    child: Container(
                                      width: 80,
                                      height:70,

                                      child: Row(
                                        children: [
                                          Icon(Icons.question_mark_sharp),
                                          SizedBox(width: 10,),
                                          Text("Help",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                                        ],
                                      ),
                                    ),),
                                  DropdownMenuItem(
                                    value: "Item 3",
                                    child:  Container(
                                      width: 90,
                                      height:70,

                                      child: Row(
                                        children: [
                                          SizedBox(width: 10,),
                                          Text("EN |",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.red),),
                                          Text(" বাং",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

                                        ],
                                      ),
                                    ),),
                                ],
                                onChanged: (value){
                                  setState(() {
                                    select =value!;
                                  });
                                }
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),


                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset("image/daily.PNG",width: 800,)
                            ],
                          ),
                          SizedBox(height: 50,),

                          Row(
                            children: [
                              TextButton(
                                  onPressed: (){}, child: Text("Food",style: TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.bold),)
                              ),
                              Icon(Icons.arrow_forward_ios),
                              TextButton(
                                  onPressed: (){}, child: Text("Snacks",style: TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.bold),)
                              ),
                              Icon(Icons.arrow_forward_ios),
                              TextButton(
                                  onPressed: (){}, child: Text("Soups",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),)
                              ),
                            ],
                          ),
                          SizedBox(height: 20,),

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: 200,
                                    height:400,
                                    child: Column(
                                      children: [
                                        Image.asset("image/1.png"),
                                        Column(
                                          children: [
                                            SizedBox(height: 20,),
                                            Text("Nestle Maggi Healthy Soup Corn With Chicken 25 gm"),
                                            SizedBox(height: 20,),
                                            Text("4 pcs"),
                                            SizedBox(height: 6,),
                                            Text("180 tk"),
                                            SizedBox(height:10,),
                                            Container(
                                              width: 200,
                                              height: 30,
                                              color: Colors.red,
                                              child: Padding(
                                                padding: const EdgeInsets.only(left: 10,right: 10),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text("-",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                                                    Text("1 in bag",style: TextStyle(color: Colors.white),),
                                                    Text("+",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                                                  ],
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Container(
                                      width: 200,
                                      height:400,
                                      child: Column(
                                        children: [
                                          Image.asset("image/2.png"),
                                          Column(
                                            children: [
                                              SizedBox(height: 20,),
                                              Text("Nestle Maggi Healthy Soup Corn With Chicken 25 gm"),
                                              SizedBox(height: 20,),
                                              Text("4 pcs"),
                                              SizedBox(height: 6,),
                                              Text("180 tk"),
                                              SizedBox(height:10,),
                                              InkWell(
                                                onTap: (){
                                                  setState(() {

                                                  });
                                                },
                                                child: Container(
                                                  width: 200,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(width: 1,color: Colors.grey)
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 10,right: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.bolt,color: Colors.red,),
                                                        Text("Add to Bag",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Container(
                                      width: 200,
                                      height:400,
                                      child: Column(
                                        children: [
                                          Image.asset("image/3.png"),
                                          Column(
                                            children: [
                                              SizedBox(height: 20,),
                                              Text("Nestle Maggi Healthy Soup Corn With Chicken 25 gm"),
                                              SizedBox(height: 20,),
                                              Text("4 pcs"),
                                              SizedBox(height: 6,),
                                              Text("180 tk"),
                                              SizedBox(height:10,),
                                              InkWell(
                                                onTap: (){
                                                  setState(() {

                                                  });
                                                },
                                                child: Container(
                                                  width: 200,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(width: 1,color: Colors.grey)
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 10,right: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.bolt,color: Colors.red,),
                                                        Text("Add to Bag",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Container(
                                      width: 200,
                                      height:400,
                                      child: Column(
                                        children: [
                                          Image.asset("image/4.png"),
                                          Column(
                                            children: [
                                              SizedBox(height: 20,),
                                              Text("Nestle Maggi Healthy Soup Corn With Chicken 25 gm"),
                                              SizedBox(height: 20,),
                                              Text("4 pcs"),
                                              SizedBox(height: 6,),
                                              Text("180 tk"),
                                              SizedBox(height:10,),
                                              InkWell(
                                                onTap: (){
                                                  setState(() {

                                                  });
                                                },
                                                child: Container(
                                                  width: 200,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(width: 1,color: Colors.grey)
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 10,right: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.bolt,color: Colors.red,),
                                                        Text("Add to Bag",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Container(
                                      width: 200,
                                      height:400,
                                      child: Column(
                                        children: [
                                          Image.asset("image/5.png"),
                                          Column(
                                            children: [
                                              SizedBox(height: 20,),
                                              Text("Nestle Maggi Healthy Soup Corn With Chicken 25 gm"),
                                              SizedBox(height: 20,),
                                              Text("4 pcs"),
                                              SizedBox(height: 6,),
                                              Text("180 tk"),
                                              SizedBox(height:10,),
                                              InkWell(
                                                onTap: (){
                                                  setState(() {

                                                  });
                                                },
                                                child: Container(
                                                  width: 200,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(width: 1,color: Colors.grey)
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 10,right: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.bolt,color: Colors.red,),
                                                        Text("Add to Bag",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Container(
                                      width: 200,
                                      height:400,
                                      child: Column(
                                        children: [
                                          Image.asset("image/6.png"),
                                          Column(
                                            children: [
                                              SizedBox(height: 20,),
                                              Text("Nestle Maggi Healthy Soup Corn With Chicken 25 gm"),
                                              SizedBox(height: 20,),
                                              Text("4 pcs"),
                                              SizedBox(height: 6,),
                                              Text("180 tk"),
                                              SizedBox(height:10,),
                                              InkWell(
                                                onTap: (){
                                                  setState(() {

                                                  });
                                                },
                                                child: Container(
                                                  width: 200,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(width: 1,color: Colors.grey)
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 10,right: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.bolt,color: Colors.red,),
                                                        Text("Add to Bag",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                ),





                              ],
                            ),
                          ),

                          SizedBox(height: 20,),

                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                    width: 200,
                                    height:400,
                                    child: Column(
                                      children: [
                                        Image.asset("image/7.png"),
                                        Column(
                                          children: [
                                            SizedBox(height: 20,),
                                            Text("Nestle Maggi Healthy Soup Corn With Chicken 25 gm"),
                                            SizedBox(height: 20,),
                                            Text("4 pcs"),
                                            SizedBox(height: 6,),
                                            Text("180 tk"),
                                            SizedBox(height:10,),
                                            InkWell(
                                              onTap: (){
                                                setState(() {

                                                });
                                              },
                                              child: Container(
                                                width: 200,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    border: Border.all(width: 1,color: Colors.grey)
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.only(left: 10,right: 10),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Icon(Icons.bolt,color: Colors.red,),
                                                      Text("Add to Bag",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Container(
                                      width: 200,
                                      height:400,
                                      child: Column(
                                        children: [
                                          Image.asset("image/8.png"),
                                          Column(
                                            children: [
                                              SizedBox(height: 20,),
                                              Text("Nestle Maggi Healthy Soup Corn With Chicken 25 gm"),
                                              SizedBox(height: 20,),
                                              Text("4 pcs"),
                                              SizedBox(height: 6,),
                                              Text("180 tk"),
                                              SizedBox(height:10,),
                                              InkWell(
                                                onTap: (){
                                                  setState(() {

                                                  });
                                                },
                                                child: Container(
                                                  width: 200,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(width: 1,color: Colors.grey)
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 10,right: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.bolt,color: Colors.red,),
                                                        Text("Add to Bag",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Container(
                                      width: 200,
                                      height:400,
                                      child: Column(
                                        children: [
                                          Image.asset("image/9.png"),
                                          Column(
                                            children: [
                                              SizedBox(height: 20,),
                                              Text("Nestle Maggi Healthy Soup Corn With Chicken 25 gm"),
                                              SizedBox(height: 20,),
                                              Text("4 pcs"),
                                              SizedBox(height: 6,),
                                              Text("180 tk"),
                                              SizedBox(height:10,),
                                              InkWell(
                                                onTap: (){
                                                  setState(() {

                                                  });
                                                },
                                                child: Container(
                                                  width: 200,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(width: 1,color: Colors.grey)
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 10,right: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.bolt,color: Colors.red,),
                                                        Text("Add to Bag",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Container(
                                      width: 200,
                                      height:400,
                                      child: Column(
                                        children: [
                                          Image.asset("image/10.png"),
                                          Column(
                                            children: [
                                              SizedBox(height: 20,),
                                              Text("Nestle Maggi Healthy Soup Corn With Chicken 25 gm"),
                                              SizedBox(height: 20,),
                                              Text("4 pcs"),
                                              SizedBox(height: 6,),
                                              Text("180 tk"),
                                              SizedBox(height:10,),
                                              InkWell(
                                                onTap: (){
                                                  setState(() {

                                                  });
                                                },
                                                child: Container(
                                                  width: 200,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(width: 1,color: Colors.grey)
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 10,right: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.bolt,color: Colors.red,),
                                                        Text("Add to Bag",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Container(
                                      width: 200,
                                      height:400,
                                      child: Column(
                                        children: [
                                          Image.asset("image/11.png"),
                                          Column(
                                            children: [
                                              SizedBox(height: 20,),
                                              Text("Nestle Maggi Healthy Soup Corn With Chicken 25 gm"),
                                              SizedBox(height: 20,),
                                              Text("4 pcs"),
                                              SizedBox(height: 6,),
                                              Text("180 tk"),
                                              SizedBox(height:10,),
                                              InkWell(
                                                onTap: (){
                                                  setState(() {

                                                  });
                                                },
                                                child: Container(
                                                  width: 200,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(width: 1,color: Colors.grey)
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 10,right: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.bolt,color: Colors.red,),
                                                        Text("Add to Bag",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 30),
                                  child: Container(
                                      width: 200,
                                      height:400,
                                      child: Column(
                                        children: [
                                          Image.asset("image/12.png"),
                                          Column(
                                            children: [
                                              SizedBox(height: 20,),
                                              Text("Nestle Maggi Healthy Soup Corn With Chicken 25 gm"),
                                              SizedBox(height: 20,),
                                              Text("4 pcs"),
                                              SizedBox(height: 6,),
                                              Text("180 tk"),
                                              SizedBox(height:10,),
                                              InkWell(
                                                onTap: (){
                                                  setState(() {

                                                  });
                                                },
                                                child: Container(
                                                  width: 200,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(width: 1,color: Colors.grey)
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.only(left: 10,right: 10),
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      children: [
                                                        Icon(Icons.bolt,color: Colors.red,),
                                                        Text("Add to Bag",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      )
                                  ),
                                ),





                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
    );
  }
}
