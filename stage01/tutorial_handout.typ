#set text(
  font: "New Computer Modern",
)
#set page(
  paper: "a4",
)
= If ChatGPT or Copilot can produce a 100-line Python application very quickly, what knowledge does a software engineer still need?
+ The architecture of the project: how to put the AI's pieces together to create a solution that meets the design requirements
+ How to read the AI's code: to integrate it with their own code, and to find when the AI is hallucinating
+ Assessing design requirements: does a solution actually solve the problem? What kind of software solution actually needs to be written?

= Is this software engineering?
== A student writes a 50-line Python calculator
Programming: yes, theyäre writing code \
Software engineering: yes and no, they're still designing a solution but the complexity is small enough that the solution is obvious
== A team develops a payroll system used by 5,000 employees
Programming: not enough information. the user count implies this is a large project with complicated moving parts, but we don't actually know whether they did anything themselves
== An AI assistant generates a simple appointment application from one prompt
Programming: no, the AI did all of it
Software engineering: not enough information. Is this a single-sentence prompt or a 5,000-word design document that actually analyses a problem to be solved?

= SmartCare Problem Analysis
== Identify stakeholders | What do they need?
+ Patients: they need timely service from doctors with accurate information
+ Doctors: Accurate information about their clients and schedule, to be able to meet their employment obligations
+ Clinic: an inflow of patients seeking treatment, and a supply of doctors to treat them, such that they can skim money off of both parties
+ Medicare: Reliable billing information about patients attending the clinic
== Identify current problems
+ Communication must be done manually: paper and spreadsheet files have to be deliberately sent around to other stakeholders, which invites errors such as sending incorrect files (major data security hazard) or missed deadlines (also sometimes has legal consequences)
+ Spreadsheet files and paper documents can be lost: this means records are effectively deleted randomly every now and again, and lost papers can even be recovered by malicious parties (violating stict medical data security requirements)
+ No built-in consistency: there is nothing to stop two front desk workers, perhaps working alternate shifts, from accidentally creating two separate calendars and overbooking the clinic. Paper and local files have no inherent coherency model.
+ Patients sometimes cannot access these: for patients accessing the clinic from home, papers must be mailed (slow) and files must be tested to make sure that both the patients and the clinic can open them (e.g. some programs cannot handle excel spreadsheets in their native XLSX format)
