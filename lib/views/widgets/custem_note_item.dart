import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const EditNoteView();
          }),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 24, bottom: 24, left: 16, right: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                contentPadding: EdgeInsets.all(0),
                title: Text(
                  note.title,
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    note.subTitle,
                    style: TextStyle(
                        color: Colors.black.withAlpha(128), fontSize: 18),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    note.delete();
                  },
                  icon: Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  note.date,
                  style: TextStyle(
                      color: Colors.black.withAlpha(128), fontSize: 12),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
