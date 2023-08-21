import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:todo/models/note_model.dart';

import '../../../../consts.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());

  fitchAllNotes() async {
    emit(NoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);

      emit(NoteSuccess(noteBox.values.toList()));
    } catch (e) {
      emit(NoteFailure(e.toString()));
    }
  }
}
