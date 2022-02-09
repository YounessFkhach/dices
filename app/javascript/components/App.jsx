import React, { useState } from 'react';

const App = () => {
  const [count, setCount] = useState(0);

  return (
    <div>
      <h3>this is my react app</h3>

      count is {count}

      <button onClick={() => setCount(count+1)}>Increment</button>
    </div>
  )
}

export default App;
