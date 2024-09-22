const String getIssueList = """
  query FetchIssueList(\$orgKey: String!) {
    fetchIssueList(orgKey: \$orgKey)
  }
""";
