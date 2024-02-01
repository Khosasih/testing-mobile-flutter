// ignore_for_file: file_names

import 'package:apps_registrasi_klaim/themes.dart';
import 'package:apps_registrasi_klaim/widget/data_header.dart';
import 'package:apps_registrasi_klaim/widget/upload_foto.dart';
import 'package:flutter/material.dart';

class FormUploadDokumen extends StatelessWidget {
  const FormUploadDokumen({super.key});

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            UploadFoto(
              header: "Foto SIM",
              text: "Upload Foto SIM",
              footer: "*Data pada SIM harus terlihat jelas",
            ),
            SizedBox(
              height: 15,
            ),
            UploadFoto(
              header: "Foto STNK",
              text: "Upload Foto STNK",
              footer: "*Data pada STNK harus terlihat jelas",
            ),
            SizedBox(
              height: 15,
            ),
            UploadFoto(
              header: "Foto KTP Tanggung",
              text: "Upload Foto KTP",
              footer: "*Data pada KTP harus terlihat jelas",
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const DataHeader(),
              content(),
            ],
          ),
        ),
      ),
    );
  }
}
