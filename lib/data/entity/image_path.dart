enum ImagePaths {
  arda,
  gibi,
  ilgincbaziolaylar,
  katarsis,
  konusanlar,
  konusanlar3,
  konusanlar4,
  leylailemecnun,
  masterchef,
  oses,
  sihirli_annem,
  surprizimiz_var,
  tolgshow,
  vahsiseyler,
  serefbey,
  yazgi,
  istekadinlar,
  ogrencievi,
}

extension ImagePathsExtension on ImagePaths {
  String path() {
    return 'images/$name.png';
  }
}
