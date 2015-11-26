#SMS Quiz

View the [Demo App](http://intense-bayou-5073.herokuapp.com/)

Conduct a group survey/quiz questions using Twilio SMS.  For example, test an audience during a training or send a group  feedback survey.

Quiz questions don’t need to be pre-seeded in the system, you can just assign numbers to your survey questions, then ask the audience to text replies in the format of:

question number, space, their response.  

For example, these are all valid replies:

* 1 A
* 2 c
* 3 blue
* 4 Any text here is ok

##Setup
* Provision a [Twilio Phone Number](https://www.twilio.com/user/account/voice/phone-numbers)
* Configure the Twilio number's Messaging URL as `POST` to `http://your-app.com/vote`
* Edit application.rb and set `config.twilio_number_label` to your Twilio number
* Run migrattions `rake db:migrate`
* Start server and begin texting in quiz answers

##License
MIT License