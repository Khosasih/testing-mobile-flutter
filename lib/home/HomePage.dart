import 'package:apps_registrasi_klaim/form/FormKlaimKerusakanKendaraan.dart';
import 'package:apps_registrasi_klaim/form/FormUploadDokument.dart';
import 'package:apps_registrasi_klaim/form/FormulirKlaim.dart';
import 'package:flutter/material.dart';
import 'package:apps_registrasi_klaim/themes.dart';

class HomePage extends StatefulWidget {
  const HomePage(this.imageUrl, {super.key});
  final String imageUrl;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  // ignore: prefer_final_fields

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = [
      FormKlaim(),
      FormUploadDokumen(),
      FormKlaimKerusakanKendaraan(),
    ];
    header() {
      return AppBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        title: Container(
          margin: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: defaultMargin,
          ),
          child: Row(
            children: [
              Icon(
                Icons.arrow_back,
                color: primaryTextColor,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Registrasi Klaim",
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: bold,
                ),
              ),
            ],
          ),
        ),
      );
    }

    // ignore: no_leading_underscores_for_local_identifiers
    Widget _buildTabItem(
      int index,
      Container container,
      imageUrl,
      String text,
    ) =>
        Row(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 10),
                  height: 55,
                  width: 10,
                  decoration: BoxDecoration(
                    color: _currentIndex == index ? primaryColor : Colors.green,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                ),
                imageUrl,
              ],
            ),
            Container(
              height: 55,
              width: 150,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  text,
                  style: secondTextStyle.copyWith(
                    fontWeight: bold,
                  ),
                ),
              ),
            ),
          ],
        );

    Widget formKlaim() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = 0;
                    });
                  },
                  child: _buildTabItem(
                      0,
                      Container(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        color: _currentIndex == 0
                            ? primaryColor.withOpacity(0.10)
                            : Colors.green.withOpacity(0.10),
                        width: 50,
                        height: 55,
                        child: Image.asset(
                          'assets/icons/icon_form.png',
                        ),
                      ),
                      'Formulir Klaim'),
                ),
                const SizedBox(width: 15),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = 1;
                    });
                  },
                  child: _buildTabItem(
                      1,
                      Container(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        color: _currentIndex == 1
                            ? primaryColor.withOpacity(0.10)
                            : Colors.green.withOpacity(0.10),
                        width: 50,
                        height: 55,
                        child: Image.asset(
                          'assets/icons/icon_card.png',
                        ),
                      ),
                      'Foto SIM & STNK'),
                ),
                const SizedBox(width: 15),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _currentIndex = 2;
                    });
                  },
                  child: _buildTabItem(
                      2,
                      Container(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 10),
                        color: _currentIndex == 2
                            ? primaryColor.withOpacity(0.10)
                            : Colors.green.withOpacity(0.10),
                        width: 50,
                        height: 55,
                        child: Image.asset(
                          'assets/icons/icon_assurance.png',
                        ),
                      ),
                      'Klaim Kerusakan \nKendaraan'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: _pages[_currentIndex],
          ),
        ],
      );
    }

    return Scaffold(
      appBar: header(),
      body: formKlaim(),
    );
  }
}
