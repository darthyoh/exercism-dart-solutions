class BeerSong {
  List<String> recite(int verse, int n) {
    var actualVerse = [
      'No more bottles of beer on the wall, no more bottles of beer.',
      'Go to the store and buy some more, 99 bottles of beer on the wall.'
    ];
    if (verse > 1)
      actualVerse = [
        '$verse bottles of beer on the wall, $verse bottles of beer.',
        'Take one down and pass it around, ${verse - 1} bottle${verse - 1 == 1 ? '' : 's'} of beer on the wall.'
      ];
    else if (verse == 1)
      actualVerse = [
        "1 bottle of beer on the wall, 1 bottle of beer.",
        "Take it down and pass it around, no more bottles of beer on the wall."
      ];
    return [
      ...actualVerse,
      if (n > 1) ...["", ...recite(verse - 1, n - 1)]
    ];
  }
}
