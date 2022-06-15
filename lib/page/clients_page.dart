import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mailto/mailto.dart';
import 'package:megg_mate_website/model/clients_box.dart';
import 'package:megg_mate_website/page/request_page.dart';
import 'package:url_launcher/url_launcher.dart';

import '../model/box_transaction.dart';

class ClientPage extends StatefulWidget {
  const ClientPage({Key? key}) : super(key: key);

  @override
  State<ClientPage> createState() => _ClientPageState();
}

class _ClientPageState extends State<ClientPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: const Text('My Request'),),
        body: Center(
          child: ValueListenableBuilder<Box<ClientBox>>(
              valueListenable: Boxes.getTransaction().listenable(),
              builder: (context, box, _) {
                final transactions =
                    box.values.toList().cast<ClientBox>();
                return buildContent(transactions);
              }),
        ));
  }

  Widget buildContent(List<ClientBox> transaction) { 
          return RequestPage(
            transaction: transaction,
          );
     }


     
   }
