---
layout: default
title: About Galah
---

## What is Galah?

Galah is an automated grading system geared towards processing computer
programming assignments.

Professors are responsible for creating test harnesses for their assignments.
Aside from that Galah does the rest of the work: running those tests inside of
secure Virtual Machines, consolodating results into a database, and providing an
interface for students and teachers to see the results of the testing.

## Can I see it?

We don't have a demo server set up right now, not because Galah isn't ready to be deployed (in fact it is being used in production as you're reading this), rather we don't have one because we haven't gotten to bringing one up. Some screenshots will be put up one of these days.

## What makes it special?

Galah aims to set itself apart from similar software suites by being
language agnostic, scalable, secure, and easy to use.

###  Language Agnostic

Galah does not care what a student's submission is. It could be in Java, C++, Python, Lisp, or it could even be an English essay or a piece of artwork and Galah will diligently test it with the instructor's test harnesses. This behavior allows any school to take advantage of what Galah has to offer no matter what technologies they teach to their students.

### Scalable

Galah is a distributed system, and though it is very fast while running on one machine, if a time comes when you want to add more hardware to improve performance, you won't have any problems.

### Secure

Student's code cannot bring down Galah under anything except the most extreme circumstances (and we are not actually aware of any such circumstances). Furthermore, student's grades, submissions, and all other data are secured away from prying eyes.

### Easy to Use

Students' have no problem using Galah because its interface is simple and straightforward. Teachers' use Galah through a program called the API Client which gives anyone who is comfortable on the command line a very friendly, scriptable interface.
