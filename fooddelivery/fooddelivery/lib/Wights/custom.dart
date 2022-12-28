//Add this CustomPaint widget to the Widget Tree
import 'package:flutter/material.dart';


//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(0,size.height*0.1792115);
    path_0.lineTo(0,size.height);
    path_0.lineTo(size.width,size.height);
    path_0.lineTo(size.width,size.height*-0.003418190);
    path_0.lineTo(size.width,size.height*-0.01075269);
    path_0.cubicTo(size.width,size.height*0.04948781,size.width*0.9378167,size.height*0.08960573,size.width*0.8611111,size.height*0.08960573);
    path_0.lineTo(size.width*0.1388889,size.height*0.08960573);
    path_0.cubicTo(size.width*0.06218278,size.height*0.08960573,0,size.height*0.1297237,0,size.height*0.1792115);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = Color(0xffFFD200).withOpacity(1.0);
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}