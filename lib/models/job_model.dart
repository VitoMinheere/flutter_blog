class Job {
  String title;
  String summary;
  DateTime startDate;
  DateTime endDate;
  bool isCurrent;
  Company company;

  Job({
    this.title,
    this.summary,
    this.startDate,
    this.endDate,
    this.isCurrent,
    this.company,
  });
}

class Company {
  String name;
  String ticker;

  Company({this.name, this.ticker});
}
