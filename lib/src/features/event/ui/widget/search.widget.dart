import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration:InputDecoration(
          border: const OutlineInputBorder(
             borderSide: BorderSide(
               color: Colors.black26
             ),
             borderRadius: BorderRadius.all(Radius.circular(4.0))
          ),
          focusedBorder: const OutlineInputBorder(
             borderSide: BorderSide(
               color: Colors.black26
             )
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 12),
          hintText: 'Search by name,region',
          prefixIcon: IconButton(
            onPressed: () {  },
            icon: const Icon(Icons.search_outlined, size: 32, color: Colors.black87,),
          ),
        ),
        showCursor: true,

    );
  }
}
