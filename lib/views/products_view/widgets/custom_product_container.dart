import 'package:flutter/material.dart';
import 'package:pure_commerce/constants/constants.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'custom_product_widget.dart';

class SmartPhoneContainer extends StatefulWidget {
  const SmartPhoneContainer({super.key});

  @override
  State<SmartPhoneContainer> createState() => _SmartPhoneContainerState();
}

String sortGroupValue = "sort";
String brandGroupValue = "brand";
SfRangeValues _values = const SfRangeValues(40.0, 80.0);

class _SmartPhoneContainerState extends State<SmartPhoneContainer> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 130),
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25), topRight: Radius.circular(25)),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.view_list,
                            color: Colors.grey,
                            size: 28,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.view_list,
                            color: kPrimaryColor,
                            size: 28,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Filter',
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Row(
                            children: [
                              const Text(
                                'Sort By',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              IconButton(
                                  icon: const Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    size: 28,
                                  ),
                                  onPressed: () {
                                    showModalBottomSheet(
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(25),
                                              topRight: Radius.circular(25))),
                                      context: context,
                                      elevation: 0,
                                      builder: (context) {
                                        return StatefulBuilder(
                                          builder: (context, setState) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.all(20.0),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const Text(
                                                      'Filter',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                    const Text(
                                                      'Sort By',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    RadioListTile(
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                        horizontal: 8,
                                                      ),
                                                      visualDensity:
                                                          const VisualDensity(
                                                              horizontal: -4),
                                                      title: const Text(
                                                          "Featured"),
                                                      activeColor: Colors.amber,
                                                      value: "featured",
                                                      groupValue:
                                                          sortGroupValue,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          sortGroupValue =
                                                              value.toString();
                                                        });
                                                      },
                                                    ),
                                                    RadioListTile(
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                        horizontal: 8,
                                                      ),
                                                      visualDensity:
                                                          const VisualDensity(
                                                              horizontal: -4),
                                                      title:
                                                          const Text("Newest"),
                                                      value: "newest",
                                                      activeColor: Colors.amber,
                                                      groupValue:
                                                          sortGroupValue,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          sortGroupValue =
                                                              value.toString();
                                                        });
                                                      },
                                                    ),
                                                    RadioListTile(
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                        horizontal: 8,
                                                      ),
                                                      visualDensity:
                                                          const VisualDensity(
                                                              horizontal: -4),
                                                      title: const Text(
                                                          "Price:Low-High"),
                                                      value: "Price:Low-High",
                                                      activeColor: Colors.amber,
                                                      groupValue:
                                                          sortGroupValue,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          sortGroupValue =
                                                              value.toString();
                                                        });
                                                      },
                                                    ),
                                                    RadioListTile(
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                        horizontal: 8,
                                                      ),
                                                      visualDensity:
                                                          const VisualDensity(
                                                              horizontal: -4),
                                                      title: const Text(
                                                          "Price:High-Low"),
                                                      value: "Price:High-Low",
                                                      activeColor: Colors.amber,
                                                      groupValue:
                                                          sortGroupValue,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          sortGroupValue =
                                                              value.toString();
                                                        });
                                                      },
                                                    ),
                                                    const Divider(
                                                      color: Colors.black,
                                                      height: 3,
                                                      thickness: 0.5,
                                                    ),
                                                    const SizedBox(
                                                      height: 15,
                                                    ),
                                                    const Text(
                                                      'Price Range',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                    const Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          '\$0.0',
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                        Text(
                                                          '\$100.0',
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    SfRangeSlider(
                                                      min: 0.0,
                                                      max: 100.0,
                                                      activeColor: const Color(
                                                          0xffffae17),
                                                      values: _values,
                                                      interval: 20,
                                                      //showTicks: true,
                                                      //showLabels: true,
                                                      enableTooltip: true,
                                                      minorTicksPerInterval: 1,
                                                      onChanged: (SfRangeValues
                                                          values) {
                                                        setState(() {
                                                          _values = values;
                                                        });
                                                      },
                                                    ),
                                                    const SizedBox(
                                                      height: 15,
                                                    ),
                                                    const Divider(
                                                      color: Colors.black,
                                                      height: 3,
                                                      thickness: 0.5,
                                                    ),
                                                    const SizedBox(
                                                      height: 15,
                                                    ),
                                                    const Text(
                                                      'Brand',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                    RadioListTile(
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                        horizontal: 8,
                                                      ),
                                                      visualDensity:
                                                          const VisualDensity(
                                                              horizontal: -4),
                                                      title: const Text("Nike"),
                                                      activeColor: Colors.amber,
                                                      value: "Nike",
                                                      groupValue:
                                                          brandGroupValue,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          brandGroupValue =
                                                              value.toString();
                                                        });
                                                      },
                                                    ),
                                                    RadioListTile(
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                        horizontal: 8,
                                                      ),
                                                      visualDensity:
                                                          const VisualDensity(
                                                              horizontal: -4),
                                                      title:
                                                          const Text("Adidas"),
                                                      value: "Adidas",
                                                      activeColor: Colors.amber,
                                                      groupValue:
                                                          brandGroupValue,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          brandGroupValue =
                                                              value.toString();
                                                        });
                                                      },
                                                    ),
                                                    RadioListTile(
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                        horizontal: 8,
                                                      ),
                                                      visualDensity:
                                                          const VisualDensity(
                                                              horizontal: -4),
                                                      title: const Text(
                                                          "Under Armour"),
                                                      value: "Under Armour",
                                                      activeColor: Colors.amber,
                                                      groupValue:
                                                          brandGroupValue,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          brandGroupValue =
                                                              value.toString();
                                                        });
                                                      },
                                                    ),
                                                    RadioListTile(
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                        horizontal: 8,
                                                      ),
                                                      visualDensity:
                                                          const VisualDensity(
                                                              horizontal: -4),
                                                      title:
                                                          const Text("Kappo"),
                                                      value: "Kappo",
                                                      activeColor: Colors.amber,
                                                      groupValue:
                                                          brandGroupValue,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          brandGroupValue =
                                                              value.toString();
                                                        });
                                                      },
                                                    ),
                                                    RadioListTile(
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                        horizontal: 8,
                                                      ),
                                                      visualDensity:
                                                          const VisualDensity(
                                                              horizontal: -4),
                                                      title: const Text("Fila"),
                                                      value: "Fila",
                                                      activeColor: Colors.amber,
                                                      groupValue:
                                                          brandGroupValue,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          brandGroupValue =
                                                              value.toString();
                                                        });
                                                      },
                                                    ),
                                                    RadioListTile(
                                                      contentPadding:
                                                          const EdgeInsets
                                                              .symmetric(
                                                        horizontal: 8,
                                                      ),
                                                      visualDensity:
                                                          const VisualDensity(
                                                              horizontal: -4),
                                                      title: const Text("Puma"),
                                                      value: "Puma",
                                                      activeColor: Colors.amber,
                                                      groupValue:
                                                          brandGroupValue,
                                                      onChanged: (value) {
                                                        setState(() {
                                                          brandGroupValue =
                                                              value.toString();
                                                        });
                                                      },
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 20),
                                                      child: Row(
                                                        children: [
                                                          Expanded(
                                                            flex: 6,
                                                            child:
                                                                MaterialButton(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .symmetric(
                                                                      vertical:
                                                                          12),
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            25),
                                                              ),
                                                              color:
                                                                  kPrimaryColor,
                                                              onPressed: () {},
                                                              child: const Text(
                                                                'Apply',
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: IconButton(
                                                              onPressed: () {
                                                                Navigator.pop(
                                                                    context);
                                                              },
                                                              icon: const Icon(
                                                                Icons
                                                                    .cancel_outlined,
                                                                color:
                                                                    Colors.red,
                                                                size: 45,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    );
                                  }),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 16,
                  child: GridView.builder(
                      physics: const BouncingScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: 1 / 1.6,
                              crossAxisSpacing: 15,
                              mainAxisSpacing: 0),
                      itemCount: 16,
                      itemBuilder: (BuildContext ctx, index) {
                        return const CustomProductWidget();
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
