# Setup
1. Install [`npm`](https://www.npmjs.com/get-npm)
1. From this directory, run `npm -g install`

# Usage
1. From this directory, run `node app.js` to start the server.
1. Now you can hit the two routes, `patients` and `visits`.

# Examples
* Get all patients: `curl localhost:3000/patients`
* Get all patient visits: `curl localhost:3000/visits`
* Get a single patient's visits: `curl localhost:3000/visits/[patient_id]`

# The Client
## Background
Greenpoint Physicians Group is requesting a design for an Electronic Health Record (EHR) plugin. Samples of their data can be found at the [endpoints above](#examples). Hemoglobin A1c (ha1c in the sample API) is a particularly important indicator for diabetes.

## Task
Write JavaScript that uses the API endpoints above to display each patient's average A1c.
