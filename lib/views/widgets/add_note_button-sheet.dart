import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo/add_note_cubit/cubit/add_note_cubit.dart';
import 'add_note_from.dart';

class AddNoteButtonSheet extends StatefulWidget {
  const AddNoteButtonSheet({super.key});

  @override
  State<AddNoteButtonSheet> createState() => _AddNoteButtonSheetState();
}

class _AddNoteButtonSheetState extends State<AddNoteButtonSheet> {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Padding(
        padding:  EdgeInsets.only(left: 16,right: 16,bottom: MediaQuery.of(context).viewInsets.bottom),
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteLoading) {
            
            }
            if (state is AddNoteFailure) {
              print('failed ${state.errMessage}');
            }
            if (state is AddNoteSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return AbsorbPointer(
              absorbing: state is AddNoteLoading ?true : false,
              child: const SingleChildScrollView(
              child: AddNoteForm()),
            );
          },
        ),
      ),
    );
  }
}
 