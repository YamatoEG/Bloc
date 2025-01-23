import 'package:bloc_application/counter_builder.dart';
import 'package:bloc_application/counter_consumer.dart';
import 'package:bloc_application/counter_listener.dart';
import 'package:bloc_application/cubit/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterCubit()), // Provide globally
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bloc',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Bloc Task'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(title),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CounterBuilder()),
                    );
                  },
                  tooltip: 'Bloc Builder',
                  child: const Icon(Icons.build),
                ),
                const SizedBox(height: 8), // Space between button and text
                const Text('Bloc Builder', style: TextStyle(fontSize: 12)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CounterListener()),
                    );
                  },
                  tooltip: 'Bloc Listener',
                  child: const Icon(Icons.linear_scale_outlined),
                ),
                const SizedBox(height: 8), // Space between button and text
                const Text('Bloc Listener', style: TextStyle(fontSize: 12)),
              ],
            ),
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FloatingActionButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CounterConsumer()),
                      );
                    },
                    tooltip: 'Bloc Consumer',
                    child: const Icon(Icons.ac_unit_rounded),
                  ),
                  const SizedBox(height: 8), // Space between button and text
                  const Text('Bloc Consumer', style: TextStyle(fontSize: 12)),
                ],
              ),
            ),
          ],
        ));
  }
}
