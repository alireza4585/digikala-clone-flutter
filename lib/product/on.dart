List aa(size1, size2, size3, size4, size5) {
  List a = [];
  if (size1 != 0 && size2 != 0 && size3 != 0 && size4 != 0 && size5 != 0) {
    a.add(size1);
    a.add(size2);
    a.add(size3);
    a.add(size4);
    a.add(size5);
  } else if (size1 != 0 && size2 != 0 && size3 != 0 && size4 != 0) {
    a.add(size1);
    a.add(size2);
    a.add(size3);
    a.add(size4);
  } else if (size1 != 0 && size2 != 0 && size3 != 0) {
    a.add(size1);
    a.add(size2);
    a.add(size3);
  } else if (size1 != 0 && size2 != 0) {
    a.add(size1);
    a.add(size2);
  } else if (size1 != 0) {
    a.add(size1);
  }
  return a;
}

List cc(size1, size2, size3, size4, size5) {
  List a = [];
  if (size1 != '' && size2 != '' && size3 != '' && size4 != '' && size5 != '') {
    a.add(size1);
    a.add(size2);
    a.add(size3);
    a.add(size4);
    a.add(size5);
  } else if (size1 != '' && size2 != '' && size3 != '' && size4 != '') {
    a.add(size1);
    a.add(size2);
    a.add(size3);
    a.add(size4);
  } else if (size1 != '' && size2 != '' && size3 != '') {
    a.add(size1);
    a.add(size2);
    a.add(size3);
  } else if (size1 != '' && size2 != '') {
    a.add(size1);
    a.add(size2);
  } else if (size1 != '') {
    a.add(size1);
  }
  return a;
}
