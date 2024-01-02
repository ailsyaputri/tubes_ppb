import 'package:flutter/material.dart';
import 'package:tooma_app/model/popular.dart';

typedef ProductCardOnTaped = void Function(Product data);

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.data, this.ontap});

  final Product data;
  final ProductCardOnTaped? ontap;

  @override
  Widget build(BuildContext context) {
    // final data = datas[index % datas.length];
    const borderRadius = BorderRadius.all(Radius.circular(20));
    return InkWell(
      borderRadius: borderRadius,
      onTap: () => ontap?.call(data),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: borderRadius,
              color: Color(0xFFeeeeee),
            ),
            child: Stack(
              children: [
                Image.asset(data.icon, width: 182, height: 182),
                Positioned(
                  top: 16,
                  right: 16,
                  child: Image.asset('assets/icons/not_collected@2x.png',
                      width: 28, height: 28),
                )
              ],
            ),
          ),
          const SizedBox(height: 12),
          FittedBox(
            child: Text(
              data.title,
              style: const TextStyle(
                color: Color(0xFF212121),
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Rp. ${data.price.toStringAsFixed(0)}',
            style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF212121)),
          )
        ],
      ),
    );
  }
}
