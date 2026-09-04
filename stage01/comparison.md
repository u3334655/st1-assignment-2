# Understand the problem: AI OFF
## What data must be stored?
* patient_name: str
* practitioner_name: str
* appointment_time: datetime
## What functions might be useful?
* datetime.now()
* str.strip()
* datetime.fromisoformat()
## What could go wrong?
We are handling both times AND names, so this system will be fraught with footguns. See:
* https://ctemm.me/falsehoods/names-with-examples/
* https://gist.github.com/timvisee/fcda9bbdff88d45cc9061606b4b923ca
Some homebrew examples may include:
- What happens when the patient and clinic are in a different time zone?
- What happens if the patient uses multiple names, or has no surname?
- What happens if one of the device's system clocks are wrong?
- What happens if the person booking the appointment is not the patient? (e.g. parent / legal guardian)
## What requirements are unclear?
* Do we care about how long the appointments are, or are they all the same length (so we don't need to record this)?
