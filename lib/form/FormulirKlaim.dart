import 'package:apps_registrasi_klaim/provider/data_submit_provider.dart';
import 'package:apps_registrasi_klaim/themes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormKlaim extends StatefulWidget {
  const FormKlaim({super.key});

  @override
  State<FormKlaim> createState() => _FormKlaimState();
}

class _FormKlaimState extends State<FormKlaim> {
  final TextEditingController _dateController = TextEditingController();
  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1999),
      lastDate: DateTime(2050),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = picked.toString().split(" ")[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    FormValueProvider formValueProvider =
        Provider.of<FormValueProvider>(context);

    TextEditingController namaPengemudiController =
        TextEditingController(text: '');
    TextEditingController lainLainController = TextEditingController(text: '');
    TextEditingController kejadianController = TextEditingController(text: '');
    TextEditingController lainLain2Controller = TextEditingController(text: '');

    final List<String> options = ['Option 1', 'Option 2', 'Option 3'];

    Widget header() {
      return Container(
        height: 25,
        width: double.infinity,
        decoration: BoxDecoration(
          color: primaryColor.withOpacity(0.10),
        ),
        child: Center(
          child: Text("Registrasi Klaim: B 1234 EFG",
              style: primaryTextStyle.copyWith(
                fontWeight: bold,
              )),
        ),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        padding: EdgeInsets.symmetric(
          vertical: defaultMargin,
          horizontal: defaultMargin,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("No. Polisi",
                    style: primaryTextStyle.copyWith(fontWeight: bold)),
                const Text("B 1234 EFG"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nama Tertanggung",
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                const Text("Fajar Priyadi"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "No. Polis",
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                const Text("VCL2007001"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Periode",
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                const Text("1 Juli 2020 - 30 Juni 2021"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nilai Pertanggungan",
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                const Text("BRp.120.000.000,-"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Buatan/merk",
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                const Text("Jepang/Honda"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tahun Pembuatan",
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                const Text("2019"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "No. Mesin",
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                const Text("NHX120000"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "No. Rangka",
                  style: primaryTextStyle.copyWith(fontWeight: bold),
                ),
                const Text(
                  "MCM24000",
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget bodyInput() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        padding: EdgeInsets.symmetric(
          vertical: defaultMargin,
          horizontal: defaultMargin,
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.withOpacity(0.5),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nama Pengemudi",
              style: primaryTextStyle.copyWith(
                fontSize: 12,
                fontWeight: bold,
              ),
            ),
            TextFormField(
              controller: namaPengemudiController,
              decoration: InputDecoration(
                hintText: "Masukan Nama Pengemudi",
                focusColor: primaryColor,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: primaryColor,
                  ),
                ),
                labelStyle: primaryTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownButtonFormField(
              items: options.map((String option) {
                return DropdownMenuItem<String>(
                    value: option, child: Text(option));
              }).toList(),
              onChanged: (String? newValue) {
                lainLainController.text = newValue!;
                setState(() {});
              },
              decoration: const InputDecoration(
                hintText: "Lain-lain",
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: kejadianController,
              decoration: InputDecoration(
                hintText: "Silahkan Tulisakan Kejadian",
                focusColor: primaryColor,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: primaryColor,
                  ),
                ),
                labelStyle: primaryTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 12,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _dateController,
              decoration: InputDecoration(
                suffixIcon: const Icon(
                  Icons.calendar_month,
                  color: Colors.green,
                ),
                hintText: "Tanggal dan Waktu Kejadian",
                focusColor: primaryColor,
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: primaryColor,
                  ),
                ),
                labelStyle: primaryTextStyle.copyWith(
                  fontWeight: bold,
                  fontSize: 12,
                ),
              ),
              readOnly: true,
              onTap: () {
                setState(() {
                  _selectDate();
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            DropdownButtonFormField(
              items: options.map((String option) {
                return DropdownMenuItem<String>(
                    value: option, child: Text(option));
              }).toList(),
              onChanged: (String? newValue) {
                lainLain2Controller.text = newValue!;
                setState(() {});
              },
              decoration: const InputDecoration(
                hintText: "Lain-lain",
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              header(),
              content(),
              bodyInput(),
            ],
          ),
        ),
      ),
    );
  }
}
