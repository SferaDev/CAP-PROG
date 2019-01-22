general
testCaseBinding2
    self should: [
        #binding changeBinding: 10.
    ] raise: Error. "No binding for binding"