import 'package:flutter/material.dart';
import 'package:sos_deslizamentos_app/data/ambientEducation_data.dart';



class AmbientEducationTab extends StatelessWidget {

  final AmbientEducationData data;
  AmbientEducationTab(this.data);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Image.network(
                  data.image,
                  height: 90.0,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                data.title,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                data.description,
                style: TextStyle(
                  fontSize: 16.0
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

