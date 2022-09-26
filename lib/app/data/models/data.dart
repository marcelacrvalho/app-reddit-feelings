class Data {
  int? noOfComments;
  String? sentiment;
  double? sentimentScore;
  String? ticker;

  Data({this.noOfComments, this.sentiment, this.sentimentScore, this.ticker});

  Data.fromJson(Map<String, dynamic> json) {
    noOfComments = json['no_of_comments'];
    sentiment = json['sentiment'];
    sentimentScore = json['sentiment_score'];
    ticker = json['ticker'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['no_of_comments'] = noOfComments;
    data['sentiment'] = sentiment;
    data['sentiment_score'] = sentimentScore;
    data['ticker'] = ticker;
    return data;
  }
}
