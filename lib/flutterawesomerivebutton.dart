import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'package:flutter/widgets.dart';

class CircularAwesomeflarebutton extends StatefulWidget {
  final Alignment alignment;
  final BoxFit fit;
  final bool pause;
  final FlareCompletedCallback callback;
  final GestureTapCallback onPress;

  const CircularAwesomeflarebutton({
    this.alignment=Alignment.center,
    this.fit=BoxFit.contain,
    this.pause=false,
    this.callback,
    this.onPress,
    Key key

  }): super(key: key);
  @override
  _CircularAwesomeflarebuttonState createState() => _CircularAwesomeflarebuttonState();
}

class _CircularAwesomeflarebuttonState extends State<CircularAwesomeflarebutton> {
  final FlareControls controls = FlareControls();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: FlareActor(
        "packages/flutterawesomerivebutton/flarefiles/CircularButton.flr",
        alignment: widget.alignment,
        fit: widget.fit,
        isPaused: widget.pause,
        callback: widget.callback,
        controller: controls,
        animation: "StaticCircularButton",
      ),
      onTap: (){
        setState(() {
          controls.play('CircularButton');
        });
        widget.onPress();
      },
    );
  }
}


class RectangularAwesomeflarebutton extends StatefulWidget {
  final Alignment alignment;
  final BoxFit fit;
  final bool pause;
  final FlareCompletedCallback callback;
  final GestureTapCallback onPress;

  const RectangularAwesomeflarebutton({
    this.alignment=Alignment.center,
    this.fit=BoxFit.contain,
    this.pause=false,
    this.callback,
    this.onPress,
    Key key

  }): super(key: key);
  @override
  _RectangularflarebuttonState createState() => _RectangularflarebuttonState();
}

class _RectangularflarebuttonState extends State<RectangularAwesomeflarebutton> {
  final FlareControls controls = FlareControls();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: FlareActor(
        "packages/flutterawesomerivebutton/flarefiles/RectangularButton.flr",
        alignment: widget.alignment,
        fit: widget.fit,
        isPaused: widget.pause,
        callback: widget.callback,
        controller: controls,
        animation: "StaticRectangularButton",
      ),
      onTap: (){
        setState(() {
          controls.play('RectangularButton');
        });
        widget.onPress();
      },
    );
  }
}
