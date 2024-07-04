import 'package:countdown_timer/screens/results.dart';
import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  final formKey = GlobalKey<FormState>();
  var days = TextEditingController(text: '0');
  var hours = TextEditingController(text: '0');
  var minutes = TextEditingController(text: '0');
  var seconds = TextEditingController(text: '10');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Countdown Timer'),),
      ),

      body: ListView(
        children:[ Column(
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
        
        
                  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        controller: days,
                        maxLength: 2,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter days',
                          prefixIcon: Icon(Icons.access_alarm),
                        ),
                        validator: (value) {
                        if (value!.isEmpty || int.tryParse(value) == null) {
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
                          labelText: 'Enter hours',
                          prefixIcon: Icon(Icons.access_alarm),
                        ),
                        validator: (value) {
                        if (value!.isEmpty || int.tryParse(value) == null) {
                            return 'Enter a valid number';
                          }
                          return null;
                        },
                      ),
                    ),
            
                     Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        controller: minutes,
                        maxLength: 2,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter minutes',
                          prefixIcon: Icon(Icons.access_alarm),
                        ),
                        validator: (value) {
                        if (value!.isEmpty || int.tryParse(value) == null) {
                            return 'Enter a valid number';
                          }
            
                          return null;
                          
                          
                        },
                      ),
                    ),
            
            
            
                     Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        controller: seconds,
                        maxLength: 2,
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Enter seconds',
                          prefixIcon: Icon(Icons.access_alarm),
                        ),
                        validator: (value) {
                        if (value!.isEmpty || int.tryParse(value) == null) {
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
                 try{
                  Map<String, int> duration = {
                  "days": int.parse(days.text),
                  "hours":int.parse(hours.text),
                  "minutes":int.parse(minutes.text),
                  "seconds":int.parse(seconds.text)
                 };
        
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> Results(duration: duration)));
                 }
        
                 catch(e){
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Try Again')));
                 }
          
                    
          
                }

                else{
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Check your fields')));
                }
              }, 
             
             
             
             
             child: const Text('Start timer'))
          ],
        
        ),
      ]),
     


    );
  }
}