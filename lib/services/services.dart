import 'package:recipe_app/models/notes_for_listing.dart';

class NoteService {
  List<NotesForListing> getNotesList() {
    return [
      NotesForListing(
          noteID: '1',
          createDateTime: DateTime.now(),
          latestEditDateTime: DateTime.now(),
          noteTitle: 'Note 1'),
      NotesForListing(
          noteID: '2',
          createDateTime: DateTime.now(),
          latestEditDateTime: DateTime.now(),
          noteTitle: 'Note 2'),
      NotesForListing(
          noteID: '3',
          createDateTime: DateTime.now(),
          latestEditDateTime: DateTime.now(),
          noteTitle: 'Note 3'),
      NotesForListing(
          noteID: '4',
          createDateTime: DateTime.now(),
          latestEditDateTime: DateTime.now(),
          noteTitle: 'Note 4'),
    ];
  }
}
