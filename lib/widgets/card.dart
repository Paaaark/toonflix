import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final bool isInverted;
  final IconData icon;

  final BLACK = const Color(0xFF1F2123);
  final WHITE = Colors.white;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInverted ? WHITE : BLACK,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: isInverted ? BLACK : WHITE,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      amount,
                      style: TextStyle(
                        color: isInverted ? BLACK : WHITE,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(code,
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 18,
                        )),
                  ],
                )
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-10, 15),
                child: Icon(
                  icon,
                  color: isInverted ? BLACK : WHITE,
                  size: 80,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
