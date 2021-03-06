*** Settings ***
Documentation  This is a basic test suite for mobile testing with RobotFramework
Resource    ../Resources/Common.robot
Resource    ../Resources/PO/DrivingRoutines.robot

Test Template    Run Driving Routine With Multiple Drivers


*** Test Cases ***                           USER                    PASSWORD         TIME
#Driving Routine One - Doe Remi              remidoe@driver.com           123          10s
#Driving Routine One - True Colors           true@driver.com              123          10s
#Driving Routine One - Alden Doe             alden@gmail.com              123          10s
Driving Routine One - Driver1                test01@driver.com            123         300s
Driving Routine One - Driver2                test02@driver.com            123         300s
Driving Routine One - Driver3                test03@driver.com            123         300s

*** Keywords ***

Run Driving Routine With Multiple Drivers
    [Documentation]     Driver certifying logs routine
    [Tags]    DriverStatus
    [Arguments]    ${user}  ${password}   ${time}
    drivingroutines.driving routine one     ${user}   ${password}   ${time}

