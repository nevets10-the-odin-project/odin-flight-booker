# Project: Flight Booker

https://www.theodinproject.com/lessons/ruby-on-rails-flight-booker

---

We’ll be creating a one-way flight booker. You’ll get lots of practice populating and building dropdown menus, radio buttons, and nested submissions. Let the fun begin!

---

## DB Brainstorming

Brainstorming is done prior to going through the project instructions beyond the first step.

Tables
- Passengers
    1. Name
    1. Age

- Flights
    1. Origin
    1. Destination
    1. Take-off Date/Time
    1. Arrival Date/Time

- Airports
    1. Airport Code
    1. Airport Name
    1. Airport City (or FK from a locations table)# odin-flight-booker

---

## Post-project Review

This project was pretty straight forward except for a small syntax error with the nested params which costed me several days of time to finally figure out.

The params.expect method has a different structure than chaining require and permit, so older examples I looked at weren't exactly comparable. On top of that, there was no error message, even with using some validations and bang methods. And even on top of that, Rubocop's aggressive autoformatting made the issue harder to track as it forces arrays of symbols use %i[] which is also makes the syntax different from the examples of hash arrays with the double square brackets.