import 'package:flutter/material.dart';
import 'package:main/components/gempa_item.dart';
import 'package:main/dto/bmkg_status_gempa.dart';

class StatusGempaPage extends StatefulWidget {
  const StatusGempaPage({Key? key}) : super(key: key);

  @override
  _StatusGempaPageState createState() => _StatusGempaPageState();
}

class _StatusGempaPageState extends State<StatusGempaPage> {
  late Future<BMKGStatusGempa> _future;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _future = BMKGStatusGempa.getBMKGStatusGempa();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      body: FutureBuilder(
          future: _future,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return CustomScrollView(
                slivers: [
                  SliverAppBar(
                    title: const Text(
                      'Status Gempa',
                      style: TextStyle(color: Colors.amber),
                    ),
                    pinned: true,
                    backgroundColor: Colors.lightBlue[900],
                  ),
                  SliverList.list(
                      children: snapshot.data!.Infogempa.gempa.map((e) {
                    return Padding(
                      padding: EdgeInsets.only(right: 15.0, left: 15.0),
                      child: Container(
                          decoration: BoxDecoration(
                              color: Colors.lightBlue[500],
                              borderRadius: BorderRadius.circular(8)),
                          margin: const EdgeInsets.only(bottom: 10),
                          child: GempaItem(gempa: e)),
                    );
                  }).toList()),
                ],
              );
            }
            if (snapshot.hasError) {
              return Center(
                child: Text('Error ${snapshot.error}'),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
