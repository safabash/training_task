import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:training_task/controller/api_controller.dart';

class ApiCalling extends StatelessWidget {
  const ApiCalling({super.key});

  @override
  Widget build(BuildContext context) {
    final apiController = Get.put(APIController());

    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Obx(
        () => apiController.isLoading.value == true
            ? const Center(child: CircularProgressIndicator(strokeWidth: 2))
            : Scaffold(
                backgroundColor: const Color(0xFF121212),
                appBar: AppBar(
                  backgroundColor: const Color.fromARGB(255, 33, 33, 33),
                  bottom: TabBar(
                    labelColor: Colors.red,
                    unselectedLabelColor: Colors.white,
                    tabs: <Widget>[
                      Tab(
                        text: apiController.model!.genres[0].name,
                      ),
                      Tab(
                        text: apiController.model!.genres[1].name,
                      ),
                      Tab(
                        text: apiController.model!.genres[2].name,
                      ),
                    ],
                  ),
                ),
                body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12.0, horizontal: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Coming Soon",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                                fit: BoxFit.fill,
                                height: 400,
                                width: 400,
                                'https://image.tmdb.org/t/p/original/${apiController.model!.posterPath}'),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const SizedBox(height: 10),
                        const Text("Trending Now",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 21.0,
                              fontWeight: FontWeight.w400,
                            )),
                        const SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
