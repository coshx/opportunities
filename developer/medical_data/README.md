# Setup
1. Install `rvm` (or `rbenv`) to get the right ruby version
1. `cd ehr-api`
1. `rvm install 2.3.1`
1. `gem install bundler`
1. `bundle install`
1. `rake db:create`
1. `rake db:migrate`
1. `rake db:seed`

# Usage
1. From this directory, run `rails server` to start the server.
1. Now you can get patient data at `localhost:3000/patients` and visits data at `localhost:3000/patients/[patient_id]/visits/[visit_id]`

# The Client
## Background
Greenpoint Physicians Group is requesting an Electronic Health Record (EHR) plugin. Samples of their data can be found at the [endpoints above](#examples). Hemoglobin A1c (ha1c in the sample API) is a particularly important indicator for diabetes that Greepoint physicians want to track.

## Task
Write browser-executed JavaScript that uses the API endpoints above to display each patient's average HbA1c. No styling or frontend framework should be used at this point. Just display the patient's name and his or her average HbA1c in the browser.

# Next Steps
Shoot us an email to schedule your pairing interview. We'll use this mock API and some further requirements from Greenpoint Physicians Group to develop a solution that meets their needs.
