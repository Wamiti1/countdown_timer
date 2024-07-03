import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final formKey = GlobalKey<FormState>();
  var hours = TextEditingController(text: '23');
  var minutes = TextEditingController(text: '23');
  var seconds = TextEditingController(text: '23');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Countdown Timer'),),
      ),

      body: Column(
        children: [
          Form(
            key: formKey,
            child: Column(
              children: [
                 Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: hours,
                      maxLength: 2,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter hours',
                        prefixIcon: Icon(Icons.access_alarm),
                      ),
                      validator: (value) {
                      if (value!.isEmpty || double.tryParse(value) == null) {
                          return 'Enter a valid number';
                        }
                        return null;
                      },
                    ),
                  ),
          
                   Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: hours,
                      maxLength: 2,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter minutes',
                        prefixIcon: Icon(Icons.access_alarm),
                      ),
                      validator: (value) {
                      if (value!.isEmpty || double.tryParse(value) == null) {
                          return 'Enter a valid number';
                        }
          
                        return null;
                        
                        
                      },
                    ),
                  ),
          
          
          
                   Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      controller: hours,
                      maxLength: 2,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Enter seconds',
                        prefixIcon: Icon(Icons.access_alarm),
                      ),
                      validator: (value) {
                      if (value!.isEmpty || double.tryParse(value) == null) {
                          return 'Enter a valid number';
                        }
          
                        return null;
                        
                        
                      },
                    ),
                  ),
              ],
              ),
          ),
           OutlinedButton(
            onPressed: (){
              var isValid = formKey.currentState!.validate();
              if(isValid){
                  


              }
            }, 
           
           
           
           
           child: const Text('Start timer'))
        ],

      ),
     


    );
  }
}