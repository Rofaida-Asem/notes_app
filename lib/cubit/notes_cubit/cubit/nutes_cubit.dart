import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'nutes_state.dart';

class NutesCubit extends Cubit<NutesState> {
  NutesCubit() : super(NutesInitial());
}
