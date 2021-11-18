import 'package:flutter/material.dart';
import 'package:hackathon/constants/data.dart';
import 'package:hackathon/pages/home_page.dart';

import 'detail_page.dart';

class FavScreen extends StatefulWidget {
  final ShoeModel shoeModel;
  FavScreen(this.shoeModel);
  @override
  _FavScreenState createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back_ios),
          ),
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Container(
          child: ListView.builder(
              itemCount: l.length,
              itemBuilder: (context, index) {
                return Container(
                    margin: EdgeInsets.only(left: 16, right: 16, bottom: 10),
                    padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 1,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        GestureDetector(child: Icon(Icons.favorite)),
                        Image(
                          image: AssetImage(widget.shoeModel.imgPath),
                          width: 100,
                          height: 60,
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width * .4,
                                child: Text(
                                  "${widget.shoeModel.name}",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Text(
                                "${widget.shoeModel.brand}",
                                style: TextStyle(
                                  color: Colors.black26,
                                  height: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Text(
                            "\$${widget.shoeModel.price.toInt()}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        IconButton(
                            onPressed: () {
                              l.removeAt(index);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => HomePage()));
                            },
                            icon: Icon(Icons.delete))
                      ],
                    ));
              }),
        ));
  }
}
