class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswer() {
    // List.of(answers) 복사본 만들기
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
