import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:todo/models/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit() : super(NoteInitial());
}
