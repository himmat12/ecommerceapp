import 'package:flutter/material.dart';

class ProgressBar extends StatefulWidget {
  double percentage;
  double width = 200;
  double height = 18;

  ProgressBar({@required this.width, @required this.percentage});
  @override
  _ProgressBarState createState() => _ProgressBarState();
}

class _ProgressBarState extends State<ProgressBar> {
  double progressValue;
  double progressPercent;

// progress_bar_get_method
  double getProgress() {
    setState(() {
      progressValue = (widget.percentage * widget.width) / 100;
    });
    return progressValue;
  }

// progress_percentage_method
  double getProgressPrecent() {
    setState(() {
      progressPercent = (progressValue / widget.width) * 100;
    });
    return progressPercent;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
      color: Colors.black26,
      width: widget.width,
      alignment: Alignment.centerLeft,
      child: Container(
        height: widget.height,
        alignment: Alignment.centerRight,
        color: Theme.of(context).primaryColor,
        width: getProgress(),
        child: Text(
          getProgressPrecent().toInt().toString() + "%",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 8,
          ),
        ),
      ),
    );
  }
}
