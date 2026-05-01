@echo off
chcp 65001 > nul
echo [%date% %time%] Wiki Processor 실행

python "%~dp0wiki_processor.py" >> "%~dp0_실행로그.txt" 2>&1

echo [%date% %time%] 완료
