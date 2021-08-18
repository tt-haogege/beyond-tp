import 'package:get/get_state_manager/get_state_manager.dart';
import 'controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../layout/index.dart';
import '../../widgets/page_description/index.dart';
import '../../widgets/empty_entry_list/index.dart';
import 'entry_list.dart';
class Agents extends GetView<AgentsController> {
  final AgentsController c = Get.put(AgentsController());
  Agents() {
    c.getAgents();
  }
  @override
  Widget build(BuildContext context) {
    return Layout(
      child: Column(
        children: [
          PageDescription(
            icon: Icons.dns_sharp,
            title: 'Agents'.tr,
            subtitle:
                "Go to download Application, add and configure the Agent"
                    .tr,
          ),
          EntryList(),
        ],
      ),
    );
  }
}