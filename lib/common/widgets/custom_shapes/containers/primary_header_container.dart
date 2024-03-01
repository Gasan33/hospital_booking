import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';
class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.white,

        /// -- if size.infinite is not true error occurred
        child: Stack(
          children: [
            /// -- Background Custom Shapes
            Positioned(
                top: 40,
                right: 300,
                child: TCircularContainer(
                  width: 200,
                  height: 200,
                  backgroundColor: Colors.blue.withOpacity(0.5),
                )),
            Positioned(
              top: 50,
              right: -90,
              child: TCircularContainer(
                width: 180,
                height: 180,
                backgroundColor: Colors.blue.withOpacity(0.5),
              ),
            ),
            Positioned(
              top: 40,
              right: -80,
              child: TCircularContainer(
                width: 200,
                height: 200,
                backgroundColor: TColors.primary.withOpacity(0.3),
              ),
            ),
            child,
          ],
        ),
      ),
    );
  }
}