import 'package:flutter/material.dart';

class LivePage extends StatefulWidget {
  const LivePage({
    Key? key,
    required this.isHost,
    required this.localUserID,
    required this.localUserName,
    required this.roomID,
  }) : super(key: key);

  final bool isHost;
  final String localUserID;
  final String localUserName;
  final String roomID;

  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  Widget? localView;
  int? localViewID;
  Widget? remoteView;
  int? remoteViewID;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Live page")),
      body: Stack(
        children: [
          (widget.isHost ? localView : remoteView) ?? Container(),
          Positioned(
            bottom: MediaQuery.of(context).size.height / 20,
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 4,
                height: MediaQuery.of(context).size.width / 7,
                child: ElevatedButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text(widget.isHost ? 'End Live' : 'Leave Live'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}