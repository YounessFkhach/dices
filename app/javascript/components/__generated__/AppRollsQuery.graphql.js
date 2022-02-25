/**
 * @generated SignedSource<<b48465918c706f57f0cf38d7366e9197>>
 * @flow
 * @lightSyntaxTransform
 * @nogrep
 */

/* eslint-disable */

'use strict';

/*::
import type { ConcreteRequest, Query } from 'relay-runtime';
export type AppRollsQuery$variables = {||};
export type AppRollsQuery$data = {|
  +rolls: {|
    +nodes: ?$ReadOnlyArray<?{|
      +id: string,
      +total: number,
    |}>,
  |},
|};
export type AppRollsQuery = {|
  variables: AppRollsQuery$variables,
  response: AppRollsQuery$data,
|};
*/

var node/*: ConcreteRequest*/ = (function(){
var v0 = [
  {
    "alias": null,
    "args": [
      {
        "kind": "Literal",
        "name": "first",
        "value": 10
      }
    ],
    "concreteType": "RollConnection",
    "kind": "LinkedField",
    "name": "rolls",
    "plural": false,
    "selections": [
      {
        "alias": null,
        "args": null,
        "concreteType": "Roll",
        "kind": "LinkedField",
        "name": "nodes",
        "plural": true,
        "selections": [
          {
            "alias": null,
            "args": null,
            "kind": "ScalarField",
            "name": "id",
            "storageKey": null
          },
          {
            "alias": null,
            "args": null,
            "kind": "ScalarField",
            "name": "total",
            "storageKey": null
          }
        ],
        "storageKey": null
      }
    ],
    "storageKey": "rolls(first:10)"
  }
];
return {
  "fragment": {
    "argumentDefinitions": [],
    "kind": "Fragment",
    "metadata": null,
    "name": "AppRollsQuery",
    "selections": (v0/*: any*/),
    "type": "Query",
    "abstractKey": null
  },
  "kind": "Request",
  "operation": {
    "argumentDefinitions": [],
    "kind": "Operation",
    "name": "AppRollsQuery",
    "selections": (v0/*: any*/)
  },
  "params": {
    "cacheID": "a319bcb6e00db8c3e447b12fdacb626d",
    "id": null,
    "metadata": {},
    "name": "AppRollsQuery",
    "operationKind": "query",
    "text": "query AppRollsQuery {\n  rolls(first: 10) {\n    nodes {\n      id\n      total\n    }\n  }\n}\n"
  }
};
})();

(node/*: any*/).hash = "1427ce0c2ef78685f1b2c9d5347ec210";

module.exports = ((node/*: any*/)/*: Query<
  AppRollsQuery$variables,
  AppRollsQuery$data,
>*/);
