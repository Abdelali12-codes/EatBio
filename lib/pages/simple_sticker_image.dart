import 'dart:math';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';

typedef StickImageRemoveCallback = void Function(
    FlutterSimpleStickerImage stciker);

class FlutterSimpleStickerImage extends StatefulWidget {
  FlutterSimpleStickerImage(
    this.image, {
    Key key,
    this.width,
    this.height,
    this.viewport,
    this.minScale = 1.0,
    this.maxScale = 6.0,
    this.onTapRemove,
  }) : super(key: key);
  final Image image;
  final double width;
  final double height;
  final Size viewport;
  final double minScale;
  final double maxScale;
  final StickImageRemoveCallback onTapRemove;

  final _FlutterSimpleStickerImageState _flutterSimpleStickerImageState =
      _FlutterSimpleStickerImageState();

  void prepareExport() {
    _flutterSimpleStickerImageState.hideRemoveButton();
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return "FlutterSimpleStickerImage-$key-${_flutterSimpleStickerImageState._offset}";
  }

  @override
  _FlutterSimpleStickerImageState createState() =>
      _flutterSimpleStickerImageState;
}

class _FlutterSimpleStickerImageState extends State<FlutterSimpleStickerImage> {
  _FlutterSimpleStickerImageState();
  double _scale = 1.0;
  double _previousScale = 1.0;
  Offset _previousOffset = Offset(0, 0);
  Offset _startingFocalPoint = Offset(0, 0);
  Offset _offset = Offset(0, 0);
  double _rotation = 0.0;
  double _previousRotation = 0.0;
  bool _isSelected = false;

  @override
  void dispose() {
    super.dispose();
    _offset = Offset(0, 0);
    _scale = 1.0;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned.fromRect(
      rect: Rect.fromPoints(Offset(_offset.dx, _offset.dy),
          Offset(_offset.dx + widget.width, _offset.dy + widget.height)),
      child: Container(
        child: Stack(
          children: [
            Center(
              child: Transform(
                transform: Matrix4.diagonal3(Vector3(_scale, _scale, _scale)),
                alignment: FractionalOffset.center,
                child: GestureDetector(
                  onScaleStart: (details) {
                    _startingFocalPoint = details.focalPoint;
                    _previousOffset = _offset;
                    _previousRotation = _rotation;
                    _previousScale = _scale;
                  },
                  onScaleUpdate: (details) {
                    _scale = min(
                        max(_previousScale * details.scale, widget.minScale),
                        widget.maxScale);

                    _rotation = details.rotation;
                    final Offset normalizedOffset =
                        (_startingFocalPoint - _previousOffset) /
                            _previousScale;

                    Offset __offset =
                        details.focalPoint - (normalizedOffset * _scale);

                    __offset = Offset(max(__offset.dx, -widget.width),
                        max(__offset.dy, -widget.height));

                    __offset = Offset(min(__offset.dx, widget.viewport.width),
                        min(__offset.dy, widget.viewport.height));

                    setState(() {
                      _offset = __offset;
                      // print("move - $_offset, scale : $_scale");
                    });
                  },
                  onTap: () {
                    setState(() {
                      _isSelected = !_isSelected;
                    });
                  },
                  onTapCancel: () {
                    setState(() {
                      _isSelected = false;
                    });
                  },
                  onDoubleTap: () {
                    setState(() {
                      _scale = 1.0;
                    });
                  },
                  child: Container(child: widget.image),
                ),
              ),
            ),
            _isSelected
                ? Positioned(
                    top: 12,
                    right: 12,
                    width: 24,
                    height: 24,
                    child: Container(
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        icon: Icon(Icons.remove_circle),
                        color: Color.fromRGBO(255, 0, 0, 1.0),
                        onPressed: () {
                          print('tapped remove sticker');
                          if (this.widget.onTapRemove != null) {
                            this.widget.onTapRemove(this.widget);
                          }
                        },
                      ),
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }

  void hideRemoveButton() {
    setState(() {
      _isSelected = false;
    });
  }
}
