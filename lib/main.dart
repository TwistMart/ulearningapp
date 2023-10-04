import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearning_app/app_bloc/app_bloc.dart';
import 'package:ulearning_app/app_event/app_event.dart';
import 'package:ulearning_app/app_states/app_states.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) {
         return AppBloc();
        },
      child: MaterialApp(
        title: 'Flutter Demo',
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: BlocBuilder<AppBloc, AppStates>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  state.counter.toString(),
                ),
                SizedBox(height: 30),
                Text(
                  '${BlocProvider.of<AppBloc>(context).state.counter}',
                  // state.counter.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                )
              ],
            );
          },
        )
      ),

      floatingActionButton: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            onPressed: () {
              // context.read<AppBloc>().add(DecrementCounter());
              BlocProvider.of<AppBloc>(context).add(DecrementCounter());

            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: (){
              context.read<AppBloc>().add(IncrementCounter());
              // BlocProvider.of<AppBloc>(context).add(IncrementCounter());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      )
    );
  }
}
