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

## How to Install Weather-API



## API Contract

The weather API adheres to the standard JSON structure outlined on [jsonapi](#jsonapi.org).

- An example of a successful response is as follows:
```
{:data=>
  [
    {
      :type=>"weather",
      :id=>nil,Â
      :attributes=>
      {
       :min_f=>30.400000000000034, 
       :max_f=>34.99000000000001, 
       :min_c=>-1.599999999999966, 
       :max_c=>2.990000000000009, 
       :day_feels_like_c=>-7.0499999999999545, 
       :day_feels_like_f=>24.950000000000045, 
       :description=>"clear sky", 
       :date=>"2021-01-09T02:00:00+00:00"
      }
    },
    {
      :type=>"weather",
      :id=>nil,Â
      :attributes=>
      {
       :min_f=>30.400000000000034, 
       :max_f=>34.99000000000001, 
       :min_c=>-1.599999999999966, 
       :max_c=>2.990000000000009, 
       :day_feels_like_c=>-7.0499999999999545, 
       :day_feels_like_f=>24.950000000000045, 
       :description=>"clear sky", 
       :date=>"2021-01-10T02:00:00+00:00"
      }
    },
    ...(there will be 8 days worth of weather forecast)
  ]
}
```
- An example of an unsuccessful response is:
```
{:cod=>"400", :message=>"wrong longitude"}
```


## Dependencies
## Testing

* For testing our team implemented Travis CI with RSpec

> Travis CI is cloud based and when we submit a pull request, Travis will attempt to build our project and run the tests to ensure everything is working as expected. 

> RSpec is a tool for unit testing that will ensure we have the intended functionality at each level of our code. 

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

#### Todd Estes: [LinkedIn](https://www.linkedin.com/in/toddwestes/), [Email](mailto:elestes@gmail.com), [GitHub](https://github.com/Todd-Estes)
 
#### Connor Ferguson: [LinkedIn](https://www.linkedin.com/in/connor-p-ferguson/), [Email](mailto:cpfergus1@gmail.com), [GitHub](https://github.com/cpfergus1)
 
#### George Soderholm: [LinkedIn](https://www.linkedin.com/in/george-soderholm-05776947/), [Email](mailto:georgesoderholm@gmail.com), [GitHub](https://github.com/GeorgieGirl24)
    
#### Sage Freeman-Gonzales: [LinkedIn](https://www.linkedin.com/in/sagefreemangonzales/), [Email](mailto:sagegonzales15@gmail.com), [GitHub](https://github.com/SageOfCode)
 
#### Sheryl Stillman: [LinkedIn](https://www.linkedin.com/in/sherylstillman1/), [Email](mailto:sheryl.stillman@gmail.com), [GitHub](https://github.com/stillsheryl)
    
#### Aidan Murray:  [LinkedIn](http://www.linkedin.com/in/aidan-murray-teknoserval), [Email](mailto:aidanhansm@gmail.com), [GitHub](https://github.com/TeknoServal)
      
#### Jesse Mellinger: [LinkedIn](https://www.linkedin.com/in/jesse-mellinger/), [Email](mailto:jesse.m.mellinger@gmail.com), [GitHub](https://github.com/JesseMellinger)
        
#### Nick King: [LinkedIn](https://www.linkedin.com/in/nick-king-3128501ba/), [Email](mailto:nickmaxking@gmail.com), [GitHub](https://github.com/nmking22)
 
#### Brian Liu: [LinkedIn](https://www.linkedin.com/in/brian-liu-8356287b/), [Email](mailto:brian.b.liu@gmail.com), [GitHub](https://github.com/badgerbreezy)
    
#### Will Dunlap: [LinkedIn](https://www.linkedin.com/in/willwdunlap/), [Email](mailto:dunlapww@gmail.com), [GitHub](https://github.com/dunlapww)
   
## Acknowledgments
