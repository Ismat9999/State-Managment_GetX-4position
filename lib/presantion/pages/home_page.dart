import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smgetx1lesson/presantion/controllers/home_controller.dart';
import '../../data/models/random_user_list_res.dart';
import '../widgets/item_of_random_user.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();


}

class _HomePageState extends State<HomePage> {
  final _controller=Get.find<HomeController>();

  @override
  void initState() {
    super.initState();
    _controller.initScrollListener();
    _controller.loadRandomUserList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(232,232, 232, 1),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:  const Text("GetX1-version"),
      ),
      body: GetBuilder<HomeController>(
        builder: (controller){
          return Stack(
            children: [
              ListView.builder(
                controller: _controller.scrollController,
                itemCount: _controller.userList.length,
                itemBuilder: (ctx, index){
                  return itemOfRandomUser(_controller.userList[index], index);
                },
              ),
              _controller.isLoading
              ? const Center(
                child: CircularProgressIndicator(),
              ): SizedBox.shrink(),
            ],
          );
        }
      ),
    );
  }
}
