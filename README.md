#  Luxoft Technical Interview

## Instructions

This is Luxoft practical interview project for iOS positions. You can download or clone the repo to start making the test. The test should have a duration of 45 minutes to be completed and you should focus on completing the requirements of the test first, the main focus is to check code quality so there is no issue if you dont complete the test.

### Description

We expect you to fetch a list of repos from Github API; basic API call is already implemented in GithubAPI.swift file and display the results on a table view on the main view controller. Also you have to implement a text field that helps to filter the repos (from the API call).


### Requirements of the test: 

- Parse the response from the API and display it on a table view
    - You can use Codable or JSONSerialization to parse the response
- When the user taps on a cell, the user should be redirected to another screen (RepoDetailsViewController and should be able to see aditional info)
    - You can can add extra values to the models or use another api endpoint for this.
- Implement a search text field to look for specific repos.

### Extra points:

- Paginate the results.
- Depending on the design you choose, make the height of the cells dinamic to fit its content.
- Integrate unit tests.
- Use architechtural pattern (MVC, MVP, MVVM, Viper, etc).
- Use of design patterns.
- Improve the base project (order the files on folders, refactor code, document classes and functions, error handling, etc).
- Documentation of your code.

### Notes:

- The design is up to you. Make it as beatiful as you can :)
- You can use storyboards, code generated viewcontrollers/interface or xibs to create the controllers.
- You can google and check the documentation if you need. (We don't expect you to know everything by memory) 
- You can ask the interviewer any doubt you have about the test.
- Sometimes the interviewer may suggest you something during the test, this is mainly to help you complete the test if we see you stuck on something.
- Using SwiftUI is not recommended to be used (Yet).
- There are no external libraries, frameworks or pods. You can use them freely but keep in mind that you will have to explain why you use them.

