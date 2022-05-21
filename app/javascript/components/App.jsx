import React, { Suspense } from 'react';
import graphql from 'babel-plugin-relay/macro';
import {
  RelayEnvironmentProvider,
  loadQuery,
  usePreloadedQuery,
} from 'react-relay/hooks';
import RelayEnvironment from '../Utils/RelayEnvironment';


// Define a query
const RollsQuery = graphql`
  query AppRollsQuery {
    rolls(first: 10) {
      nodes {
        id
        total
      }
    }
  }
`;


const preloadedQuery = loadQuery(RelayEnvironment, RollsQuery);

const App = ({ preloadedQuery }) => {
  const data = usePreloadedQuery(RollsQuery, preloadedQuery);

  return (
    <div>
      <header>
        {data && data.rolls.nodes.map((roll) => (
          <p key={roll.id}>{roll.total}</p>
        ))}
      </header>
    </div>
  );
}

const Root = () => {
  return (
    <RelayEnvironmentProvider environment={RelayEnvironment}>
      <Suspense fallback={'Loading...'}>
        <App preloadedQuery={preloadedQuery}/>
      </Suspense>
    </RelayEnvironmentProvider>
  )
}

export default Root;
