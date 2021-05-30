# Abstraction through Composition

## Instructions
Pick a language / framework that you are comfortable with and create a fully functioning project. Try to implement all the endpoints. It may seem daunting, but the redundancy will create opportunity for abstractions that will make it easier than it looks. If you are less comfortable with standing up a server, feel free to play around with the content in any environment of your choice. 

## Challenge
Create as many abstractions as possible to create the fewest number of functions
that would require unit testing.

### On Language Choice
If you want hard mode, try in C#. You will need C# 9 most likely and you will have to manually build some patterns to make C# behave more like F# -- be emotionally preparred if you go this route.  Yes, LINQ is functional, but good luck creating partial application with it.  All functional languages are fair game -- F#, Haskell, Scala, Clojure, etc. 

## Postman
Would recommend using postman to test E2E.
[Postman](https://www.postman.com/)

## DB ConnectionString
TBD

## Flask Practice Server

## Install
- `python3 -m venv venv`
- `source venv/bin/activate`
- `python3 -m pip install flask`
- `$ export FLASK_APP=run`
- `$ flask run`

[Flask Docs](https://flask.palletsprojects.com/en/2.0.x/quickstart/)

## Express Practice Server

## Install
- `$ yarn`
- `$ yarn start`
