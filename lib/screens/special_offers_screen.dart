import 'package:flutter/material.dart';
import 'package:tooma_app/components/app_bar.dart';
import 'package:tooma_app/components/special_offer_widget.dart';
import 'package:tooma_app/model/special_offer.dart';

class SpecialOfferScreen extends StatefulWidget {
  const SpecialOfferScreen({super.key});

  @override
  State<SpecialOfferScreen> createState() => _SpecialOfferScreenState();

  static String route() => '/special_offers';
}

class _SpecialOfferScreenState extends State<SpecialOfferScreen> {
  late final List<SpecialOffer> datas = homeSpecialOffers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar.defaultAppBar(
        context,
        title: 'Special Offers'
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(24),
        itemBuilder: (context, index) {
          final data = datas[index];
          return Container(
            height: 181,
            decoration: const BoxDecoration(
              color: Color(0xFFE7E7E7),
              borderRadius: BorderRadius.all(Radius.circular(32)),
            ),
            child: SpecialOfferWidget(context, data: data, index: index),
          );
        },
        itemCount: datas.length,
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 24);
        },
      ),
    );
  }
}
