import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DownloadCVButton extends StatelessWidget {
  const DownloadCVButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var AppColors;
    return Container(

      height: 50,
      width: 250,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: AppColors.studio)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text("Download CV",style: TextStyle(color: AppColors.studio),),

          const SizedBox.square(dimension: 12,),
          FaIcon(FontAwesomeIcons.download,color: AppColors.studio,size: 18,)
        ],
      ),
    );
  }
}