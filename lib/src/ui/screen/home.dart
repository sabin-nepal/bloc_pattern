import 'package:bloc_pattern/src/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../events/counter_event.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<CounterBloc, int>(builder: (context, index) {
          return Text(index.toString());
        }),
      ),
       floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () => context.read<CounterBloc>().add(Increment()),
          ),
          const SizedBox(height: 4),
          FloatingActionButton(
            child: const Icon(Icons.remove),
            onPressed: () => context.read<CounterBloc>().add(Decrement()),
          ),
          FloatingActionButton(
            child: const Icon(Icons.cancel),
            onPressed: () => context.read<CounterBloc>().add(SetCounter(setTo: 0)),
          ),
        ],
      ),
    );
  }
}
