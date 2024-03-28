import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:googleclone/colorrs.dart';
import 'package:googleclone/screen/search_screen.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment:  MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [Center(
        child: Image.asset('assets/images/google-logo.png',height: size.height*0.15,),


      ),
      const SizedBox(height: 18,),
      SizedBox(
        width: size.width > 768 ?size.width*0.4: size.width*0.9,
        child: TextFormField(
          onFieldSubmitted: (query){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) =>Searchscreen(searchQuery: query, start: '0')
              ),

            );
          },
          decoration:  InputDecoration(
            border: const OutlineInputBorder(
            borderSide:BorderSide(
              color:searchBorder,
        
            ),
            borderRadius: BorderRadius.all(Radius.circular(30,),),
        
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset('assets/images/search-icon.svg',
            color: searchBorder,
            height: 1,
            width: 1,),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset('assets/images/mic-icon.svg',
            height: 1,
            width: 1,),
          )
          ),
        
        ),
      ),
      ],
    );
  }
}