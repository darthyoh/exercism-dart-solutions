class WordCount {
  Map<String,int> countWords(String sentence) => sentence
    .toLowerCase()
    .replaceAll(RegExp(r"[^a-z0-9']")," ")
    .split(" ")
    .where((w) => w!="")
    .fold(<String,int>{}, (a,c) {
      if(a[c]==null) a[c]=0;
      a[c]=a[c]!+1;
      return a;
    });
}
