@echo off
setlocal enabledelayedexpansion

:: Lặp qua tất cả thư mục con, kể cả thư mục hiện tại
for /D /R %%d in (*) do (
    pushd "%%d"
    set i=1
    for %%f in (*.jpg) do (
        ren "%%f" "!i!.jpg"
        set /a i=!i!+1
    )
    popd
)
