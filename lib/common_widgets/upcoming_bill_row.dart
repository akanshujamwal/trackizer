import 'package:flutter/material.dart';
import 'package:trackizer/common/color_extension.dart';

class UpcomingBillRow extends StatelessWidget {
  final Map bObj;
  final VoidCallback onPressed;

  const UpcomingBillRow({
    super.key,
    required this.bObj,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onPressed,
        child: Container(
          height: 65,
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            border: Border.all(color: TColor.border.withOpacity(0.15)),

            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Container(
                height: 40,
                width: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: TColor.gray70,
                  borderRadius: BorderRadius.circular(1),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Jun",
                      style: TextStyle(
                        color: TColor.gray30,
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "25",
                      style: TextStyle(
                        color: TColor.gray30,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  bObj["name"],
                  style: TextStyle(
                    color: TColor.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(width: 8),
              Text(
                "\$ ${bObj["price"]}",
                style: TextStyle(
                  color: TColor.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
