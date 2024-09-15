import 'package:flutter/material.dart';

class Slideshow extends StatefulWidget {
  const Slideshow({super.key});

  @override
  State<Slideshow> createState() => _SlideshowState();
}

class _SlideshowState extends State<Slideshow> {
  int _currentIndex = 0;

  final List<String> _images = [
    'https://via.placeholder.com/300/FF0000/FFFFFF?text=Slide+1',
    'https://via.placeholder.com/300/00FF00/FFFFFF?text=Slide+2',
    'https://via.placeholder.com/300/0000FF/FFFFFF?text=Slide+3',
  ];

  @override
  void initState() {
    super.initState();
    _startSlideshow();
  }

  void _startSlideshow() {
    Future.delayed(const Duration(seconds: 15), () {
      Future.delayed(const Duration(milliseconds: 500), () {
        setState(() {
          if(_currentIndex <= _images.length) {
            _currentIndex = (_currentIndex + 1) % _images.length;
          }
        });
        _startSlideshow();
      });
    });
  }

  void _nextSlide() {
    setState(() {
      if (_currentIndex < _images.length - 1) {
        _currentIndex = _currentIndex + 1;
      } else {
        _currentIndex = 0;
      }
    });
  }

  void _prevSlide() {
    setState(() {
      if (_currentIndex != 0) {
        _currentIndex = _currentIndex - 1;
      } else {
        _currentIndex = _images.length - 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onHorizontalDragEnd: (detail) {
          print(detail.localPosition.dx);
          if (detail.localPosition.dx > 0 && detail.localPosition.dx < MediaQuery.of(context).size.width / 2) {
            _nextSlide();
          } else {
            _prevSlide();
          }
          // if (details.delta.dx < 0) {
          //   _nextSlide();
          // }
        },
        child: Container(
          height: 300,
          color: Colors.grey,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            alignment: Alignment.center,
            children: _images.asMap().entries.map((entry){
              String item = entry.value;
              int index = entry.key;
        
              return AnimatedOpacity(
                opacity: index == _currentIndex ? 1 : 0,
                duration: const Duration(seconds: 1),
                child: SizedBox(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(item, fit: BoxFit.cover,)
                ),
              );
            }).toList(),
          )
        ),
      ),
    );
  }
}
