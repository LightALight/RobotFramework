*** Settings ***
Documentation     资源引用文件
Resource          ../02-Variables/Common/Common.robot
Resource          ../02-Variables/Env/${env}
Resource          UI/LoginWeb.robot
Resource          Api/ApiLifeCycle.robot
Library           Selenium2Library
Library           Screenshot
Library           RequestsLibrary
Library           Collections
Library           ../04-TestLib/CustomLibrary/

*** Variables ***
${env}            alpha.robot
