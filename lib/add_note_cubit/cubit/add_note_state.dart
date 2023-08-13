part of 'add_note_cubit.dart';

@immutable
class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFailure extends AddNoteState {
  final String errMessage;

  AddNoteFailure(this.errMessage);
}

class AddNoteLoading extends AddNoteState {}
