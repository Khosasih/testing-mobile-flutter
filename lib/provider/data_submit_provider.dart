import 'package:apps_registrasi_klaim/model/formKlaimModel.dart';
import 'package:flutter/material.dart';

class FormValueProvider with ChangeNotifier {
  List<FormValueModel> _allFormValue = [];
  List<FormValueModel> get allFormValue => _allFormValue;
  set allFormValue(List<FormValueModel> allFormValue) {
    _allFormValue = allFormValue;
  }

  List<FormValueModel> _allFormValueFoto = [];
  List<FormValueModel> get allFormValueFoto => _allFormValueFoto;
  set allFormValueFoto(List<FormValueModel> allFormValueFoto) {
    _allFormValueFoto = allFormValueFoto;
  }

  List<FormValueModel> _allFormValueKlaim = [];
  List<FormValueModel> get allFormValueKlaim => _allFormValueKlaim;
  set allFormValueKlaim(List<FormValueModel> allFormValueKlaim) {
    _allFormValueKlaim = allFormValueKlaim;
  }

  setForm(
    FormValueModel formValue,
    FormValueFotoModel formValueFoto,
    FormValueKlaimModel formValueKlaim,
  ) {
    _allFormValue.add(formValue);
    _allFormValueFoto.add(formValueFoto as FormValueModel);
    _allFormValueKlaim.add(formValueKlaim as FormValueModel);
  }

  void nextButton() {
    setForm(
      FormValueModel(
        namaPengemudi: "",
        lainLain: "",
        kejadian: DateTime.now().toString(),
        lainLain2: "",
      ),
      FormValueFotoModel(
        photoUrl: "",
      ),
      FormValueKlaimModel(
        photoUrl: "",
        description: '',
      ),
    );
  }
}
