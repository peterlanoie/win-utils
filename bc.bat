@echo off
if exist "c:\Program Files\Beyond Compare 4\BCompare.exe" (
	start "Beyond Compare 4" "c:\Program Files\Beyond Compare 4\BCompare.exe" %*
	goto end
)
if exist "C:\Program Files (x86)\Beyond Compare 3\bcompare.exe" (
	start "Beyond Compare 3" "C:\Program Files (x86)\Beyond Compare 3\bcompare.exe" %*
	goto end
)

:end 