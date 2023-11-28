## explore

Country app, made with flutter, You can get to see the details of all the countries with this app, with dark and light mode

## Code base

The folders in Codebase are the widget folder which contains all reusable widget, constants folder for the app theme(color), models for the model files,  screens folder for the screens, service folder for network calls, repository folder for statemanagement files

## Libraries

Flutter secured storage: used to store the app preferences for light and dark mode
Flutter screen util: use for responsiveness and screen size
http: used for api calls
google font: For getting google font type
cache network image: used to show images from internet
riverpod: for state management

## Challenges

The api response was returning a list of datas, which was returning an error while decoding it,
Riverpod could not be used to update the ui.

## Future Feature

A virtual map to direct individuals on screens, like an AI director

## Link to APK

https://drive.google.com/file/d/1k28Gm89Wt8_WugXxjBSRqYIOjReBVwk6/view?usp=sharing

## Appetize Link

https://appetize.io/app/54ks4skfl5xdsg22uwjf4kx2be?device=pixel4&osVersion=11.0&scale=75

## How to run

open terminal and type
 flutter create explore-1
 
 cd explore-1

 flutter analyze

 flutter test

 flutter run lib/main.dart
