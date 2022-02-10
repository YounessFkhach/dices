import React, { Suspense } from 'react';
import graphql from 'react-relay';
import {
  RelayEnvironmentProvider,
  loadQuery,
  usePreloadedQuery,
} from 'react-relay/hooks';
import RelayEnvironment from '../Utils/RelayEnvironment';


// Define a query
const RollsQuery = graphql`
  query RollsQueryIds {
    rolls {
      id
    }
  }
`;

const preloadedQuery = loadQuery(RelayEnvironment, RollsQuery);

const App = ({ preloadedQuery }) => {
  const data = usePreloadedQuery(RollsQuery, preloadedQuery);

  console.log(data);

  return (
    <div>
      <header>
        <p>{data.name}</p>
      </header>
    </div>
  );
}

const Root = () => {
  return (
    <RelayEnvironmentProvider environment={RelayEnvironment}>
      <Suspense fallback={'Loading...'}>
        <App preloadedQuery={preloadedQuery} />
      </Suspense>
    </RelayEnvironmentProvider>
  )
}

export default Root;
