import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class Singleuserread extends StatefulWidget {
  final String docid;
  Singleuserread({required this.docid});

  @override
  State<Singleuserread> createState() => _SingleuserreadState();
}

class _SingleuserreadState extends State<Singleuserread> {
  @override
  Widget build(BuildContext context) {
    CollectionReference users = FirebaseFirestore.instance.collection("guest");
    return Scaffold(
      appBar: AppBar(
        title: const Text('Single User View'),
      ),
      body: FutureBuilder<DocumentSnapshot>(
          future: users.doc(widget.docid).get(),
          builder: ((context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Card(
                          elevation: 10,
                          shadowColor: Colors.blueAccent,
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(
                              //color: Colors.greenAccent,
                              width: 1,
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 10, top: 5, bottom: 5),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          'Name: ',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        const SizedBox(width: 0,),
                                        Text(
                                          '${data['name']}',
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                        const SizedBox(height: 50,),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Email: ',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        const SizedBox(width: 10,),
                                        Text(
                                          '${data['email']}',
                                          style: const TextStyle(fontSize: 20),
                                        )
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Mobile Number: ',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        const SizedBox(width: 20,),
                                        Text(
                                          '${data['mobilenumber']}',
                                          style: const TextStyle(fontSize: 20),
                                        )
                                        ,
                                        const SizedBox(height: 50,),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Pincode: ',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        const SizedBox(width: 20,),
                                        Text(
                                          '${data['pincode']}',
                                          style: const TextStyle(fontSize: 20),
                                        )
                                        ,
                                        const SizedBox(height: 50,),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'State: ',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        const SizedBox(width: 20,),
                                        Text(
                                          '${data['state']}',
                                          style: const TextStyle(fontSize: 20),
                                        )
                                        ,
                                        const SizedBox(height: 50,),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Country: ',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        const SizedBox(width: 20,),
                                        Text(
                                          '${data['country']}',
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                        const SizedBox(height: 50,),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Company Name: ',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        const SizedBox(width: 20,),
                                        Text(
                                          '${data['companyName']}',
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                        const SizedBox(height: 50,),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Company Address: ',
                                          style: TextStyle(fontSize: 20),
                                        ),

                                        Text(
                                          '${data['companyAdd']}',
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                        const SizedBox(height: 50,),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'City Address: ',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        const SizedBox(width: 20,),
                                        Text(
                                          '${data['addressCity']}',
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                        const SizedBox(height: 50,),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Address Street 1: ',
                                          style: TextStyle(fontSize: 20),
                                        ),

                                        Text(
                                          '${data['addressStreet1']}',
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                        const SizedBox(height: 50,),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Address Street 2: ',
                                          style: TextStyle(fontSize: 20),
                                        ),

                                        Text(
                                          '${data['addressStreet1']}',
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                        const SizedBox(height: 10,),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Mobile Number: ',
                                          style: TextStyle(fontSize: 20),
                                        ),
                                        const SizedBox(width: 20,),
                                        Text(
                                          '${data['mobilenumber']}',
                                          style: const TextStyle(fontSize: 20),
                                        ),
                                        const SizedBox(height: 50,),
                                      ],
                                    ),

                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }
            return const Center(child: CircularProgressIndicator());
          })),
    );
  }
}