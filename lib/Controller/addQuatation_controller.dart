import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../Models/add_clientmodel.dart';
import '../Models/add_quatation_model.dart';
import '../Services/request_keys.dart';
import '../Widgets/show_message.dart';
import 'appbased_controller/appbase_controller.dart';

class AddQuatationController extends AppBaseController {


  TextEditingController clientNameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController eventController = TextEditingController();

  final formkey = GlobalKey<FormState>();

  int value1 = 0;

  String? clientdata;
  Addclientmodel? addClient;

  String photographer = "photographer";

  Future<void>addQuatation() async {
    setBusy(true);
    try {
      Map<String, String> body = {};
      body[RequestKeys.clientName] = clientNameController.text.trim();
      body[RequestKeys.city] = cityController.text.trim();
        body[RequestKeys.type] = photographer;

      AddQuatation res = await api.addnewQuatationApi(body);
      if (!(res.error ?? true)) {
        clientdata =res.message ;
        print('this is message------>${res.message}');
        Fluttertoast.showToast(msg:res.message ?? '' );
        ShowMessage.showSnackBar('Server Res', res.message ?? '');
        setBusy(false);
        Get.back();
        update();
      }

    } catch (e) {
      ShowMessage.showSnackBar('Server Res', '$e');
    } finally {
      setBusy(false);
      update();
    }
  }

  void onTapClear(){
    clientNameController.clear();
    lastnameController.clear();
    cityController.clear();
  }

}