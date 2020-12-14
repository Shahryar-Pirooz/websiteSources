import 'dart:html';

Element nav, mainCardLink, darkMode;
bool isDark = false;

void main() {
  //elements
  nav = querySelector('#my-nav')
    ..hidden = true
    ..style.opacity = '0%'; //nav cast

  mainCardLink = querySelector('#main-card-link'); //cast a link in main card

  darkMode = querySelector('#dark-mode');

  darkMode.onClick.listen((event) {
    isDark = isDark == false ? true : false;
    dark(isDark);
  });

  // change navbar's alpha
  hiddenNav();
}

void hiddenNav() {
  window.onScroll.listen((event) {
    if (window.scrollY > mainCardLink.offset.top) {
      nav.hidden = false;
      nav.style.opacity =
          (window.scrollY - mainCardLink.offset.top).toString() + '%';
    } else {
      nav.hidden = true;
    }
  });
}

void dark(isDark) {
  // var stile = document.head.querySelector('link[href="stile.css"]');
  var style = document.head.querySelector('#style');
  style.attributes['href'] =
      isDark ? 'css/style-dark-mode.css' : 'css/style.css';
  print(style.toString());
}
