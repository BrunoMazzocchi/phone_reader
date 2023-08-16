import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phone_reader/config/theme/light_theme.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: LightTheme.lightGrey,
              borderRadius: BorderRadius.circular(40),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: GoogleFonts.cabin(
                  color: LightTheme.grey,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(40),
                ),
                prefixIcon: const Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 16.0),
                  child:  Icon(
                    Icons.search,
                    size: 27,
                    color: LightTheme.grey,
                  ),
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 16.0),
              ),
            ),
          ),
        )
      ],
    );
  }
}
