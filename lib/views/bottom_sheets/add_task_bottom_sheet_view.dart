import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/view_models/app_view_model.dart';

import '../../models/task_model.dart';

class AddTaskBottomSheetView extends StatelessWidget {
  const AddTaskBottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController entryController=TextEditingController();
    return Consumer<AppViewModel>(builder: (context , viewModel , child){

      return Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(height: 80,
          child: Center(
            child: SizedBox(
              height: 40,
              width: 250,
              child: TextField(
                onSubmitted: (value){

                  if(entryController.text.isNotEmpty){
                    Task newTask=Task(entryController.text,false);
                    viewModel.addTask(newTask);
                    entryController.clear();

                  }
                  Navigator.of(context).pop();

                },
                decoration: InputDecoration(contentPadding: EdgeInsets.only(bottom: 5),
                  filled: true,
                  fillColor: viewModel.clrLvl2,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),borderSide:const BorderSide(width:0,style: BorderStyle.none)),

                      ),
              cursorColor:viewModel.clrLvl4,textAlign:TextAlign.center,textAlignVertical:TextAlignVertical.center,autofocus: true,autocorrect:false,controller: entryController,style: TextStyle(color: viewModel.clrLvl4,fontWeight: FontWeight.w500,
                      ),),
            ),
          ),),
      );

    },);
  }
}
