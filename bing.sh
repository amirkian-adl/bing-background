#!/bin/bash


#image link
Url="https://www.bing.com/th?id=OHR.CommonTernsGiving_ROW0672150227_1920x1080.jpg&rf=LaDigue_1920x1080.jpg"

#save path
Dir=$Home'/Pictures/'

#Date
Date=$(date + '%y-%m-%d')

#File name
Name=$Date".jpg"

#Download
wget -o $Dir$Name $Url

#set background
gsettings set org.gnome.desktop.background picture-uri "file:///$Dir$Name"

#finish
exit