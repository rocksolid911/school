import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
 final List dropdownitem;
 final String  labeltext;
   SearchBar({Key key, this.dropdownitem, this.labeltext}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController editingController = TextEditingController();
  // var _currencies = [
  //   "Food",
  //   "Transport",
  //   "Personal",
  //   "Shopping",
  //   "Medical",
  //   "Rent",
  //   "Movie",
  //   "Salary"
  // ];

  var _currentSelectedValue;



  @override
  Widget build(BuildContext context) {
    return FormField<String>(
      builder: (FormFieldState<String> state) {
        return InputDecorator(
          isFocused: true,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
            labelText: widget.labeltext,
            labelStyle: TextStyle(),
            errorStyle: TextStyle(color: Colors.redAccent, fontSize: 16.0),
            hintText: 'Please select expense',
            border: OutlineInputBorder(
              gapPadding: 0,
              borderRadius: BorderRadius.circular(45.0),
              borderSide: BorderSide(color: Colors.pinkAccent,),

            ),

            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.5,
                color: Colors.pinkAccent,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(45.0),
              ),
            ),
          ),
          isEmpty: _currentSelectedValue == '',
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              iconEnabledColor: Colors.pinkAccent,
              iconSize: 25,
              value: _currentSelectedValue,
              isDense: true,
              onChanged: (String newValue) {
                setState(() {
                  _currentSelectedValue = newValue;
                  state.didChange(newValue);
                });
              },
              items: widget.dropdownitem.map((value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        );
      },
    );
  }
}
