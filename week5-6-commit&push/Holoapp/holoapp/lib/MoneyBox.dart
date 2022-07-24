import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoneyBox extends StatefulWidget {
  final String title;
  final double amount;
  final Color color;
  final double size;
  MoneyBox(this.title, this.amount, this.color, this.size, {Key? key})
      : super(key: key);

  @override
  State<MoneyBox> createState() => _MoneyBoxState();
}

class _MoneyBoxState extends State<MoneyBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: widget.color, borderRadius: BorderRadius.circular(10)),
      height: widget.size,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Text(
              widget.title,
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
                child: Text(
              '${NumberFormat("#,###.##").format(widget.amount)}',
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ))
          ],
        ),
      ),
    );
  }
}
