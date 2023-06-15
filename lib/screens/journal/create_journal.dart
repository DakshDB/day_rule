import 'dart:math';

import 'package:enhanced_you/configs/config.dart';
import 'package:enhanced_you/models/journal_entry.dart';
import 'package:enhanced_you/utils/date_time_formater.dart';
import 'package:enhanced_you/widgets/header.dart';
import 'package:flutter/material.dart';

class CreateJournal extends StatefulWidget {
  const CreateJournal({super.key});

  @override
  State<CreateJournal> createState() => _CreateJournalState();
}

class _CreateJournalState extends State<CreateJournal> {
  JournalEntry journalEntry = JournalEntry(
      id: '1',
      title: 'You should be grateful for what you have',
      body: 'I am grateful for my family, my friends, and my health.',
      date: DateTime.now(),
      backgroundColor: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: journalEntry.backgroundColor,
      body: Stack(
        children: [Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Header(title: 'Create Journal'),
              const SizedBox(height: 16),
              // Date
              Padding(
                padding:
                    EdgeInsets.only(left: 8.0, top: 8.0, bottom: 2.0, right: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                formatDate(journalEntry.date),
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 2),
              // Title
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    journalEntry.title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              // Content Text Field editable
              Expanded(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Pen down your thoughts here...',
                      ),
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      onChanged: (value) {
                        setState(() {
                          journalEntry.body = value;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        // Floating Action Button : save journal entry
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context, journalEntry);
              },
              child: const Icon(Icons.save),
            ),
          ),
        ),
          // Floating Action Button : randomize background color
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    // select random color from journalEntryBackgroundColors
                    journalEntry.backgroundColor = journalEntryBackgroundColors[Random().nextInt(journalEntryBackgroundColors.length)];
                  });
                },
                child: const Icon(Icons.color_lens),
              ),
            ),
          ),
        ]
      ),
    );
  }
}
