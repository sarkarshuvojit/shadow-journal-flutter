import 'package:flutter/material.dart';
import 'package:nice_button/NiceButton.dart';

class HomeView extends StatelessWidget {

  var _noteEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20, 40, 20, 0),
      child: Row(
        children: <Widget>[
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Home',
                  style: TextStyle(
                    fontSize: 50,
                    // fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Welcome to your shadow journal.'),
                Text('Pen down a thought or two.'),
                Container(
                  height: 50,
                ),
                TextField(
                  controller: this._noteEditingController,
                  keyboardType: TextInputType.multiline,
                  textInputAction: TextInputAction.done,
                  textCapitalization: TextCapitalization.sentences,
                  maxLines: null,
                  minLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText:
                        'I complain about the grocery clerk \nbecause she isn\'t wearing a mask',
                  ),
                  style: TextStyle(
                    fontSize: 14
                  ),
                  onEditingComplete: () {
                    print('Editing Complete');
                    this._noteEditingController.text = this._noteEditingController.text + '\n';
                    this._noteEditingController.selection = TextSelection.collapsed(offset: this._noteEditingController.text.length);
                  },
                ),
                RaisedButton(
                  color: Colors.blue,
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
