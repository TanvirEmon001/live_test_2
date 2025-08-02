import 'package:flutter/material.dart';

class AddEmploye extends StatelessWidget {
  const AddEmploye({super.key});

  @override
  Widget build(BuildContext context) {

    final _formKey = GlobalKey<FormState>();
    TextEditingController _nameController = TextEditingController();
    TextEditingController _ageController = TextEditingController();
    TextEditingController _salaryController = TextEditingController();


    return Scaffold(
      appBar: AppBar(
        title: Text("Add Employe"),
      ),
      body: Column(
        children: [
          Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: "Name"
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Please Enter your name";
                      }else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 5,),
                  TextFormField(
                    controller: _ageController,
                    decoration: InputDecoration(
                        hintText: "Age"
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Please Enter age";
                      }else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 5,),
                  TextFormField(
                    controller: _salaryController,
                    decoration: InputDecoration(
                        hintText: "Salary"
                    ),
                    validator: (value){
                      if(value == null || value.isEmpty){
                        return "Please Enter your salary";
                      }else {
                        return null;
                      }
                    },
                  ),
                  SizedBox(height: 15,),
                  SizedBox(
                    width: 200,
                    child: ElevatedButton(onPressed: (){
                      if(_formKey.currentState!.validate()){
                        print("All input field is okay!");
                      }
                    }, child: Text("Add Employee")),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
