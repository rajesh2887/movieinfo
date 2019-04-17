#!/usr/bin/env bash
read -p "Enter movie name: " name
details=$(curl -Gs "http://www.omdbapi.com/?t=$name&apikey=13f411c2") 
#echo $details

 # to check given movie name is available or not
if [[ $details == *"Movie not found!"* ]]; then
  echo "Movie does not exists! Please check movie name.. "
  else
	  #to get all details about movie
	  title=$(curl -Gs "http://www.omdbapi.com/?t=$name&apikey=13f411c2" | cut -d "," -f 1- --output-delimiter=$'\n' | grep "Title" |awk -F ":" '{print $2}'|sed 's/"/ /g')
	  year=$(curl -Gs "http://www.omdbapi.com/?t=$name&apikey=13f411c2" | cut -d "," -f 1- --output-delimiter=$'\n' | grep "Year" |awk -F ":" '{print $2}'|sed 's/"/ /g')
	  rated=$(curl -Gs "http://www.omdbapi.com/?t=$name&apikey=13f411c2" | cut -d "," -f 1- --output-delimiter=$'\n' | grep "Rated" |awk -F ":" '{print $2}'|sed 's/"/ /g')
          released=$(curl -Gs "http://www.omdbapi.com/?t=$name&apikey=13f411c2" | cut -d "," -f 1- --output-delimiter=$'\n' | grep "Released" |awk -F ":" '{print $2}'|sed 's/"/ /g')
	  director=$(curl -Gs "http://www.omdbapi.com/?t=$name&apikey=13f411c2" | cut -d "," -f 1- --output-delimiter=$'\n' | grep "Director" |awk -F ":" '{print $2}'|sed 's/"/ /g')
	  value=$( curl -Gs "http://www.omdbapi.com/?t=$name&apikey=13f411c2" | cut -d "," -f 1- --output-delimiter=$'\n' | sed -n '/Value/{n;p;n;p}' | grep -v Metascore | grep -v imdbRating |sed 's/"/ /g')


      #to display all details of movie
	  echo Movie Name: $title
	  echo Year : $year
	  echo Rated : $rated
	  echo Released on : $released
	  echo Director Name : $director
#	  echo Rating : $value

# to check given movie has Rotten tomatos value or not
if [[ $value == *"Source"* ]]; then
	echo Rating : $value
else
	echo Rating : N/A
fi
	
fi

