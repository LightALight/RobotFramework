*** Settings ***
Resource          ../Resource.robot

*** Keywords ***
login
    [Arguments]    ${content}    ${browser_tpye}=${browser_type}
    [Documentation]    [功能描述]
    ...
    ...    通过浏览器访问百度,查询参数content的内容,返回是否查询得到
    ...
    ...
    ...    [输入参数]
    ...
    ...    1.content---查询内容(必填:字符串)
    ...
    ...    2.browser_tpye---浏览器类型(可选 字符串 \ 默认为${browser_type},其他选项 ie ff
    ...
    ...
    ...    [返回参数]
    ...
    ...    1.query---是否查询得到(True False)
    Open Browser    ${baidu_url}    ${browser_tpye}    # 打开浏览器
    Wait Until Element Is Visible    ${baidu_input_bar}    ${web_wait_time}
    Input Text    ${baidu_input_bar}    ${content}    # 输入查询内容
    Wait Until Element Is Visible    ${baidu_search_bar}    ${web_wait_time}
    Click Button    ${baidu_search_bar}    # 点击查询
    ${status}    Run Keyword And Return Status    Wait Until Element Is Visible    ${baidu_query_content}    ${web_wait_time}
    log    ${status}
    ${query}    Run Keyword If    ${status} == "False"    Set Variable    False
    ...    ELSE    Set Variable    True
    Close Browser
    [Return]    ${query}
