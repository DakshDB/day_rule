import 'dart:math';

import 'package:enhanced_you/configs/config.dart';
import 'package:enhanced_you/models/journal_entry.dart';
import 'package:enhanced_you/screens/journal/create_journal.dart';
import 'package:enhanced_you/widgets/header.dart';
import 'package:enhanced_you/widgets/journal_tile_card.dart';
import 'package:flutter/material.dart';

class JournalHome extends StatefulWidget {
  const JournalHome({Key? key}) : super(key: key);

  @override
  State<JournalHome> createState() => _JournalHomeState();
}

class _JournalHomeState extends State<JournalHome> {

  // Sample List of Journal Entries
  List<JournalEntry> journalEntries = [
    JournalEntry(
        id: '1',
        title: 'You should be grateful for what you have',
        body: 'I am grateful for my family, my friends, and my health.',
        date: DateTime.now(),
        backgroundColor: journalEntryBackgroundColors[Random().nextInt(journalEntryBackgroundColors.length)]),
    JournalEntry(
        id: '2',
        title: 'You should be grateful for what you have',
        body: 'I am grateful for my family, my friends, and my health.',
        date: DateTime.now(),
        backgroundColor: journalEntryBackgroundColors[Random().nextInt(journalEntryBackgroundColors.length)]),
    JournalEntry(
        id: '3',
        title: 'You should be grateful for what you have',
        body: 'I am grateful for my family, my friends, and my health.',
        date: DateTime.now(),
        backgroundColor: journalEntryBackgroundColors[Random().nextInt(journalEntryBackgroundColors.length)]),
    JournalEntry(
        id: '4',
        title: 'You should be grateful for what you have',
        body: 'I am grateful for my family, my friends, and my health.',
        date: DateTime.now(),
        backgroundColor: journalEntryBackgroundColors[Random().nextInt(journalEntryBackgroundColors.length)]),
    JournalEntry(
        id: '5',
        title: 'You should be grateful for what you have',
        body: 'I am grateful for my family, my friends, and my health.',
        date: DateTime.now(),
        backgroundColor: journalEntryBackgroundColors[Random().nextInt(journalEntryBackgroundColors.length)]),
    JournalEntry(
        id: '6',
        title: 'You should be grateful for what you have',
        body: 'I am grateful for my family, my friends, and my health.',
        date: DateTime.now(),
        backgroundColor: journalEntryBackgroundColors[Random().nextInt(journalEntryBackgroundColors.length)]),
    JournalEntry(
        id: '7',
        title: 'You should be grateful for what you have',
        body: 'I am grateful for my family, my friends, and my health.',
        date: DateTime.now(),
        backgroundColor: journalEntryBackgroundColors[Random().nextInt(journalEntryBackgroundColors.length)]),
    JournalEntry(
        id: '8',
        title: 'You should be grateful for what you have',
        body: 'I am grateful for my family, my friends, and my health.',
        date: DateTime.now(),
        backgroundColor: journalEntryBackgroundColors[Random().nextInt(journalEntryBackgroundColors.length)]),
    JournalEntry(
        id: '9',
        title: 'You should be grateful for what you have',
        body: 'I am grateful for my family, my friends, and my health.',
        date: DateTime.now(),
        backgroundColor: journalEntryBackgroundColors[Random().nextInt(journalEntryBackgroundColors.length)]),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Header(title: 'Your Journal'),
            // Search Bar as card view
            Card(
              elevation: 1,
              shadowColor: Colors.transparent,
              color: Colors.grey[200],
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
            ),
            // Journal Entries list
            Expanded(
              child: SingleChildScrollView(
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: journalEntries.length,
                  itemBuilder: (BuildContext context, int index) {
                    return JournalTileCard(
                      journalEntry: journalEntries[index],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const CreateJournal()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
