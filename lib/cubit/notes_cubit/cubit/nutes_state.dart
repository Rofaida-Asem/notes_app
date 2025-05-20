part of 'nutes_cubit.dart';

@immutable
sealed class NutesState {}

final class AddNoteInitial extends NutesState {}

final class AddNoteLoading extends NutesState {}

final class AddNotesuccess extends NutesState {
  final List<NoteModel> notes;

  AddNotesuccess(this.notes);
}

final class AddNoteFailure extends NutesState {
  final String errMessage;

  AddNoteFailure(this.errMessage);
}
