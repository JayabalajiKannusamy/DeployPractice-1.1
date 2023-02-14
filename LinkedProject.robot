*** Settings ***
Library    SeleniumLibrary   implicit_wait=60
#Library    AppiumLibrary
Test Setup   Open Browser  https://codexstage.azurewebsites.net/  edge
Suite Teardown   Close Browser

#---------------------------------------------------------------
#  robot LinkedProject.robot

*** Test Cases ***

#1.____________________LOGIN & CLIENT PULSE & STAKEHOLDER____________________#
TO CHECK FUNCTIONALITIES OF CODEX STAGE ENV

    #[Documentation]  To Check The LOGIN & CLIENT PULSE & STAKEHOLDER Funtionality of CodeX
    Maximize Browser Window
    Sleep   15  #Wait for Approve Authentication through Mobile

#SELECT THE PROJECT
    #PROJECT NAME: Digital Platform 2024-25
    #Searching in FILTER
    Sleep  8
    Click Element  XPATH://*[@id="midContainer"]/div/div[2]/div[1]/div/div[1]/input
    Input Text  XPATH://*[@id="midContainer"]/div/div[2]/div[1]/div/div[1]/input  Digital Platform 2024-25
    Sleep  4
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/dashboard/div/div/div[2]/div[2]/div[2]/div[2]/div[1]/div/span[1]/span[2]
    Sleep  12

#Create New Escalation as CLIENT PARTNER
    #Select Escalation/Warning
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/projectdetails/div[1]/div/div[2]/div/div[1]/div[1]/div/p[2]/span
    Sleep  4
    Click Element  XPATH://*[@id="midContainer"]/div/div[2]/div[3]/button
    #Input data
    Sleep  6
    Scroll Element Into View  XPATH://*[@id="newEsc"]/form/div/div/div[2]/div[1]/div[5]/input
    Click Element  XPATH://*[@id="newEsc"]/form/div/div/div[2]/div[1]/div[5]/input
    Input Text  XPATH://*[@id="newEsc"]/form/div/div/div[2]/div[1]/div[5]/input  JAYABALAJI K
    Sleep  1
    Scroll Element Into View  XPATH:/html/body/codex-root/div[1]/home/div/app-new-escalation/div[2]/form/div/div/div[2]/div[1]/div[7]/div/ul/li[2]/input
    Click Element  XPATH://*[@id="newEsc"]/form/div/div/div[2]/div[1]/div[7]/div/ul/li[1]/input
    Click Element  XPATH://*[@id="newEsc"]/form/div/div/div[2]/div[1]/div[7]/div/ul/ul[1]/li[1]/input

    Sleep  1
    Scroll Element Into View  XPATH://*[@id="newEsc"]/form/div/div/div[2]/div[2]/div/input
    Input Text  XPATH://*[@id="newEsc"]/form/div/div/div[2]/div[2]/div/input  Testing Purpose only

    Click Element  XPATH://*[@id="newEsc"]/form/div/div/div[2]/div[2]/div/textarea
    Input Text  XPATH://*[@id="newEsc"]/form/div/div/div[2]/div[2]/div/textarea  TESTING NEWLY LINKED PROJECT

    #SUBMIT
    Click Element  XPATH://*[@id="newEsc"]/form/div/div/div[3]/div[3]/button
    Sleep  6
#BACK TO HOME
    Click Element  XPATH://span[@title='My Projects']
#SELECT PROJECT NAME
    #Searching in FILTER
    Sleep  8
    Click Element  XPATH://*[@id="midContainer"]/div/div[2]/div[1]/div/div[1]/input
    Input Text  XPATH://*[@id="midContainer"]/div/div[2]/div[1]/div/div[1]/input  Digital Platform 2023
# Project name : Digital Platform 2023 #
    Sleep  3
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/dashboard/div/div/div[2]/div[2]/div[2]/div[2]/div/div/span[1]/span[2]
    Sleep  8

#SELECT THE CLIENT PULSE
    Click Element  XPATH://*[@id="feature3"]/div/p[2]/span/span
    Sleep  6
#CLICK VIEW COMMENT IN CLIENT PULSE
    Click Element  XPATH://*[@id="midContainer"]/div/div[2]/div[2]/ul/li/span[5]/p
    Sleep  2
#CLICK X MARK IN POPUP
    Click Element   XPATH://*[@id="cp0"]/div/div/div/div[2]/div/span      #/html/body/app-root/app-report/button[3]/span[1]
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\ClientPulse.png
    Sleep  3

#Click project name to back
    Wait Until Element Is Visible  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Wait Until Element Is Enabled  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Click Element  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Sleep  5

#SELECT STAKAHOLDER FEATURE
    Scroll Element Into View  XPATH:/html/body/codex-root/div[1]/home/div/projectdetails/div[1]/div/div[2]/div/div[1]/div[11]/div/p[2]/span
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/projectdetails/div[1]/div/div[2]/div/div[1]/div[11]/div/p[2]/span
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\INTSTAKE.png
    Sleep  3
#Click The "Internal Stakeholders" option
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-stakeholder/div[1]/div/div[2]/div/ul/li[2]/a
    Sleep  3
#CLICK EDIT IN one of the STAKEHOLDERS
    Click Element  XPATH://span[@data-target='#isContactInfo']//p[contains(text(),'EDIT')]
    Sleep  3
#ADD PHONE NUMBER
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-stakeholder/div[4]/div/div/div[2]/form/div[2]/div[1]/input
    Input Text  XPATH:/html/body/codex-root/div[1]/home/div/app-stakeholder/div[4]/div/div/div[2]/form/div[2]/div[1]/input   8610020001
#Click UPDATE
    Click Element  XPATH://*[@id="isContactInfo"]/div/div/div[2]/form/button[1]
    Sleep  4
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\STAKEHOLDER.png

#Click project name to back
    Wait Until Element Is Visible  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Wait Until Element Is Enabled  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]

    Click Element  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Sleep  5

#______________________ESCALATION/WARNING & PROJECT HEALTH______________________#

    #[Documentation]  To Check The ESCALATION/WARNING & PROJECT HEALTH Funtionality of CodeX

#SELECT THE ESCALATION/WARNING
    Click Element  XPATH://*[@id="feature0"]/div/p[2]/span
    Sleep  5
    Capture Page Screenshot   C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\Escalation.png
#Click project name to back
    Wait Until Element Is Visible  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Wait Until Element Is Enabled  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Click Element  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Sleep  5

#________________________________________
#Select PROJECT HEALTH
    Click Element  XPATH://*[@id="feature1"]/div/p[2]/span
    Sleep  4
#Click HISTORY AND BACK
    Click Element  XPATH://*[@id="midContainer"]/div[1]/div[2]/div[2]/div/app-project-health-rag-history/div[3]/a/button
    Click Element  XPATH://*[@id="midContainer"]/div/div[1]/span
    Sleep  4

    Capture Page Screenshot   C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\Health.png

#Click project name to back
    Wait Until Element Is Visible  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Wait Until Element Is Enabled  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Click Element  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Sleep  5

#--------------Below works only from FRIDAY(12AM) to TUESDAY(12PM) of every week---------------#

#To check the INTERNAL ISSUE CREATION and Submit in PROJECT HEALTH

#Select PROJECT HEALTH
    #Click Element  XPATH:/html/body/codex-root/div[1]/home/div/projectdetails/div[1]/div/div[2]/div/div[1]/div[2]/div/p[2]/span
    #Sleep  6

#Select HEALTH COLOUR AND SUBMIT THEN BACK
   # Click Element  id:idGreenHealth
   # Click Element  XPATH://*[@id="midContainer"]/div[1]/div[2]/div[1]/div[2]/button
   # Sleep  5
   # Click Element  XPATH://*[@id="actionplan"]/div/div/div/div[2]/div[2]/div/button[1]
   # Sleep  5

#Back to Feature Page
   # Wait Until Element Is Visible  XPATH://*[@id="midContainer"]/div[1]/div[1]/span
   # Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div[1]/div[1]/span
   # Sleep  60
   # Click Element  XPATH://*[@id="midContainer"]/div[1]/div[1]/span
   # Capture Page Screenshot   C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\Pic.png
   # Sleep  5
#Select PROJECT HEALTH
   # Click Element  XPATH://*[@id="feature1"]/div/p[2]/span
   # Sleep  5
#Select HEALTH COLOUR AND SUBMIT THEN BACK
   # Click Element  id:idAmberHealth
   # Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-newproject-health/div/div[1]/div[2]/div[1]/div[2]/button
   # Sleep  3
   # Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-newproject-health/div/div[2]/div/div/div/div[2]/div[2]/div/button[1]
   # Sleep  5
   # Input Text  name:title   IGNORE THIS - Testing purpose only*
   # Input Text  id:newIICreateID  IGNORE THIS - Testing purpose only*
   # Sleep  2

   # Click Element  XPATH://*[@id="internalIssue"]/div/div/form/div/div[3]/div[2]/label/span
   # Scroll Element Into View  XPATH:/html/body/codex-root/div[1]/home/div/app-newproject-health/div/div[4]/div/div/form/div/div[5]/div/div[3]/label/span
   # Click Element  XPATH://*[@id="internalIssue"]/div/div/form/div/div[4]/div/div[3]/label/span
   # Click Element  XPATH://*[@id="internalIssue"]/div/div/div[2]/div[2]/button[1]
   # Sleep  30

   # Capture Page Screenshot   C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\Issue.png
#Click project name to back
  # Wait Until Element Is Visible  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
  # Wait Until Element Is Enabled  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
  # Click Element  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
  #  Sleep  5

######  INTERNAL ISSUE ######### Created


#____________________ACTION____________________#

#To Check The Action Funtionality of CodeX

#SELECT THE ACTION
    Wait Until Element Is Enabled  XPATH://*[@id="feature9"]/div/p[2]/span
    Scroll Element Into View  XPATH://*[@id="feature9"]/div/p[2]/span
    Click Element  XPATH://*[@id="feature9"]/div/p[2]/span
    Sleep  5
#ADD ACTION
    Click Element  XPATH://*[@id="midContainer"]/div/div[2]/div[3]/button[2]
    Sleep  3
#Select Fields
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-new-allaction/div[4]/div/div/div[1]/div[2]/select
    Click Element  XPATH://*[@id="newaction"]/div/div/div[1]/div[2]/select/option[2]
    Sleep  3
#DESCRIPTION
    Click Element  Xpath://*[@id="newaction"]/div/div/div[1]/div[3]/textarea
    Input Text  XPATH://*[@id="newaction"]/div/div/div[1]/div[3]/textarea   TESTING
    Sleep  2
#TAG NAME
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-new-allaction/div[4]/div/div/div[2]/input
    Input Text  XPATH:/html/body/codex-root/div[1]/home/div/app-new-allaction/div[4]/div/div/div[2]/input  @JAYA
    Sleep  4
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-new-allaction/div[4]/div/div/div[2]/ul/li[28]/p
#click add action
    Click Element  XPATH://*[@id="newaction"]/div/div/div[3]/div[2]/button[1]
    Sleep  5
#Select and Close the ACTION
    Click Element  XPATH://*[@id="actionPlan3"]/ul/li/div[1]/span/label/span
    Sleep  2
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-new-allaction/div[1]/div/div[2]/div[3]/button[1]
    Sleep  3

    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\ACTION.png

    #Click project name to back
    Wait Until Element Is Visible  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Wait Until Element Is Enabled  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Click Element  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Sleep  7

#______________________WSR(STATUS REPORT)______________________#

    #[Documentation]  To Check The Login & STATUS REPORT Funtionality of CodeX

#SELECT THE STATUS REPORT
    Scroll Element Into View  XPATH:/html/body/codex-root/div[1]/home/div/projectdetails/div[1]/div/div[2]/div/div[1]/div[3]/div/p[2]/span[1]
    Wait Until Element Is Enabled  XPATH:/html/body/codex-root/div[1]/home/div/projectdetails/div[1]/div/div[2]/div/div[1]/div[3]/div/p[2]/span[1]
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/projectdetails/div[1]/div/div[2]/div/div[1]/div[3]/div/p[2]/span[1]
    Sleep  6
#Click COMPOSE MAIL
    Wait Until Element Is Visible  XPATH://*[@id="midContainer"]/div/div[2]/div[3]/button
    Wait Until Element Is Enabled  XPATH://*[@id="midContainer"]/div/div[2]/div[3]/button
    Click Element  XPATH://*[@id="midContainer"]/div/div[2]/div[3]/button
    Sleep  6

#Input SUBJECT & COMMENTS
    Click Element  name:Subject
    Input Text  name:Subject   TESTING PURPOSE ONLY- IGNORE THIS
#    Execute Javascript  window.scrollTo(0,document.body.scrollHeight)
    Scroll Element Into View  XPATH:/html/body/codex-root/div[1]/home/div/wsr/div/div[2]/div[2]/form/div[6]/div/quill/form/quill-editor/div[2]/div[1]
    Sleep  5
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/wsr/div/div[2]/div[2]/form/div[6]/div/quill/form/quill-editor/div[2]/div[1]
    Input Text  XPATH:/html/body/codex-root/div[1]/home/div/wsr/div/div[2]/div[2]/form/div[6]/div/quill/form/quill-editor/div[2]/div[1]   TESTING PURPOSE ONLY- IGNORE THIS
    Click Element  XPATH://*[@id="wsrScrollId"]/div[2]/div/button[1]
    Sleep  5
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/wsr/div/div[3]/div/div/div/div[2]/button[2]
    Sleep  5
    Click Element  XPATH://*[@id="attachmentModal"]/div/div/div/div/div[2]/button[1]

    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\REPORT.png

#Click project name to back
    Sleep  10
    Wait Until Element Is Visible  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Wait Until Element Is Enabled  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Click Element  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Sleep  5

#______________________INTERNAL ISSUE______________________#

#[Documentation]  To Check The INTERNAL ISSUE Funtionality of CodeX

#SELECT THE INTERNAL ISSUE
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/projectdetails/div[1]/div/div[2]/div/div[1]/div[13]/div/p[2]/span
    Sleep  4
#Add New Issue
    #Click New Issue
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-newinternal-issue/div[1]/div/div[2]/div[3]/button
    Sleep  4
    #Input
    Input Text  name:title  TESTING PURPOSE
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-newinternal-issue/div[2]/div/div/form/div/div[2]/div/textarea
    Input Text  XPATH:/html/body/codex-root/div[1]/home/div/app-newinternal-issue/div[2]/div/div/form/div/div[2]/div/textarea  TESTING
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-newinternal-issue/div[2]/div/div/form/div/div[3]/span[3]/label
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-newinternal-issue/div[2]/div/div/form/div/div[4]/div[2]/label/span
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-newinternal-issue/div[2]/div/div/form/div/div[5]/div/div[1]/label/span

    Scroll Element Into View  XPATH:/html/body/codex-root/div[1]/home/div/app-newinternal-issue/div[2]/div/div/div[2]/div[3]/button[1]
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-newinternal-issue/div[2]/div/div/div[2]/div[3]/button[1]
    Sleep  10

#Edit Issue
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-newinternal-issue/div[1]/div/div[2]/div[2]/ul/li[1]/div[7]/p
    Sleep  3
    Click Element  XPATH://*[@id="edit-issue"]/div/div/form/div/div[1]/div[5]/span[1]/label
    Scroll Element Into View  XPATH://*[@id="edit-issue"]/div/div/div[2]/div[3]/button[1]
    Click Element  XPATH://*[@id="edit-issue"]/div/div/div[2]/div[3]/button[1]
    Sleep  10
#Close Issue
    Click Element  XPATH://*[@id="midContainer"]/div/div[2]/div[2]/ul/li[1]/div[6]/p
    Sleep  5
    Click Element  XPATH://*[@id="close-issue"]/div/div/div[2]/div[1]/input
    Input Text  XPATH://*[@id="close-issue"]/div/div/div[2]/div[1]/input  TESTING DONE
    Click Element  XPATH://*[@id="close-issue"]/div/div/div[3]/div[3]/button[1]

    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\ISSUE.png

#Click project name to back
    Sleep  10
    Click Element  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Sleep  5


#_____________________RISK MANAGEMENT______________________#

#SELECT THE RISK MANAGEMENT
    Scroll Element Into View  XPATH:/html/body/codex-root/div[1]/home/div/projectdetails/div[1]/div/div[2]/div/div[1]/div[5]/div/p[2]/span
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/projectdetails/div[1]/div/div[2]/div/div[1]/div[5]/div/p[2]/span
    Sleep  10
#Create NEW RISK
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-new-risk-management/div[1]/div/div[2]/div[3]/button
    Sleep  4
#Input data needed and Save
    #TITLE
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-new-risk-management/div[2]/div/div/form/div[1]/div[1]/textarea
    Input Text  XPATH:/html/body/codex-root/div[1]/home/div/app-new-risk-management/div[2]/div/div/form/div[1]/div[1]/textarea  TESTING PURPOSE ONLY-IGNORE THIS
    #Description
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-new-risk-management/div[2]/div/div/form/div[1]/div[2]/textarea
    Input Text  XPATH:/html/body/codex-root/div[1]/home/div/app-new-risk-management/div[2]/div/div/form/div[1]/div[2]/textarea  TESTING PURPOSE ONLY-IGNORE THIS
    #Occurance & Impact selection
    Click Element  id:circleLowOccurrence
    Click Element  id:circleLowImpact
    #Risk impacts
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-new-risk-management/div[2]/div/div/form/div[1]/div[4]/div/div[1]/label/span
    Scroll Element Into View  XPATH:/html/body/codex-root/div[1]/home/div/app-new-risk-management/div[2]/div/div/form/div[1]/div[6]/div/div[1]/label/span
    #Risk reason
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-new-risk-management/div[2]/div/div/form/div[1]/div[6]/div/div[1]/label/span
    Sleep  3
#SAVE
    Click Element  XPATH://*[@id="newRisk"]/div/div/form/div[2]/div[3]/button[1]
    Sleep  5
#Close RISK
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-new-risk-management/div[1]/div/div[2]/div[2]/ul/div/li/div[6]/p
    Sleep  5
#Comment for close
    Input Text  name:title  TESTING DONE
    #save
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-new-risk-management/div[3]/div/div/div[3]/div[3]/button[1]
    Sleep  4

    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\RISKCLOSED.png
#Click project name to back
    Sleep  10
    Click Element  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Sleep  5


#______________________PROJECT ASSESTS______________________#

#SELECT THE PROJECT ASSESTS
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/projectdetails/div[1]/div/div[2]/div/div[1]/div[6]/div/p[2]/span
    Sleep  5
#Choose File
    #Manually Upload a file and Try to Download
#   Choose File  XPATH:/html/body/codex-root/div[1]/home/div/app-upload-project-assets/div[1]/div/div[2]/div[1]/div[2]/label  C://Users/Jayabalaji.K/OneDrive - Brillio/Desktop/TestSnap.png

#Download File
    Click Element  XPATH://*[@id="midContainer"]/div/div[3]/ul/li/span[1]/p
    Sleep  5
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\Assest.png
#Click project name to back
    Sleep  5
    Wait Until Element Is Visible  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Wait Until Element Is Enabled  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Click Element  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Sleep  7


#______________________PROJECT GOVERNANCE______________________#

#SELECT THE PROJECT GOVERNANCE
    Scroll Element Into View  XPATH:/html/body/codex-root/div[1]/home/div/projectdetails/div[1]/div/div[2]/div/div[1]/div[11]/div/p[2]/span
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/projectdetails/div[1]/div/div[2]/div/div[1]/div[7]/div/p[2]/span[1]
    Sleep  15
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\GOVERNANCE.png
    Sleep  3
#Back to FEATURE
    Wait Until Element Is Visible  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Wait Until Element Is Enabled  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Click Element  XPATH://*[@id="midContainer"]/div/div[1]/span
    Sleep  7

    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\Back.png

#______________________RISK PROFILE______________________#

#SELECT THE RISK PROFILE
    Scroll Element Into View  XPATH:/html/body/codex-root/div[1]/home/div/projectdetails/div[1]/div/div[2]/div/div[1]/div[11]/div/p[2]/span
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/projectdetails/div[1]/div/div[2]/div/div[1]/div[8]/div/p[2]/span/span
    Sleep  5
#Click 'organization'
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-riskprofile/div[1]/div[1]/div[2]/div/div[1]/div[1]/a/button

    Sleep  2
    #Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-riskprofile/div[1]/div[1]/div[2]/div/div[1]/div[2]/div[2]/div[1]/div[1]/div/select
    Select From List By Value  XPATH:/html/body/codex-root/div[1]/home/div/app-riskprofile/div[1]/div[1]/div[2]/div/div[1]/div[2]/div[2]/div[1]/div[1]/div/select  1
    Select From List By Value  XPATH://*[@id="riskprofile10"]/div[2]/div[2]/div[1]/div/select  1
    Select From List By Value  XPATH://*[@id="riskprofile10"]/div[2]/div[3]/div[1]/div/select  3
    Sleep  2
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\DemoCodeX\Organization.png

#Click 'Pro Charact'
    Scroll Element Into View  XPATH:/html/body/codex-root/div[1]/home/div/app-riskprofile/div[1]/div[1]/div[2]/div/div[2]/div[1]/a/button
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-riskprofile/div[1]/div[1]/div[2]/div/div[2]/div[1]/a/button
    Sleep  2

    Select From List By Value  XPATH://*[@id="riskprofile11"]/div[2]/div[1]/div[1]/div/select  1
    Select From List By Value  XPATH://*[@id="riskprofile11"]/div[2]/div[2]/div[1]/div/select  3
    Select From List By Value  XPATH://*[@id="riskprofile11"]/div[2]/div[3]/div[1]/div/select  1
    Select From List By Value  XPATH://*[@id="riskprofile11"]/div[2]/div[4]/div[1]/div/select  3
    Select From List By Value  XPATH://*[@id="riskprofile11"]/div[2]/div[5]/div[1]/div/select  1
    Select From List By Value  XPATH://*[@id="riskprofile11"]/div[2]/div[6]/div[1]/div/select  3
    Sleep  2
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\DemoCodeX\Charact.png

#Click 'Customer'
    Scroll Element Into View  XPATH:/html/body/codex-root/div[1]/home/div/app-riskprofile/div[1]/div[1]/div[2]/div/div[3]/div[1]/a/button
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-riskprofile/div[1]/div[1]/div[2]/div/div[3]/div[1]/a/button
    Sleep  2

    Select From List By Value  XPATH://*[@id="riskprofile12"]/div[2]/div[1]/div[1]/div/select  3
    Select From List By Value  XPATH://*[@id="riskprofile12"]/div[2]/div[2]/div[1]/div/select  1
    Sleep  2
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\DemoCodeX\Customer.png

#SUBMIT/UPDATE
    Sleep  2
    Scroll Element Into View  XPATH://*[@id="midContainer"]/div[2]/button
    Click Element  XPATH://*[@id="midContainer"]/div[2]/button
    Sleep  10
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\SAVED.png

#Click project name to back
    #Sleep  10
    Wait Until Element Is Visible  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Wait Until Element Is Enabled  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Click Element  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Sleep  7


#______________________PROJECT CONFIGURATION______________________#

#SELECT THE PROJECT CONFIGURATION
    Scroll Element Into View  XPATH://*[@id="feature8"]/div/p[2]/span[1]
    Click Element  XPATH://*[@id="feature8"]/div/p[2]/span[1]
    Sleep  7
#Type of Contract
    #STAFFING
    Click Element  XPATH://*[@id="midContainer"]/div/form/div[1]/div[1]/div[1]/span[3]/label
    #MANAGED
    Click Element  XPATH://*[@id="midContainer"]/div/form/div[1]/div[1]/div[1]/span[2]/label
#MAIL NOT TICK-REASON
    Scroll Element Into View  XPATH://*[@id="midContainer"]/div/form/div[1]/div[4]/label/span
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-newproject-config/div[1]/div/form/div[1]/div[1]/div[2]/label/span
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-newproject-config/div[1]/div/form/div[1]/div[1]/div[2]/div/textarea
    Input Text  XPATH:/html/body/codex-root/div[1]/home/div/app-newproject-config/div[1]/div/form/div[1]/div[1]/div[2]/div/textarea  TESTING PURPOSE
#UPDATE
    Click Element  XPATH://*[@id="midContainer"]/div/form/div[2]/div/button
    Sleep  3
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\UpdateConf.png
    Sleep  7

#BACK TO FEATURE
    Wait Until Element Is Visible  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Wait Until Element Is Enabled  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Click Element  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Sleep  7

    #TO UPDATE with STATUS REPORT IN SAVED PROJECT CONFIGURATION

#SELECT THE PROJECT CONFIGURATION
    Scroll Element Into View  XPATH://*[@id="feature8"]/div/p[2]/span[1]
    Click Element  XPATH://*[@id="feature8"]/div/p[2]/span[1]
    Sleep  7
#Type of Contract
    #STAFFING
    Click Element  XPATH://*[@id="midContainer"]/div/form/div[1]/div[1]/div[1]/span[3]/label
    #MANAGED
    Click Element  XPATH://*[@id="midContainer"]/div/form/div[1]/div[1]/div[1]/span[2]/label
#MAIL TICK
    Scroll Element Into View  XPATH://*[@id="midContainer"]/div/form/div[1]/div[4]/label/span
    Click Element  XPATH://*[@id="midContainer"]/div/form/div[1]/div[1]/div[2]/label/span
#FREQUENCY & DATE
    Click Element  id:confdate
    Click Element  XPATH:/html/body/div[2]/div[1]/table/tbody/tr[5]/td[5]

    #UPDATE
    Sleep  3
    Click Element  XPATH://*[@id="midContainer"]/div/form/div[2]/div/button

    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\UpdateConf.png
    Sleep  5

#Click project name to back
    Wait Until Element Is Visible  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Wait Until Element Is Enabled  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Click Element  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Sleep  7


#______________________CUSTOMER MAIL______________________#

#SELECT THE CUSTOMER MAIL
    #Click DRAFTS and Back
    Scroll Element Into View  id:feature11
    Click Element  XPATH://*[@id="feature11"]/div/p[2]/span[1]/span/span/b
    Sleep  3
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\DemoCodeX\DraftsCust.png
    Sleep  2
    Click Element  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Sleep  5
    #Click Customer mail
    Scroll Element Into View  id:feature11
    Click Element  id:feature11
    Sleep  7
    #Compose Mail
    Click Element  XPATH://*[@id="midContainer"]/div/div[2]/div[3]/button
    Sleep  8
    #INPUT
    Click Element  name:Subject
    Input Text  name:Subject  TESTING PURPOSE - IGNORE THIS
    Scroll Element Into View  XPATH://*[@id="idQuill"]/div[2]/div[1]
    Input Text  XPATH://*[@id="idQuill"]/div[2]/div[1]  TESTING PURPOSE ONLY-IGNORE THIS

    #SAVE
    Sleep  3
    Scroll Element Into View  XPATH://*[@id="wsrScrollId"]/div[2]/div/button[1]
    Click Element  XPATH://*[@id="wsrScrollId"]/div[2]/div/button[1]

    Sleep  5
    Click Element  XPATH://*[@id="preview-mailer"]/div/div/div/div[2]/button[2]
    Sleep  5

    #WITHOUT ATTACH POPUP
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/wsr/div/div[4]/div/div/div/div/div[2]/button[1]
    Sleep  5

    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\MailCust.png

#Click project name to back
    Sleep  5
    Wait Until Element Is Visible  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Wait Until Element Is Enabled  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Click Element  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Sleep  7



#______________________PROJECT INFORMATION______________________#

#SELECT THE PROJECT INFORMATION
    Scroll Element Into View  XPATH://*[@id="feature13"]/a/div/p[2]/span
    Click Element  XPATH://*[@id="feature13"]/a/div/p[2]/span
    Sleep  7
#Select Headers
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-project-attribute-updated/div/div[1]/div[3]/ul/li[2]/a
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-project-attribute-updated/div/div[1]/div[3]/ul/li[3]/a
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-project-attribute-updated/div/div[1]/div[3]/ul/li[4]/a

    Sleep  2

#Expand Tab
    Click Element  XPATH://*[@id="midContainer"]/div[1]/div[2]/span
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\ProInfo.png
    Sleep  1
    Click Element  XPATH://*[@id="midContainer"]/div[1]/div[2]/span

#Click project name to back
    Sleep  5
    Wait Until Element Is Visible  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Wait Until Element Is Enabled  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Click Element  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Sleep  7



#______________________INTEGRATED PROJECT PLAN______________________#

#SELECT THE Int. Project Plan
    Scroll Element Into View  XPATH://*[@id="feature14"]/a/div/p[2]/span
    Click Element  XPATH://*[@id="feature14"]/a/div/p[2]/span
    Sleep  15

#Select EDIT and Back to Plan page
    #Scroll Element Into View  XPATH:/html/body/codex-root/div[1]/home/div/app-integrated-project-plan/div[1]/div/div[2]/div[2]/div[2]/app-ipp-stakeholders/div[1]/div[1]/a/div/span
    #Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-integrated-project-plan/div[1]/div/div[2]/div[2]/div[2]/app-ipp-stakeholders/div[1]/div[1]/a/div/span
    #Sleep  6
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\EditProPlan.png
    #Sleep  4

    #Back
    #Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-stakeholder/div[1]/div/div[1]/span

#Click project name to back
    #Sleep  10
    Wait Until Element Is Visible  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Wait Until Element Is Enabled  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Click Element  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Sleep  7




#______________________BOLT______________________#

#SELECT THE Bolt
    Scroll Element Into View  XPATH:/html/body/codex-root/div[1]/home/div/projectdetails/div[1]/div/div[2]/div/div[1]/div[16]/a/div/p[2]/span
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/projectdetails/div[1]/div/div[2]/div/div[1]/div[16]/a/div/p[2]/span
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\Bolt.png


#Click project name to back
    Sleep  10
    Click Element  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Sleep  5

#______________________ MONTHLY ASSESSMENT ______________________#

#SELECT THE Monthly Assessment
    Scroll Element Into View  XPATH://*[@id="feature16"]/a/div/p[2]/span
    Click Element  XPATH://*[@id="feature16"]/a/div/p[2]/span
    Sleep  6
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\MonthlyAssesment.png

#Click project name to back
    Sleep  4
    Click Element  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Sleep  5



#______________________DEPENDENCY______________________#

#Select the Dependency
    Scroll Element Into View  XPATH:/html/body/codex-root/div[1]/home/div/projectdetails/div[1]/div/div[2]/div/div[1]/div[18]/div/p[2]/span
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/projectdetails/div[1]/div/div[2]/div/div[1]/div[18]/div/p[2]/span
    Sleep  7

#Create NEW DEPENDENCY
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-dependency/div[1]/div/div[2]/div[3]/button
    Sleep  2
#Input Data
    Click Element  name:title
    Input Text  name:title  *IGNORE THIS - Testing purpose only*

    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-dependency/div[2]/div/div/div[2]/form/div/div[2]/div[1]/textarea
    Input Text  XPATH:/html/body/codex-root/div[1]/home/div/app-dependency/div[2]/div/div/div[2]/form/div/div[2]/div[1]/textarea  TESTING PURPOSE

    Click Element  name:selectedCodex
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-dependency/div[2]/div/div/div[2]/form/div/div[2]/div[2]/select/option[2]

    #Select Criticality
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-dependency/div[2]/div/div/div[2]/form/div/div[1]/div[6]/span[2]/label
    Scroll Element Into View  XPATH:/html/body/codex-root/div[1]/home/div/app-dependency/div[2]/div/div/div[2]/form/div/div[1]/div[7]/p[3]/label
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-dependency/div[2]/div/div/div[2]/form/div/div[1]/div[7]/p[3]/label

    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-dependency/div[2]/div/div/div[3]/div[3]/button[1]

    Sleep  4
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\Dependency.png

#Click project name to back
    Sleep  4
    Click Element  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Sleep  5



#______________________ ASSUMPTION ______________________#

#Select the Assumption
    Scroll Element Into View  XPATH://*[@id="feature18"]/div/p[2]/span
    Click Element  XPATH://*[@id="feature18"]/div/p[2]/span
    Sleep  7

#Create NEW Assumption
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-assumption-management/div[1]/div/div[4]/button
    Sleep  4
#Input Data
    Click Element  name:title
    Input Text  name:title  *IGNORE THIS - Testing purpose only*

    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-assumption-management/div[2]/div/div/form/div/div[2]/div[2]/textarea
    Input Text  XPATH:/html/body/codex-root/div[1]/home/div/app-assumption-management/div[2]/div/div/form/div/div[2]/div[2]/textarea  TESTING VERTICALIZATION

    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-assumption-management/div[2]/div/div/form/div/div[2]/div[3]/div[1]/select
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-assumption-management/div[2]/div/div/form/div/div[2]/div[3]/div[1]/select/option[2]

    #Select Impact Area
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-assumption-management/div[2]/div/div/form/div/div[1]/div[6]/div/div[2]/label/span

    #SAVE
    Scroll Element Into View  XPATH:/html/body/codex-root/div[1]/home/div/app-assumption-management/div[2]/div/div/div[2]/div[3]/button[1]
    Capture Page Screenshot  C:\Users\Jayabalaji.K\PycharmProjects\CodexStage\Assumption.png
    Click Element  XPATH:/html/body/codex-root/div[1]/home/div/app-assumption-management/div[2]/div/div/div[2]/div[3]/button[1]

#Click project name to back
    Sleep  8
    Click Element  XPATH:/html/body/codex-root/div[1]/home/app-header/div[1]/div[13]/div[1]/div/span[2]/ul/li[2]/span[1]
    Sleep  2

