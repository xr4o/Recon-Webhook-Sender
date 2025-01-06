@echo off   
title Recon Sender
set /p webhook=Webhook : 
:send
cls
set /p message=Message : 
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"%message%\"}" %webhook%
goto :send
pause

::keep clicking enter once you put in the message cuz itll spam if u wwant to spam
