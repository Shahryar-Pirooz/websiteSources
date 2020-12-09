import 'dart:html';

Element nav, mainCardLink;

void main() {
  nav = querySelector('#my-nav')
    ..hidden = true
    ..style.opacity = '0%';
  mainCardLink = querySelector('#main-card-link');
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
