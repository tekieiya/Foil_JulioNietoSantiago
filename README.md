#  Foil - Julio Nieto Santiago

## Introduction

Welcome to the Julio Nieto test. I have tried to capture in this code both my good work programming and my interest in the job offer you offer, as well as your project, which I find really attractive. Many of the topics we've talked about in the previous two interviews can be reflected in the code, such as the Clean Code, design patterns, and love of UX.

_Like a curiosity, the first task I did almost 11 years ago as an iOS developer was, precisely, to copy a functionality from the New York Times iOS application to the El País application, the newspaper with the largest circulation in Spain. What a coincidence, right?_

## Setup

In order to start the project, it is necessary to download the dependencies managed by Cocoapods. Just run _pod install_ in Terminal and open the _workspace_ file, as always.

The only library included is Alamofire for _networking_.

## Architecture Pattern

II have chosen MVP for the test. My decision had to do with the size of the project and the non-scalability. As we already talked about in the interviews, in case of complex applications or with a potential scalability, my choice would have been the VIPER pattern.

## Routing

For the navigation of the application, I have chosen to use Coordinators. This example shows the use of a General Coordinator (_AppCoordinator_) for the  application, and a coordinator (_ArticlesCoordinator_) for the example scene.

## Networking

For communication with the API, I have used a couple of classes that I developed a while ago and I am improving every so often: _APIRouter_ and _APIClient_. I think they are simple but very powerful.

## Media

As an added effort to show how interested I am in the test, I researched until I found the fonts used by the New York Times, until I made a terrific find -> [NYT-COMM](https://github.com/fvcproductions/nyt-comm) Thanks to this project, I have been able to use the same fonts that appear in the test video, as well as a couple of official images.

## Layout

I have created the layouts with _Xib_ and _Storyboards_ files. Throughout my career I have created layouts only by code (including Autolayout by code), only with _Xib_, with _Storyboards _... I have no problem with any of the options. As you told me, you use Stelvio, and I would like to add it to my knowledge base.

## Constants

All constants, literals, fonts, image names, visual component identifiers, etc. are collected in the project's _Constants_ file.

## UI Care

As a show of attention to detail, I have tried to capture every element of the test video as accurately as possible, as well as adding elements from my own.

Some examples:

- I developed a method to reproduce DropCaps at the beginning of the article in the Article View. I used a _UITextView_ with _exclusionPaths_. I'm really proud of this.
- I have tried to copy each margin, typography, sizes, ratios, etc. to reproduce the video UI
- I added two _Views_: one for loading and one for network error, with their own behavior logics.
- I calculate the aspect ratio of the article image at runtime based on the data provided by the backend and adjust it by modifying the constraints to optimize the space and image display
- I modified the string date provided by backend with _DateFormatters_ to adapt the video UI
- I created all the App Icons for the app 😅

## Testing

I would have liked to develop a battery of Unit and UI Tests, but I have been developing this code stealing hours of sleep, and I do not want to send it later, so, although I have a lot of experience with Testing, I have not included them in the Test. Sorry.
If you consider it necessary, I can do it without problem, you just have to tell me.

## Epilogue

As I said at the beginning, I am very excited about the project, the possibility of working in an international environment (again) from home, learning Stelvio, ... I would love for you to consider my application, and that anything you see as a handicap I can solve, I am proactive and very decisive, and I have no problems working and improving.

And I'm very good at telling jokes.

Thank you very much for everything

Julio Nieto Santiago
