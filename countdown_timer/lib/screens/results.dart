import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class Results extends StatelessWidget {
  const Results({super.key,
  required this.duration
  });

  final Map<String,int> duration;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Countdown Timer'),),
      ),

      body: Center(
        child: TimerCountdown(
          endTime: DateTime.now().add(
           Duration(
            days: duration['days']!,
            hours: duration['hours']!,
            minutes: duration['minutes']!,
            seconds: duration['seconds']!,
          ),
        ),
        onEnd: (){
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Timer ended')));
        },
        ),
      ),
    );
  }
}