*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup      Start Counter From Zero

*** Test Cases ***
Set Counter Value
   Go To  ${HOME_URL}
   Fill Text     input[name="value"]    10
   Click         button >> text=aseta
   Get Text      body  *=  nappia painettu 10 kertaa