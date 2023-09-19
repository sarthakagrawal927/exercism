class WordCount {
  // Put your code here
  Map<String, int> countWords(String sentence) {
    Map<String, int> wordFreq = {};
    sentence = sentence.toLowerCase();
    // split the sentence by white spaces
    List<String> words = sentence.split(RegExp(r'\s+'));
    for (int i = 0; i < words.length; i++) {
      if (wordFreq[words[i]] == null) {
        wordFreq[words[i]] = 1;
      } else {
        wordFreq[words[i]] = wordFreq[words[i]]! + 1;
      }
    }
    return wordFreq;
  }
}
