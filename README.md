<!-- Shields -->
![](https://img.shields.io/badge/Rails-5.2.4-informational?style=flat&logo=<LOGO_NAME>&logoColor=white&color=2bbc8a)
![](https://img.shields.io/badge/Ruby-2.5.3-orange)
![](https://img.shields.io/gem/v/sinatra)
![](https://img.shields.io/gem/v/fast_jsonapi)
![](https://img.shields.io/travis/com/GetThatFlightOut/Weather-API)
![](https://img.shields.io/github/contributors/GetThatFlightOut/GTFO-FE)
![](https://img.shields.io/badge/GetThatFlightOut-Weather--API-blue)
![](https://github.com/GetThatFlightOut/Weather-API/stargazers)
![](https://img.shields.io/github/issues/GetThatFlightOut/Weather-API)

# Weather-API
![image](https://user-images.githubusercontent.com/68172332/104384272-6d70f100-54ee-11eb-94ba-287258e83de7.png)

## Table of Contents
  - [What it does](#what-it-does)
  - [How to Install Weather-API](#how-to-install-weather-api)
  - [API Contract](#api-contract)
  - [Dependencies](#dependencies)
  - [Testing](#testing)
  - [Learning Goals](#learning-goals)
  - [Licenses](#licenses)
  - [Contact](#contact)
  - [Acknowledgments](#acknowledgments)

## What it does

This project is part of a Service-Oriented Architecture (SOA) application that provides users with flight and weather information based on search parameters that the user provides. The Weather-API serves as an intermediary, or microservice, from the OpenWeather API and the GTFO-BE repo. It retrieves data from the OpenWeather API and packages it with only the information needed for the BE application, which in turn combines the data from both the Weather and Flight APIs to send a combination of data from the two in one package for the front end.

To view the production site, please visit the [GTFO link](https://gtfo-fe.herokuapp.com/).

To view the other components of the application please visit the [Github Project Organization](https://github.com/GetThatFlightOut).

## System Design

> We planned out our project on this [Miro Board.](https://miro.com/app/board/o9J_lZk4cS8=/)

<a href="https://ibb.co/tp5msx8"><img src="https://i.ibb.co/r2J76c4/Screen-Shot-2021-01-14-at-4-23-46-PM.png" alt="Screen-Shot-2021-01-14-at-4-23-46-PM" border="0"></a>

## How to Install Weather-API

```
git clone git@github.com:GetThatFlightOut/Weather-API.git
cd Weather-API
bundle install
figaro install
```

* Visit the [OpenWeather API documentation](https://openweathermap.org/api) and follow the link to sign up for an API key.

The `figaro install` command will create an `application.yml` file in your config folder. In that folder, at the bottom of the file add your API as below:
```
WEATHER_API_KEY: "<<Your API key here>>"
```

To get the server running, type `shotgun` in your terminal.

## API Contract

The weather API adheres to the standard JSON structure outlined on [jsonapi](#jsonapi.org).

- `GET /api/v1/weather`: An example of a successful response is as follows:
```
{"data":
  [
    {
      "type": "weather",
      "id": nil,
      "attributes": 
      {
       "min_f": 30.400000000000034, 
       "max_f": 34.99000000000001, 
       "min_c": -1.599999999999966, 
       "max_c": 2.990000000000009, 
       "day_feels_like_c": -7.0499999999999545, 
       "day_feels_like_f": 24.950000000000045, 
       "description": "clear sky", 
       "date": "2021-01-09T02:00:00+00:00"
      }
    },
    {
      "type": "weather",
      "id": nil,
      "attributes": 
      {
       "min_f": 30.400000000000034, 
       "max_f": 34.99000000000001, 
       "min_c": -1.599999999999966, 
       "max_c": 2.990000000000009, 
       "day_feels_like_c": -7.0499999999999545, 
       "day_feels_like_f": 24.950000000000045, 
       "description": "clear sky", 
       "date": "2021-01-10T02:00:00+00:00"
      }
    },
    ...(there will be 8 days worth of weather forecast)
  ]
}
```
- `GET /api/v1/flights`: An example of an unsuccessful response is:
```
{"cod": "400", "message": "wrong longitude"}
```

The `GET /api/v1/weather` endpoint requires three parameters for a successful response. The required parameters are:

  `:lat` - (string) - the latitude of the destination city

  `:lon` - (string) - the longitude of the desitnation city

  `:apikey` - (string) - your API key obtained from OpenWeather


- An example of valid required parameters is:
```
{
  lat: "35",
  lon: "139",
  apikey: "<<Your API key>>"
}
```

  * The parameters above would create the following url if you're using the 9393 port: [http://localhost:9393/api/v1/weather?lat=35&lon=139&appid=](http://localhost:9393/api/v1/weather?lat=35&lon=139&appid=)`<<Your API key here>>`
  
  * View of an API call in [Postman](https://www.postman.com/):
  
![weather_call](https://user-images.githubusercontent.com/7945439/104744884-a71e4380-570a-11eb-897d-5d781cb057cf.png)

## Dependencies

* For this microservice we used the [Sinatra](https://github.com/sinatra/sinatra) with the [Shotgun Gem](https://github.com/rtomayko/shotgun) to build a condensed ruby framework and run it on a local server.

* We used the [Faraday Gem](https://github.com/lostisland/faraday) to make calls to our API service.

* We used the [Figaro Gem](https://github.com/laserlemon/figaro) to keep confidential information like API keys secure.

* The [SimpleCov](https://github.com/simplecov-ruby/simplecov) gem was used to ensure that we covered 100% of our code with unit testing. 

## Testing

* For testing our team implemented [Travis CI](https://travis-ci.com/) with [RSpec](https://rspec.info/)

> Travis CI is cloud based and when we submit a pull request, Travis will attempt to build our project and run the tests to ensure everything is working as expected. 

> RSpec is a tool for unit testing that will ensure we have the intended functionality at each level of our code. 

* In order to run the tests, run `bundle exec rspec` in the command line and you should have all passing tests.

## Learning Goals

  * Consume external APIs
  
  * Build API's that return JSON responses
  
  * Refactor code for better code for improved organization/readability
  
  * Practice project management with project boards/daily standups/group retros
  
  * Utilize workflow: small commits, descriptive pull requests and code review
  
  * Write thorough and understandable documentation 
  
## Licenses

  * Ruby 2.5.3
  * Sinatra
  * Travis CI Enterprise
  
## Contact

#### Todd Estes: [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/toddwestes/), [Email](mailto:elestes@gmail.com), [GitHub](https://github.com/Todd-Estes)
 
#### Connor Ferguson: [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/connor-p-ferguson/), [Email](mailto:cpfergus1@gmail.com), [GitHub](https://github.com/cpfergus1)
 
#### George Soderholm: [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/george-soderholm-05776947/), [Email](mailto:georgesoderholm@gmail.com), [GitHub](https://github.com/GeorgieGirl24)
    
#### Sage Freeman-Gonzales: [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/sagefreemangonzales/), [Email](mailto:sagegonzales15@gmail.com), [GitHub](https://github.com/SageOfCode)
 
#### Sheryl Stillman: [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/sherylstillman1/), [Email](mailto:sheryl.stillman@gmail.com), [GitHub](https://github.com/stillsheryl)
    
#### Aidan Murray:  [![LinkedIn][linkedin-shield]](http://www.linkedin.com/in/aidan-murray-teknoserval), [Email](mailto:aidanhansm@gmail.com), [GitHub](https://github.com/TeknoServal)
      
#### Jesse Mellinger: [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/jesse-mellinger/), [Email](mailto:jesse.m.mellinger@gmail.com), [GitHub](https://github.com/JesseMellinger)
        
#### Nick King: [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/nick-king-3128501ba/), [Email](mailto:nickmaxking@gmail.com), [GitHub](https://github.com/nmking22)
 
#### Brian Liu: [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/brian-liu-8356287b/), [Email](mailto:brian.b.liu@gmail.com), [GitHub](https://github.com/badgerbreezy)
    
#### Will Dunlap: [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/willwdunlap/), [Email](mailto:dunlapww@gmail.com), [GitHub](https://github.com/dunlapww)
   
## Acknowledgments

Thank you to Ian Douglas and Dione Wilson for being such amazing instructors and guiding us through this project! 

<!-- MARKDOWN LINKS -->
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
