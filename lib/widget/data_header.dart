import 'package:apps_registrasi_klaim/themes.dart';
import 'package:flutter/material.dart';

class DataHeader extends StatelessWidget {
  const DataHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: defaultMargin,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
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
          ],
        ),
      ),
    );
  }
}
