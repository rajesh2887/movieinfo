# movieinfo Get movie information from OMDB
Follow below steps to get movie info and rating from http://www.omdbapi.com/ OMDB API

pull the Docker image using below command:
docker pull rajesh2887/movieinfo:version1

Run a container using pulled image from above:
docker run -it rajesh2887/movieinfo:version1 bash

It will prompt to enter movie name : 

Ex : Titanic

Output :

Enter movie name: titanic
Movie Name: Titanic
Year : 1997
Rated : PG-13
Released on : 19 Dec 1997
Director Name : James Cameron
Rating : { Source : Rotten Tomatoes Value : 89% }

