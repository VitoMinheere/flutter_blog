import 'package:blog/models/blog_model.dart';
import 'package:blog/models/job_model.dart';

class ApiProvider {
  // TODO Load the blogs from firebase
  Future<List<Blog>> getBlogs() async {
    var results = [
      Blog(
          id: "1",
          title: "Making this blog",
          subtitle: "How this blog was made using Flutter"),
      Blog(id: "2", title: "Test 2", subtitle: "Test subtitle"),
      Blog(id: "3", title: "Test 3", subtitle: "Test subtitle"),
      Blog(id: "4", title: "Test 4", subtitle: "Test subtitle"),
    ];
    return results;
  }

  Future<List<Job>> getJobs() async {
    var results = [
      Job(
        title: "Data engineer",
        summary:
            "Creating micro services in Docker to run on Google App Engine \n Creating a Data lake from multiple data sources such as Google Spreadsheets, ODBC, E-mail and SFTP file uploads \n Managing code base for a distributed data collection framework in Python",
        startDate: DateTime(4, 2019),
        endDate: DateTime(2020),
        isCurrent: false,
        company: Company(
          name: "CTS",
          ticker:
              'https://media-exp1.licdn.com/dms/image/C4D0BAQGt1CafpL1eyA/company-logo_200_200/0?e=2159024400&v=beta&t=7hXrPCxQBV52pdHVxvE1ixs3kVWx9wAukt-JnOQZ7gA',
        ),
      ),
      Job(
        title: "Python developer",
        summary:
            "Analyzing and transforming time series data from IoT smart meters using Pandas and Numpy \n Refactoring the monolith class for transforming data into smaller, easier testable components \n Supporting customers with updating and applying business rules to their data sources \n Managed the migration of the largest US customer to the new version of the data analysis framework",
        startDate: DateTime(5, 2018),
        endDate: DateTime(4, 2019),
        isCurrent: false,
        company: Company(
          name: "Energyworx",
          ticker:
              'https://henq.vc/wp-content/uploads/2019/06/Henq_portfolio_energyworx_logo.png',
        ),
      ),
      Job(
        title: "Graduation Internship Data Science",
        summary:
            "Research into container transportation price models \n Enriching API data from suppliers with extra data to be used in model \n Comparing the performance and accuracy of different models with Scikit-learn \n Building an API with Django to enable the product owner's website to query actual and predicted container transport prizes",
        startDate: DateTime(5, 2018),
        endDate: DateTime(4, 2019),
        isCurrent: false,
        company: Company(
          name: "Globalistics",
          ticker:
              'https://globalistics.nl/wp-content/uploads/2016/01/wegtransport-zeevracht-en-warehousing-200.png',
        ),
      ),
    ];
    return results;
  }
}
// Future<List<Blog>> getBlogs() async {
//   final response = await http.get(Constants.BLOG_API);
//   if (response.statusCode == 200) {
//     List blogs = json.decode(utf8.decode(response.bodyBytes))['response'];
//     var results = blogs.map((blog) => Blog.fromJson(blog)).toList();
//     return results;
//   } else {
//     return null;
//   }
// }
