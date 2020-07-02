# Refactoring
I followed the lesson plan so the code is almost identical. I wandered in two areas: `ENV['propublica_key']` because I hate caps if I don't need them (and `ENV` already feels like a giveaway), and method `members` instead of `members_by_house` because 'house_salad' already deals with house members only.

I will add that this entire exercise is basically the reason I'm in mod 3 again. I haven't fully wrapped my head around running the api call through services, factories, etc... and am not able to create those files with my brain on autopilot. I can create a model or class very quickly without thinking too much about it. This stuff I still have to think about. A lot.

# House Salad Base

This repo is used as a base for the Consuming API lesson taught in Backend Module 3. To complete the lesson you will need to sign-up for an API key from the [ProPublica Congress API](https://projects.propublica.org/api-docs/congress-api/).

### Versions

Rails 5.1.7
Ruby 2.5.3

### Setup

```bash
git clone https://github.com/turingschool-examples/house-salad-base house-salad

cd house-salad

rails db:{create,migrate}
```

### Exercise

Write a test and complete this user story

*NOTE: Please use the existing form in the application.*

```
As a user
When I visit "/"
And I select "Colorado" from the dropdown
And I click on "Locate Members of the House"
Then my path should be "/search" with "state=CO" in the parameters
And I should see a message "7 Results"
And I should see a list of the 7 members of the house for Colorado
And I should see a name, role, party, and district for each member
```
