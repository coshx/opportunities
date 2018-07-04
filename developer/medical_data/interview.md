# Ground Rules

* 1.5-2 hours
* Open resources
* Interviewer will alternate between being product owner and interviewer
* Not meant to be stressful

# Code Tour

* Show how you solved the problem
* Question:
  * How did you handle Noreen's null value? Why?

# Overall Goal

* Build an application where patients and providers can view key data about their health.

## Groud Rules

* Can use any framework or library that seems appropriate.
* Can use external resources (google, etc.) as needed.
* Can ask questions about code and requirements to interviewer.

# Requirement 1
Providers need to be able to see a dashboard of all patients that quickly shows whether the patient fits into one of the following three categories:

* Healthy: ha1c below 5.7%
* Prediabetic: ha1c 5.7 to 6.4%
* Diabetic: ha1c 6.5% and up

## Suggestions:

* Style your data so that you have 1 card per patient.
* Provide a visual indicator on each card that corresponds to the patient's ha1c.

# Requirement 2
When a provider clicks a patient card, they should be able to:

* Page through each of the patient's visits. By default, the patient's most recent visit should show first.

# Requirement 3
When a provider clicks a patient card, they should be able to:

* View a graph of each statistic across all patient visits.
