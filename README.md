Week 4 Test: Ruby
=========
Test 1
======
###Reopen the Array class or subclass it.
- Rewrite the inject method. Write a test for it first. Don't worry about returning an enumerator, assume a block is always given

- Name your method differently (that is, not inject() or subclass Array) because rspec uses inject() internally, so the tests will fail with a weird message unless your implementation of inject is perfect.

Test 2 
=======
###Takeaway

Write a class Takeaway and implement the following functionality: 

- List of dishes with prices 

- An order can be placed by giving the list of dishes their quantities and a number that should be the exact total. 

- If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52". 

- The text sending functionality should be implemented using Twilio API. You'll need to register for it. It's free. (Use twilio-ruby gem to access the API and use a Gemfile to manage your gems).

- Make sure that your Takeaway class is thoroughly tested and that you use mocks and/or stubs, as necessary to not send texts when your tests are run. 

- However, if your Takeaway class is loaded into IRB and the order is placed, the text should actually be sent

*A free account on Twilio will only allow you to send texts to "verified" numbers. Use your mobile phone number, don't worry about the customer's mobile phone.*
