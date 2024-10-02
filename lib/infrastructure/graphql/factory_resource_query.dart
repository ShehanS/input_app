const String getFactoryResources = """
  query FetchFactoryResources(\$orgKey: String!) {
    fetchFactoryResources(orgKey: \$orgKey) {
      id
      listType
      orgKey
      resources
    }
  }
""";
