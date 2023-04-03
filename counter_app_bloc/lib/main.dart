import 'package:counter_app_bloc/bloc/counter_bloc.dart';
import 'package:counter_app_bloc/dio_settings.dart';
import 'package:counter_app_bloc/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => DioSettings()),
        RepositoryProvider(
            create: (context) => CounterRepository(
                RepositoryProvider.of<DioSettings>(context).dio)),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => CounterBloc(
                  RepositoryProvider.of<CounterRepository>(context))),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: MyHomePage(title: 'Flutter Demo Home Page'),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _increment() {
    BlocProvider.of<CounterBloc>(context).add(IncrementEvent());
  }

  _decrement() {
    BlocProvider.of<CounterBloc>(context).add(DecrementEvent());
  }

  Color bgColor = Colors.white;
  Color textColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                if (state is WeatherChanged) {
                  return Text(
                    "${state.model.name}: ${state.model.main?.temp}",
                    style: TextStyle(color: textColor),
                  );
                }
                if (state is WeatherError) {
                  return Text(
                    state.message,
                    style: TextStyle(color: textColor),
                  );
                }
                return Text(
                  "Weather information",
                  style: TextStyle(color: textColor),
                );
              },
              buildWhen: (prev, curr) {
                return curr is WeatherChanged || curr is WeatherError;
              },
            ),
            Text(
              'Press the button',
              style: TextStyle(color: textColor),
            ),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                int counter = 0;
                if (state is CounterChanged) {
                  counter = state.counter;
                }
                return Text(
                  '$counter',
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.copyWith(color: textColor),
                );
              },
              buildWhen: (prev, curr) {
                return curr is CounterChanged;
              },
            ),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                Function()? f = _increment;
                if (state is CounterChanged) {
                  f = state.counter >= 10 ? null : _increment;
                }
                return ElevatedButton(
                  onPressed: f,
                  child: const Text("+"),
                );
              },
              buildWhen: (prev, curr) {
                return curr is CounterChanged;
              },
            ),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                Function()? f;
                if (state is CounterChanged) {
                  f = state.counter == 0 ? null : _decrement;
                }
                return ElevatedButton(
                  onPressed: f,
                  child: const Text("-"),
                );
              },
              buildWhen: (prev, curr) {
                return curr is CounterChanged;
              },
            ),
            ElevatedButton(
              onPressed: () {
                BlocProvider.of<CounterBloc>(context).add(UpdateWeather());
              },
              child: const Text('Weather'),
            ),
            BlocListener<CounterBloc, CounterState>(
              listener: (context, state) {
                if (state is ThemeChanged) {
                  setState(() {
                    if (state.isDarkMode) {
                      bgColor = Colors.black;
                      textColor = Colors.white;
                    } else {
                      bgColor = Colors.white;
                      textColor = Colors.black;
                    }
                  });
                }
              },
              child: ElevatedButton(
                onPressed: () {
                  BlocProvider.of<CounterBloc>(context).add(ThemeEvent());
                },
                child: const Text('Dark(on/off)'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
