import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/view_models/app_view_model.dart';
import 'package:todoapp/views/bottom_sheets/add_task_bottom_sheet_view.dart';

class AddTaskView extends StatelessWidget {
  const AddTaskView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder: (context , viewModel ,child){

      return SizedBox(height: 60,
        child: ElevatedButton(
          onPressed: (){
            
            viewModel.bottomSheetBuilder(const AddTaskBottomSheetView(), context);

          },
            child: Icon(Icons.add, size: 30,),
        ),

      );

    },);
  }
}
