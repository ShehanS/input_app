const String appConfigQuery = """
query FetchConfig(\$token: String!) {
    fetchConfig(token: \$token)
}
""";
