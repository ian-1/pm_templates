# Property Management Templates Manager

A short program to provide quick tempates to help residential property managers respond to queries

## To Use Program

in irb:

```
irb(main):001:0> require '.\lib\template.rb'
=> true
irb(main):002:0> t = Template.new
=> #<Template:0x2d473a0>
irb(main):003:0> t.see_templates
=> "1) Return holding deposit - offer not formally accepted"
irb(main):004:0> content = t.select
=> "The landlord has not formally accepted your offer. As such we will return your holding deposit to you.\n\nIt is very frustrating as the landlord did previously state that they would go with your offer.\n\nI am very sorry about this. It is very frustrating as you have paid your deposit ready for the landlord to formally accept. Unfortunately without formal acceptance there is little we can do but return your money.\n\nPlease can you pass me your bank details (name of account holder, account number and sort code) and I will ensure that your holding deposit is transferred back to you.\n\nI wish you every luck in your property search and will certainly let you know if any other similar properties become available so that you can be the first to view."
irb(main):005:0> print(content)
The landlord has not formally accepted your offer. As such we will return your holding deposit to you.

It is very frustrating as the landlord did previously state that they would go with your offer.

I am very sorry about this. It is very frustrating as you have paid your deposit ready for the landlord to formally accept. Unfortunately without formal acceptance there is little we can do but return your money.

Please can you pass me your bank details (name of account holder, account number and sort code) and I will ensure that your holding deposit is transferred back to you.

I wish you every luck in your property search and will certainly let you know if any other similar properties become available so that you can be the first to view.=> nil
irb(main):006:0>
```

## User Stories

As a Property Manager  
So I can repond to an Applicant  
I want to be able to see templates to send to Applicants

As a Property Manager  
So I can repond to an Applicant  
I want to select a template to send to an Applicant

As a Property Manager  
So I can respond to an Applicant on {X} issue  
I want to be able to access a specific template on {X} issue

{X}:

- Return holding deposit - offer not formally accepted

As a Property Manager  
So I can keep a record of Actions carried out  
I want to be able to record an action

As a Property Manager  
So I can see what Action I have added  
I want to be able to read last action

As a Property Manager  
So I can see past Actions  
I want to be able to show list of actions

## Domain Model

Objects | Messages
---|---
Property Manager |  
Applicant |  
Template | see_templates <br> select  
Action | record(user, message) <br> read_last(user) <br> show_list(user) 
