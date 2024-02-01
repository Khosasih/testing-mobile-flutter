import 'package:apps_registrasi_klaim/themes.dart';
import 'package:flutter/material.dart';

class UploadFoto extends StatefulWidget {
  final String text;
  final String footer;
  final String header;
  const UploadFoto({
    super.key,
    this.text = "",
    this.footer = "",
    this.header = "",
  });

  @override
  State<UploadFoto> createState() => _UploadFotoState();
}

class _UploadFotoState extends State<UploadFoto> {
  bool _hasImage = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.header,
          style: primaryTextStyle.copyWith(fontWeight: bold),
        ),
        Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  child: _hasImage
                      // ignore: dead_code
                      ? Image.network(
                          'https://berjayanews.com/asset/images/Screenshot_3-768x481.jpg',
                          width: double.infinity,
                          fit: BoxFit.contain,
                        )
                      : null,
                ),
              ],
            ),
            _hasImage
                // ignore: dead_code
                ? Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: 30,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.red.withOpacity(0.5),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(5),
                        ),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            _hasImage = false;
                          });
                        },
                        child: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                : Positioned(
                    top: 70,
                    left: 120,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _hasImage = true;
                        });
                      },
                      child: Column(
                        children: [
                          const CircleAvatar(
                            child: Icon(Icons.add),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            widget.text,
                            style: secondTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ),
          ],
        ),
        Text(
          widget.footer,
          style: primaryTextStyle.copyWith(fontSize: 12),
        ),
      ],
    );
  }
}
