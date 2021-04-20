*** Settings ***
Library  ../Testdata/ReadData.py

*** Keywords ***
Read Number Rows
    [Arguments]   ${sheetname}
    ${maxr}  fetch number rows   ${sheetname}
    [Return]  ${maxr}

Read Data Cell
    [Arguments]  ${sheetname}  ${row}  ${cell}
    ${celldata}  FETCH CELL DATA  ${sheetname}  ${row}  ${cell}
    [return]  ${celldata}