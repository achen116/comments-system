# Comments System
This website comments system allows users to leave comments and reply to other users' comments.

## Wireframe
![wireframe](app/assets/images/comments-wireframe.png)

## Launch
- Clone this repository to your local machine
- Navigate to the project's directory
- In terminal, run `rails s` to spin up the rails server
- Navigate to http://localhost:3000

## Specs
- Only name and comment fields are required
- Page should not refresh when a comment is posted
- Users can write replies to other comments
- Maximum of 3 levels in nested comments
- Comments (within the same level) should be ordered by post date
- *Comments should not contain malicious text that could result in security vulnerability*

## TODO
- Implement final spec: *Filter comments for malicious text*
- Include more thorough Rails & JS tests
- Refactor comments view into a single reusable template
- Refactor `commentsNewDirective#saveComment` into more modular functions
- Refactor JSON comments templates into reusable partials

## Resources
- Ruby on Rails
- AngularJS
- Bootstrap