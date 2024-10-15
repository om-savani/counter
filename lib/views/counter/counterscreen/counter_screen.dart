import 'package:counter/views/counter/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              '${context.watch<CounterProvider>().counter}',
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 100),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {
                  context.read<CounterProvider>().increment();
                },
                icon: const Icon(Icons.add),
              ),
              IconButton(
                onPressed: () {
                  context.read<CounterProvider>().decrement();
                },
                icon: const Icon(Icons.remove),
              ),
            ],
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  context.read<CounterProvider>().TwoX();
                },
                child: Text(
                  '2X',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              TextButton(
                onPressed: () {
                  context.read<CounterProvider>().ThreeX();
                },
                child: Text(
                  '3X',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              TextButton(
                onPressed: () {
                  context.read<CounterProvider>().FourX();
                },
                child: Text(
                  '4X',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterProvider>().reset();
        },
        child: const Text("Reset"),
      ),
    );
  }
}
