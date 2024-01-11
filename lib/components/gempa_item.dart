import 'package:flutter/material.dart';

import '../dto/gempa.dart';

class GempaItem extends StatefulWidget {
  final Gempa gempa;
  const GempaItem({Key? key, required this.gempa}) : super(key: key);

  @override
  _GempaItemState createState() => _GempaItemState();
}

class _GempaItemState extends State<GempaItem> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.lightBlue[800],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.gempa.Tanggal,
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
            SizedBox(height: 5),
            Text(
              widget.gempa.Wilayah,
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 14),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  'Koordinat : ',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
                Text(
                  widget.gempa.Coordinates,
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Magnitude : ',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
                Text(
                  widget.gempa.Magnitude.toString(),
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Kedalaman : ',
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
                Text(
                  widget.gempa.Kedalaman,
                  style: TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              widget.gempa.Potensi,
              style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
