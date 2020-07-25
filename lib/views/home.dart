import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  var _noteEditingController = TextEditingController();
  var _defaultTextColorStyle = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
      child: Row(
        children: <Widget>[
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Home',
                  style: TextStyle(fontSize: 50, color: Colors.white
                      // fontWeight: FontWeight.bold,
                      ),
                ),
                Text(
                  'Welcome to your shadow journal.',
                  style: this._defaultTextColorStyle,
                ),
                Text(
                  'Pen down a thought or two.',
                  style: this._defaultTextColorStyle,
                ),
                Container(
                  height: 50,
                ),
                TextField(
                  autofocus: false,
                  controller: this._noteEditingController,
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.newline,
                  textCapitalization: TextCapitalization.sentences,
                  maxLines: null,
                  minLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText:
                        'I complain about the grocery clerk because \nshe isn\'t wearing a mask.',
                  ),
                  style: TextStyle(fontSize: 14),
                  onEditingComplete: () {
                    // Add newline on enter press.
                    var newValue = this._noteEditingController.text + '\n';
                    this._noteEditingController.text = newValue;
                    this._noteEditingController.selection =
                        TextSelection.collapsed(offset: newValue.length);
                  },
                ),
                RaisedButton(
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {},
                  child: Text('Save for later'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
