# 25DaysOfServerless

Working on the Microsoft Serverless challenges [here](https://github.com/microsoft/25-days-of-serverless)

## Challenge 1

Your task for today: create a REST API endpoint that spins a dreidel and randomly returns נ (Nun), ג (Gimmel), ה (Hay), or ש (Shin). This sounds like a great opportunity to use a serverless function to create an endpoint that any application can call!

Spin the Dridel - [Basic Azure Function](https://github.com/microsoft/25-days-of-serverless/blob/master/week-1/challenge-1/README.md)

Install the azure function in VS Code, installed 2.2 version of dotnet core

?name=jordan

Run in web browser in local dev [http://localhost:7071/api/Dridel] this calls the code in the run.ps1

Publish to via VS Code to Azure [here](https://jl-dreidel.azurewebsites.net/api/Dreidel)

## Challenge 2

It takes Lucy 25 minutes to make a large pot of coffee that will serve everyone, and about four minutes to deliver two cups of coffee (remember that she only has two hands to deliver them!). As mentioned, the candles will need to be relit every ten minutes.

Create a task scheduler that will tell Lucy exactly when she should relight candles, pour coffee into cups, and deliver batches of coffee.

### Tips

Logic app

8:00 AM - start the coffee, set out 4 cups

8:25 AM - pour two cups

8:30 AM - light the candles

8:35 AM - deliver the coffee to Mom and Dad

8:39 AM - return to kitchen, fill two more cups

8:40 AM - relight the candles

8:45 AM - deliver the coffee to Sister and Brother

8:49 AM - return to kitchen, take a break!
