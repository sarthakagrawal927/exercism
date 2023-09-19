class SecretHandshake {
  // Put your code here
  List<String> commands(int num) {
    String binaryString = num.toRadixString(2);
    List<String> actions = [
      "",
      "jump",
      "close your eyes",
      "double blink",
      "wink",
    ];
    List<String> setActions = [];

    binaryString = binaryString.padLeft(5, "0");

    for (int i = binaryString.length - 1; i >= 0; i--) {
      if (binaryString[i] == "1") {
        if (i == 0) {
          setActions = setActions.reversed.toList();
        } else {
          setActions.add(actions[i]);
        }
      }
    }
    return setActions;
  }
}
