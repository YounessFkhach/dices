async function fetchGraphQL(text, variables = null) {
  // Fetch data from GitHub's GraphQL API:
  const response = await fetch('/graphql', {
    method: 'POST',
    body: JSON.stringify({
      query: text,
      variables,
    }),
    headers: {
      Accept: 'application/json',
      'Content-type': 'application/json',
    }
  });

  // Get the response as JSON
  return await response.json();
}

export default fetchGraphQL;
