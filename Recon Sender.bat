@echo off   
title Recon Sender By: scronical 
set /p webhook=Webhook : 
:send
cls
set /p message=Message : 
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"%message%\"}" %webhook%
goto :send
pause
