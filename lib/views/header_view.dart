import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoapp/view_models/app_view_model.dart';
import 'package:todoapp/views/bottom_sheets/delete_bottom_sheet_view.dart';
import 'package:todoapp/views/bottom_sheets/settings_bottom_sheet_view.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppViewModel>(builder:(context, viewModel,child){
      return Row(
        children: [
          Expanded(flex:3,child:Container(
            margin: EdgeInsets.only(left: 15),
            child: Column(
              children: [
                Expanded(
                  flex:1,
                  child: Align(
                    alignment:Alignment.bottomLeft,
                    child: FittedBox(
                      fit:BoxFit.fitHeight,
                        child: Text('Welcome Back ,',style: TextStyle(fontSize: 23,fontWeight: FontWeight.w400,color: viewModel.clrLvl4),)),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: FittedBox(
                      fit: BoxFit.fitHeight,
                        child: Text(viewModel.username,style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold,color: viewModel.clrLvl4),)),
                  ),
                ),
              ],
            ),
          )),
          Expanded(flex:1,child:InkWell(
            onTap: (){
              viewModel.bottomSheetBuilder(DeleteBottomSheetView(), context);

            },
              child: Icon(Icons.delete,color: viewModel.clrLvl3,size: 40,)) ),
          Expanded(flex:1,child:InkWell(
            onTap: (){
              viewModel.bottomSheetBuilder(SettingsBottomSheetView(), context);
            },
              child: Icon(Icons.settings,color: viewModel.clrLvl3,size: 40,)) ),

        ],
      );


    });
  }
}
