import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation_controller.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/ticker_provider.dart';

class AbsorbPointerExample extends StatefulWidget {
  const AbsorbPointerExample({super.key});

  @override
  State<AbsorbPointerExample> createState() => _AbsorbPointerExampleState();
}

class _AbsorbPointerExampleState extends State<AbsorbPointerExample>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  bool _buttonEnabled = true;
  String _onoff = "on";

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              // AbsorbPointer(
              //   absorbing: _buttonEnabled,
              //   child: ElevatedButton(
              //     onPressed: () {
              //       print("clicked");
              //     },
              //     child: Text("Click Me"),
              //   ),
              // ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(_onoff),
                    Switch(
                        value: _buttonEnabled,
                        onChanged: (value) {
                          setState(() {
                            _buttonEnabled = value;
                            if (_buttonEnabled == true) {
                              _onoff = "on";
                            } else {
                              _onoff = "off";
                            }
                            print(_buttonEnabled);
                          });
                        })
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
