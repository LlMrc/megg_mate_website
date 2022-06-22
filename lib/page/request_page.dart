import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui' as ui;
import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart ' as pw;
import 'package:megg_mate_website/model/clients_box.dart';
import 'package:flutter/services.dart';
import 'desktop_body.dart';

class RequestPage extends StatefulWidget {
  
   const RequestPage({Key? key, required, required this.transaction})
      : super(key: key);
  final List<ClientBox> transaction;

  @override
  State<RequestPage> createState() => _RequestPageState();
}

class _RequestPageState extends State<RequestPage> {
  GlobalKey globalKey = GlobalKey();
  Future<void> _capturePng() async {
    final RenderRepaintBoundary boundary =
        globalKey.currentContext!.findRenderObject()! as RenderRepaintBoundary;
    final ui.Image image = await boundary.toImage();
    final ByteData? byteData =
        await image.toByteData(format: ui.ImageByteFormat.png);
    final Uint8List pngBytes = byteData!.buffer.asUint8List(); 
     Image imgs =  await getPdf(pngBytes);
  }
   
  @override
  Widget build(BuildContext context) {
  SystemChrome.setPreferredOrientations([
  DeviceOrientation.landscapeLeft,
  DeviceOrientation.landscapeRight,
]);        
      return 
        RepaintBoundary(
          key: globalKey,
          child: Scaffold(
              body: Container(
                padding: const EdgeInsets.all(14),
                height: 600,
                color: Colors.grey.shade200,
                child: ListView(
                 shrinkWrap: true,
                  children: [
                    ListView.builder(
                      
                        shrinkWrap: true,
                        itemCount: widget.transaction.length,
                        itemBuilder: (context, index) {
                          final singleTransaction = widget.transaction[index];
                          return Table(
                            border: TableBorder.all(),
                            children: [
                              buildTableRow([
                                'NAME',
                                'EMAIL',
                                'COMPANY',
                                'CATEGORY',
                                'TECHNOLOGIE',
                                'WEBSITE COLOR',
                                'COMMENT'
                              ], isHeader: true),
                              buildTableRow([
                                singleTransaction.name,
                                singleTransaction.mail,
                                singleTransaction.company,
                                singleTransaction.category,
                                singleTransaction.technologie,
                                singleTransaction.webColor,
                                singleTransaction.comment,
                              ])
                            ],
                          );
                        }),
                    Flexible(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width / 2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ElevatedButton.icon(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20))),
                                    maximumSize:
                                        MaterialStateProperty.all(const Size(150, 60)),
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.blue)),
                                icon: const Icon(Icons.edit),
                                onPressed: () {
                                   Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (_) => DesktopBody(idx: 1,isVsble: false,)));
                                },
                                label: const Text('Edit')),
                            ElevatedButton.icon(
                                style: ButtonStyle(
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(20))),
                                    maximumSize:
                                        MaterialStateProperty.all( const Size(150, 60)),
                                    backgroundColor:
                                        MaterialStateProperty.all(Colors.red)),
                                icon: const Icon(Icons.delete_forever),
                                onPressed: () {
                                   Navigator.pushReplacement(context,
                                      MaterialPageRoute(builder: (_) => DesktopBody(idx: 1,isVsble: false,)));
                                },
                                label: const Text('Delete')),
                         ElevatedButton.icon(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(
                                          RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20))),
                                      maximumSize:
                                          MaterialStateProperty.all(const Size(150, 60)),
                                      backgroundColor:
                                          MaterialStateProperty.all(Colors.green)),
                                  icon: const Icon(Icons.share),
                                  onPressed: ()async {
                                    _capturePng();
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (_) => DesktopBody(idx: 1,isVsble: false,)));

                                  },
                                  label: const Text('Send')),
                    
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )),
        );
   

  }

  TableRow buildTableRow(List<String> list, {bool isHeader = false}) {
    final style = TextStyle(
        fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
        fontSize: 18);

    return TableRow(
        children: list
            .map((e) => Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(child: Text(e, style: style)),
                ))
            .toList());
  }

  Future getPdf(Uint8List screenShot) async {
    pw.Document pdf = pw.Document();
    final img = pw.MemoryImage(screenShot);
    pdf.addPage(
      pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (context) {
          return pw.Expanded(
            child: pw.Image(img),
          );
        },
      ),
    );
    // File pdfFile = File('Your path + File name');
    // pdfFile.writeAsBytesSync(await pdf.save());
    print(pdf);
  }
}
