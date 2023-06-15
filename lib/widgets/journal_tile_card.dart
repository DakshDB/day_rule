import 'package:enhanced_you/models/journal_entry.dart';
import 'package:enhanced_you/utils/date_time_formater.dart';
import 'package:flutter/material.dart';

class JournalTileCard extends StatefulWidget {
  const JournalTileCard({Key? key, required this.journalEntry})
      : super(key: key);

  final JournalEntry journalEntry;

  @override
  State<JournalTileCard> createState() => _JournalTileCardState();
}

class _JournalTileCardState extends State<JournalTileCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Column(
        children: [
          // Journal Entry Date
          Padding(
            padding:
                EdgeInsets.only(left: 12.0, top: 8.0, bottom: 2.0, right: 12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  formatDate(widget.journalEntry.date),
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          Card(
            color: widget.journalEntry.backgroundColor,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      widget.journalEntry.title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      widget.journalEntry.body.length > 30
                          ? '${widget.journalEntry.body.substring(0, 30)}...'
                          : widget.journalEntry.body,
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
