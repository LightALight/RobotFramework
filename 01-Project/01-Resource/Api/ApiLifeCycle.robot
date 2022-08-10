*** Settings ***
Resource          ../Resource.robot

*** Keywords ***
getApi
    [Arguments]    ${url}    ${uri}    ${params}=    ${headers}=
    [Documentation]    [功能描述]
    ...
    ...    使用Get方法通过输入的参数获取网站的信息
    ...
    ...
    ...    [输入参数]
    ...
    ...    1.url---访问的网址(必填:字符串)
    ...
    ...    2.uri---路径(必填:字符串)
    ...
    ...    3.params---参数(可选:字典型字符串)
    ...
    ...    3.headers---头信息(可选:字典型字符串)
    ...
    ...
    ...    [返回参数]
    ...
    ...    1.content---查询内容(字符串)
    Create Session    session    ${url}    # 创建会话
    ${resp}    Get Request    session    ${uri}    params=${params}    headers=${headers}    # 发送请求
    log    ${resp}
    Should Be Equal As Strings    ${resp.status_code}    200
    ${content}    Set Variable    ${resp.content}
    Comment    ${content}    Get From Dictionary    ${resp.json()}    mts
    [Return]    ${content}

postApi
    [Arguments]    ${url}    ${uri}    ${data}=    ${params}=    ${headers}=
    [Documentation]    [功能描述]
    ...
    ...    使用Post方法通过输入的参数获取网站的信息
    ...
    ...
    ...    [输入参数]
    ...
    ...    1.url---访问的网址(必填:字符串)
    ...
    ...    2.uri---路径(必填:字符串)
    ...
    ...    3.data---body信息(可选:字典型字符串)
    ...
    ...    4.params---参数(可选:字典型字符串)
    ...
    ...    5.headers---头信息(可选:字典型字符串)
    ...
    ...
    ...    [返回参数]
    ...
    ...    1.content---查询内容(字符串)
    Create Session    session    ${url}    # 创建会话
    ${resp}    Post Request    session    ${uri}    data=${data}    params=${params}    headers=${headers}
    ...    发送请求
    log    ${resp}
    Should Be Equal As Strings    ${resp.status_code}    201
    ${content}    Set Variable    ${resp.content}
    Comment    ${content}    Get From Dictionary    ${resp.json()}    mts
    [Return]    ${content}
