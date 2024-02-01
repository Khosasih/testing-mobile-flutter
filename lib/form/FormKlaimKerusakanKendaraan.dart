import 'package:apps_registrasi_klaim/provider/data_submit_provider.dart';
import 'package:apps_registrasi_klaim/themes.dart';
import 'package:apps_registrasi_klaim/widget/data_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FormKlaimKerusakanKendaraan extends StatefulWidget {
  const FormKlaimKerusakanKendaraan({super.key});

  @override
  State<FormKlaimKerusakanKendaraan> createState() =>
      _FormKlaimKerusakanKendaraanState();
}

class _FormKlaimKerusakanKendaraanState
    extends State<FormKlaimKerusakanKendaraan> {
  final List<Widget> _containers = [];
  bool _hasImage = false;
  @override
  Widget build(BuildContext context) {
    FormValueProvider formValueProvider =
        Provider.of<FormValueProvider>(context);
    handleSubmit() async {}
    // ignore: unused_element
    return Column(
      children: [
        const DataHeader(),
        Container(
          child: Expanded(
            child: ListView.builder(
              itemCount: _containers.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        _containers[index],
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _containers.removeAt(index);
                              _hasImage = false;
                            });
                          },
                          key: Key(_containers[index].hashCode.toString()),
                          child: Row(
                            children: [
                              const SizedBox(),
                              Container(
                                height: 100,
                                margin: EdgeInsets.only(
                                  bottom: 100,
                                  right: defaultMargin,
                                ),
                                child: Icon(Icons.delete, color: primaryColor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
        Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: defaultMargin,
              ),
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  setState(
                    () {
                      _containers.insert(
                        0,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // ignore: sized_box_for_whitespace
                            Container(
                              height: 20,
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.edit_document,
                                    color: Colors.green,
                                  ),
                                  Text(
                                    "Foto Kerusankan ${_containers.length + 1}",
                                    style: primaryTextStyle.copyWith(
                                      fontWeight: bold,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  height: 55,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.3),
                                    ),
                                  ),
                                  child: _hasImage == _hasImage
                                      // ignore: dead_code
                                      ? Image.network(
                                          'https://asset.kompas.com/crops/uBe8HHiiJdqwKbzBCe006euUqNk=/0x0:0x0/750x500/data/photo/2019/12/01/5de3500d9faad.jpg',
                                          width: double.infinity,
                                          fit: BoxFit.cover,
                                        )
                                      : GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _hasImage = false;
                                            });
                                          },
                                          child: const CircleAvatar(
                                            child: Icon(Icons.add),
                                          ),
                                        ),
                                ),
                                // ignore: sized_box_for_whitespace
                                Container(
                                  width: 230,
                                  height: 55,
                                  padding: const EdgeInsets.only(left: 10),
                                  child: const Center(
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        'IMG_aduhaduh.jpg',
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 330,
                              height: 100,
                              child: const TextField(
                                decoration: InputDecoration(
                                  fillColor: Colors.grey,
                                  border: OutlineInputBorder(),
                                  labelText: 'Deskripsi Kerusakan',
                                ),
                                style: TextStyle(fontSize: 14),
                                maxLines: 5,
                                minLines: 2,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                        child: Icon(Icons.add),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Tambah Foto",
                        style: primaryTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      left: defaultMargin, right: defaultMargin, bottom: 5),
                  width: double.infinity,
                  child: TextButton(
                    onPressed: handleSubmit,
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        "Simpan",
                        style: backgroundTextStyle.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
