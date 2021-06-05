import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:robigo/themes/theme.dart';

// ignore: must_be_immutable
class ChipsOptions extends StatefulWidget {
  ChipsOptions({
    required EdgeInsetsGeometry defaultPadding,
    required List<String> values,
    this.title = '',
    required this.onTap,
    required this.defaultSelected,
  })  : _defaultPadding = defaultPadding,
        _values = values;

  final EdgeInsetsGeometry _defaultPadding;
  final List<String> _values;
  final String title;
  final Function(String) onTap;
  final int defaultSelected;

  @override
  _ChipsOptionsState createState() => _ChipsOptionsState();
}

class _ChipsOptionsState extends State<ChipsOptions> {
  late String _chossen;

  void _onSelect(String val) {
    setState(() => _chossen = val);
    widget.onTap(val);
  }

  @override
  void didChangeDependencies() {
    _chossen = widget._values[widget.defaultSelected];
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget._defaultPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.title.isEmpty
              ? const SizedBox()
              : Text(widget.title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .merge(TextStyle(fontWeight: FontWeight.w600))),
          const SizedBox(height: 10),
          Wrap(
            spacing: 10.0,
            children: widget._values
                .map((e) => e == _chossen
                    ? Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 14, vertical: 7.3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: black,
                        ),
                        child: Text(e, style: TextStyle(color: Colors.white)))
                    : GestureDetector(
                        onTap: () => _onSelect(e),
                        child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14, vertical: 6),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              border: Border.all(
                                color: black,
                              ),
                            ),
                            child: Text(
                              e,
                              style: TextStyle(color: black),
                            ))))
                .toList(),
          ),
        ],
      ),
    );
  }
}







//   Row(
// //            spacing: 5.0,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: widget._values
//                 .map((e) => e == _chossen
//                     ? GestureDetector(
//                         child: Container(
//                           margin: EdgeInsets.only(right: 15),
//                           padding:
//                               EdgeInsets.symmetric(horizontal: 14, vertical: 8),
//                           decoration: BoxDecoration(
//                             color: Theme.of(context).accentColor,
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           child: Text(e,
//                               style: Theme.of(context)
//                                   .primaryTextTheme
//                                   .bodyText1!
//                                   .merge(TextStyle(
//                                       color: Colors.white, fontSize: 12))),
//                         ),
//                       )
//                     : GestureDetector(
//                         onTap: () => _onSelect(e),
//                         child: Container(
//                           margin: EdgeInsets.only(right: 15),
//                           padding:
//                               EdgeInsets.symmetric(horizontal: 14, vertical: 8),
//                           decoration: BoxDecoration(
//                             color: Colors.white,
//                             borderRadius: BorderRadius.circular(10),
//                             border: new Border.all(
//                                 color: Theme.of(context).accentColor),
//                           ),
//                           child: Text(e,
//                               style: Theme.of(context)
//                                   .primaryTextTheme
//                                   .bodyText1!
//                                   .merge(TextStyle(
//                                       color: Theme.of(context).accentColor,
//                                       fontSize: 12))),
//                         )))
//                 .toList(),
//           ),
