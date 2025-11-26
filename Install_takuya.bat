@echo off
chcp 65001 > NUL
set CURL_CMD=C:\Windows\System32\curl.exe -k

echo %CURL_CMD% -sLO https://raw.githubusercontent.com/nappaniconico/takuya_llm/refs/heads/main/llm.json
%CURL_CMD% -sLO https://raw.githubusercontent.com/nappaniconico/takuya_llm/refs/heads/main/llm.json
if %errorlevel% neq 0 ( pause & popd & exit /b 1 )

echo %CURL_CMD% -sLO https://raw.githubusercontent.com/nappaniconico/takuya_llm/refs/heads/main/llm_sequence.json
%CURL_CMD% -sLO https://raw.githubusercontent.com/nappaniconico/takuya_llm/refs/heads/main/llm_sequence.json
if %errorlevel% neq 0 ( pause & popd & exit /b 1 )

if not exist %~dp0sample\ ( mkdir %~dp0sample )
pushd %~dp0sample

echo %CURL_CMD% -sLO https://raw.githubusercontent.com/nappaniconico/takuya_llm/refs/heads/main/takuya.json
%CURL_CMD% -sLO https://raw.githubusercontent.com/nappaniconico/takuya_llm/refs/heads/main/takuya.json
if %errorlevel% neq 0 ( pause & popd & exit /b 1 )