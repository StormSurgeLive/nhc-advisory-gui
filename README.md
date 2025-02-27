# Introduction

A project for exploring NHC's storm JSON archives and current storm.

This is a work in progress.

# Example (PROTOTYPE)

![image](https://github.com/user-attachments/assets/2efa345e-ad73-4e98-b9b9-54d8478d68a4)
_(`Test JSON` fetches and creates a Wx::TreeCtrl from the NHC "[sample](https://www.nhc.noaa.gov/productexamples/NHC_JSON_Sample.json)" JSON returned)_

![image](https://github.com/user-attachments/assets/a2f159d5-ebd8-4888-8d59-1ad2008b70fd)
_(exanding tree for an "active" storm reveals he hierarchy of [information available](https://www.nhc.noaa.gov/productexamples/?text))_

![image](https://github.com/user-attachments/assets/0597fd67-04e0-4c1a-8460-24abc475adec)
_(double click a tree item with a URL will copy the URL to the clipboard for easy pasting, e.g., in a browser window)_

# Windows WARNING Expected

Click through this to test,

![image](https://github.com/user-attachments/assets/d5f6e0e8-d81d-49c0-aa69-361e41fe109e)

# Contributions

This project is not yet open for code contributors, the GUI layout and
workflow is still being established. It is currently using wxGlade to
generate the GUI; and wxPerl to render the GUI and handle the events and
user interactions.

# Plans

I usually do not outline plans for things, but since this is a relatively
well scoped project, the goals here are to:

- monitor and alert users to a storm that is updated in the CurrentStorms.json (during the regular hurricane season
- present a clickable tree view of all the information present in the NHC JSON
- allow for the browsing and exploration of some of the JSON files archived in the ASGS "storm-archive" repo
- OS environment target is primarily Windows
