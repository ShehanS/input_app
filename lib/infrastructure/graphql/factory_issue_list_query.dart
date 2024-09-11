const String getIssueList = """
  query GetIssueListByFactoryIdAndModule(\$factoryId: String!, \$module: String!) {
    getIssueListByFactoryIdAndModule(factoryId: \$factoryId, module: \$module) {
      id
      listType
      displayName
      factoryId
      module
      issueList {
        ...IssueFields
        issueList {
          ...IssueFields
          issueList {
            ...IssueFields
          }
        }
        issueList {
          ...IssueFields
        }
      }
    }
  }

  fragment IssueFields on Issue {
    categoryType
    name
    level
    displayName
    issueCode
    issueName
    description
  }
""";
