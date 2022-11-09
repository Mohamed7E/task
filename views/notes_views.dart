
import 'package:flutter/material.dart';
import 'package:notes/views/widget/add_note_botton_sheet.dart';

import 'package:notes/views/widget/notes_view_body.dart';


class notes_views extends StatelessWidget{
  const notes_views({Key?key}) :super(key: key);
    @override
    Widget build(BuildContext context){
        return Scaffold(
          floatingActionButton: FloatingActionButton(onPressed:(){
            showModalBottomSheet(shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.6)), context :context,
             builder:(context) {
              return const addNoteBottomsheet();
              } 
              );

          },
          child: const Icon(Icons.add), 
          ),
          body: const NotesViewBody(),
        );
  }
}