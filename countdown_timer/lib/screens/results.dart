import 'package:flutter/material.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';

class Results extends StatelessWidget {
  const Results({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Countdown Timer'),),
      ),

      body: Center(
        child: TimerCountdown(
          endTime: DateTime.now().add(
          const Duration(
            days: 0,
            hours: 0,
            minutes: 1,
            seconds: 0,
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