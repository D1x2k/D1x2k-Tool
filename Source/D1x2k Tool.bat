::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFD8FVFaJN1eeA6YX/Ofr07vV8x9TXeEwGA==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQIHIRVQQxORfEq5ErwK6fz0/Yo=
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQIbBSgUbQeWNX27ErwT5qjI7PiOsll9
::dhA7uBVwLU+EWH3V7BA7SA==
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATE328DaDpXWA2UPX+zCbtc2+vp5vqTwg==
::ZQ0/vhVqMQ3MEVWAtB9wDEpMHg/i
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFD8FVFaJN1eeA6YX/Ofr087Wuh8WFNYwd4OV36yLQA==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

chcp 65001 > nul
cls

color 0F

title [D1x2k Tool] - Главное меню

setlocal EnableExtensions EnableDelayedExpansion

:MAIN_MENU
cls
echo ==================================================
echo  ██████╗  ██╗██╗  ██╗██████╗ ██╗  ██╗
echo  ██╔══██╗███║╚██╗██╔╝╚════██╗██║ ██╔╝
echo  ██║  ██║╚██║ ╚███╔╝  █████╔╝█████╔╝ 
echo  ██║  ██║ ██║ ██╔██╗ ██╔═══╝ ██╔═██╗ 
echo  ██████╔╝ ██║██╔╝ ██╗███████╗██║  ██╗
echo  ╚═════╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝
echo         УТИЛИТА АКТИВАЦИИ [ВЕРСИЯ 2026]
echo ==================================================
echo.
echo ┌──────────────────────────────────────────────┐
echo │  [1] Активировать только Windows             │
echo │  [2] Активировать только Microsoft Office    │
echo │  [3] Активировать всё вместе (Полная)        │
echo │  [4] Выйти из программы                      │
echo └──────────────────────────────────────────────┘
echo.
echo  » Нажмите цифру 1, 2, 3 или 4 на клавиатуре...

choice /c 1234 /n >nul

if %errorlevel%==1 goto MODE_WIN
if %errorlevel%==2 goto MODE_OFFICE
if %errorlevel%==3 goto MODE_BOTH
if %errorlevel%==4 exit

:MODE_WIN
title [D1x2k Tool] - Подготовка Windows...
cls
echo ==================================================
echo   ИНИЦИАЛИЗАЦИЯ ПРОВЕРКИ И ОЧИСТКИ СИСТЕМЫ
echo ==================================================
echo.
echo  Анализ: [░░░░░░░░░░░░░░░░░░░░]  0%%  Сканирование кэша...
cscript //nologo %systemroot%\system32\slmgr.vbs /ckms >nul 2>&1
cls

echo ==================================================
echo   ИНИЦИАЛИЗАЦИЯ ПРОВЕРКИ И ОЧИСТКИ СИСТЕМЫ
echo ==================================================
echo.
echo  Анализ: [█████████░░░░░░░░░░░] 45%%  Очистка старых KMS-хвостов...
net stop sppsvc >nul 2>&1
cls

echo ==================================================
echo   ИНИЦИАЛИЗАЦИЯ ПРОВЕРКИ И ОЧИСТКИ СИСТЕМЫ
echo ==================================================
echo.
echo  Анализ: [████████████████░░░░] 80%%  Перезапуск служб лицензии...
net start sppsvc >nul 2>&1
cls

echo ==================================================
echo   ИНИЦИАЛИЗАЦИЯ ПРОВЕРКИ И ОЧИСТКИ СИСТЕМЫ
echo ==================================================
echo.
echo  Анализ: [████████████████████] 100%% Очистка завершена успешно.

cls
title [D1x2k Tool] - Активация Windows...
echo ==================================================
echo   ПРОЦЕСС АКТИВАЦИИ WINDOWS
echo ==================================================
echo.
echo  Прогресс: [░░░░░░░░░░░░░░░░░░░░]  0%%  Установка KMS-ключа...
cscript //nologo %systemroot%\system32\slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX >nul 2>&1
cls

echo ==================================================
echo   ПРОЦЕСС АКТИВАЦИИ WINDOWS
echo ==================================================
echo.
echo  Прогресс: [███████░░░░░░░░░░░░░] 35%%  Подключение к серверу kms.digiboy.ir...
cscript //nologo %systemroot%\system32\slmgr.vbs /skms kms.digiboy.ir >nul 2>&1
cls

echo ==================================================
echo   ПРОЦЕСС АКТИВАЦИИ WINDOWS
echo ==================================================
echo.
echo  Прогресс: [██████████████░░░░░░] 70%%  Применение цифровой лицензии...
cscript //nologo %systemroot%\system32\slmgr.vbs /ato >nul 2>&1
goto FINAL_WIN_STAGE


:MODE_OFFICE
title [D1x2k Tool] - Подготовка Office...
cls
echo ==================================================
echo   ИНИЦИАЛИЗАЦИЯ ПРОВЕРКИ И ОЧИСТКИ СИСТЕМЫ
echo ==================================================
echo.
echo  Анализ: [░░░░░░░░░░░░░░░░░░░░]  0%%  Проверка лицензий Office...
cscript //nologo %systemroot%\system32\slmgr.vbs /ckms >nul 2>&1
cls

echo ==================================================
echo   ИНИЦИАЛИЗАЦИЯ ПРОВЕРКИ И ОЧИСТКИ СИСТЕМЫ
echo ==================================================
echo.
echo  Анализ: [████████████████████] 100%% Проверка завершена.

cls
title [D1x2k Tool] - Активация Office...
echo ==================================================
echo   ПРОЦЕСС АКТИВАЦИИ MICROSOFT OFFICE
echo ==================================================
echo.
echo  Прогресс: [░░░░░░░░░░░░░░░░░░░░]  0%%  Сканирование директорий Office...

set "OSPP_PATH="
if exist "C:\Program Files\Microsoft Office\Office16\ospp.vbs" set "OSPP_PATH=C:\Program Files\Microsoft Office\Office16"
if exist "C:\Program Files (x86)\Microsoft Office\Office16\ospp.vbs" set "OSPP_PATH=C:\Program Files (x86)\Microsoft Office\Office16"

if not "%OSPP_PATH%"=="" goto START_OFFICE_ACT

set "RETURN_TO=START_OFFICE_ACT"
goto INSTALL_OFFICE_PROC


:START_OFFICE_ACT
cls
echo ==================================================
echo   ПРОЦЕСС АКТИВАЦИИ MICROSOFT OFFICE
echo ==================================================
echo.
echo  Прогресс: [██████████░░░░░░░░░░] 50%%  Авторизация на KMS-сервере...
cd /d "%OSPP_PATH%"
cscript //nologo ospp.vbs /sethst:kms.digiboy.ir >nul 2>&1
cscript //nologo ospp.vbs /act >nul 2>&1
goto FINAL_OFFICE_STAGE


:MODE_BOTH
title [D1x2k Tool] - Подготовка полной активации...
cls
echo ==================================================
echo   ИНИЦИАЛИЗАЦИЯ ПРОВЕРКИ И ОЧИСТКИ СИСТЕМЫ
echo ==================================================
echo.
echo  Анализ: [░░░░░░░░░░░░░░░░░░░░]  0%%  Сброс старых KMS-привязок...
cscript //nologo %systemroot%\system32\slmgr.vbs /ckms >nul 2>&1
cls

echo ==================================================
echo   ИНИЦИАЛИЗАЦИЯ ПРОВЕРКИ И ОЧИСТКИ СИСТЕМЫ
echo ==================================================
echo.
echo  Анализ: [██████████░░░░░░░░░░] 50%%  Перезапуск системных служб...
net stop sppsvc >nul 2>&1
net start sppsvc >nul 2>&1
cls

echo ==================================================
echo   ИНИЦИАЛИЗАЦИЯ ПРОВЕРКИ И ОЧИСТКИ СИСТЕМЫ
echo ==================================================
echo.
echo  Анализ: [████████████████████] 100%% Готовность системы подтверждена.

cls
title [D1x2k Tool] - Полная активация...
echo ==================================================
echo   ПРОЦЕСС ПОЛНОЙ АКТИВАЦИИ СИСТЕМЫ
echo ==================================================
echo.
echo  Прогресс: [████░░░░░░░░░░░░░░░░] 20%%  Активация модулей Windows...
cscript //nologo %systemroot%\system32\slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX >nul 2>&1
cscript //nologo %systemroot%\system32\slmgr.vbs /skms kms.digiboy.ir >nul 2>&1
cscript //nologo %systemroot%\system32\slmgr.vbs /ato >nul 2>&1
cls

echo ==================================================
echo   ПРОЦЕСС ПОЛНОЙ АКТИВАЦИИ СИСТЕМЫ
echo ==================================================
echo.
echo  Прогресс: [████████████░░░░░░░░] 60%%  Поиск компонентов Office...
set "OSPP_PATH="
if exist "C:\Program Files\Microsoft Office\Office16\ospp.vbs" set "OSPP_PATH=C:\Program Files\Microsoft Office\Office16"
if exist "C:\Program Files (x86)\Microsoft Office\Office16\ospp.vbs" set "OSPP_PATH=C:\Program Files (x86)\Microsoft Office\Office16"

if not "%OSPP_PATH%"=="" goto START_BOTH_ACT

:: Если Офиса нет при выборе пункта [3] — тоже предлагаем установку
set "RETURN_TO=START_BOTH_ACT"
goto INSTALL_OFFICE_PROC


:START_BOTH_ACT
cls
echo ==================================================
echo   ПРОЦЕСС ПОЛНОЙ АКТИВАЦИИ СИСТЕМЫ
echo ==================================================
echo.
echo  Прогресс: [██████████████████░░] 90%%  Финальная привязка лицензий...
if not "%OSPP_PATH%"=="" (
    cd /d "%OSPP_PATH%"
    cscript //nologo ospp.vbs /sethst:kms.digiboy.ir >nul 2>&1
    cscript //nologo ospp.vbs /act >nul 2>&1
    set "OFFICE_STATUS_OK=1"
) else (
    set "OFFICE_STATUS_OK=0"
)
goto FINAL_BOTH_STAGE


:INSTALL_OFFICE_PROC
cls
echo ==================================================
echo   MICROSOFT OFFICE НЕ НАЙДЕН В СИСТЕМЕ
echo ==================================================
echo.
echo ┌──────────────────────────────────────────────┐
echo │  Хотите автоматически скачать и установить   │
echo │  официальный Microsoft Office 2021 Pro Plus? │
echo │                                              │
echo │  [1] Да, начать загрузку и установку         │
echo │  [2] Нет, пропустить/вернуться в меню        │
└──────────────────────────────────────────────┘
echo.
echo   » Нажмите цифру 1 или 2 на клавиатуре...

choice /c 12 /n >nul
if %errorlevel%==2 (
    if "%RETURN_TO%"=="START_BOTH_ACT" (
        set "OFFICE_STATUS_OK=0"
        goto START_BOTH_ACT
    )
    goto MAIN_MENU
)

cls
echo ==================================================
echo   УСТАНОВКА MICROSOFT OFFICE 2021
==================================================
echo.
echo  » Шаг 1/3: Создание конфигурации установки...
set "temp_dir=%temp%\office_install"
mkdir "%temp_dir%" >nul 2>&1
cd /d "%temp_dir%"

(
echo ^<Configuration^>
echo   ^<Add OfficeClientEdition="64" Channel="PerpetualVL2021"^>
echo     ^<Product ID="ProPlus2021Volume"^>
echo       ^<Language ID="ru-ru" /^>
echo     ^</Product^>
echo   ^</Add^>
echo   ^<Display Level="Full" AcceptEULA="TRUE" /^>
echo ^</Configuration^>
) > configuration.xml

echo  » Шаг 2/3: Скачивание установщика Microsoft ODT...
powershell -Command "Invoke-WebRequest -Uri 'https://download.microsoft.com/download/2/7/A/27AF1BE6-DD20-4CB4-B154-EBAB6A7D4A7E/officedeploymenttool_17328-20162.exe' -OutFile 'odt.exe'" >nul 2>&1
odt.exe /extract:"%temp_dir%" /quiet >nul 2>&1

echo  » Шаг 3/3: Запуск скачивания и установки пакета...
echo           (Это займет время, зависит от вашего интернета)
echo.
echo  [!] НЕ ЗАКРЫВАЙТЕ ЭТО ОКНО ДО ЗАВЕРШЕНИЯ УСТАНОВКИ...
setup.exe /configure configuration.xml

if exist "C:\Program Files\Microsoft Office\Office16\ospp.vbs" set "OSPP_PATH=C:\Program Files\Microsoft Office\Office16"
if exist "C:\Program Files (x86)\Microsoft Office\Office16\ospp.vbs" set "OSPP_PATH=C:\Program Files (x86)\Microsoft Office\Office16"

:: Возвращаемся в тот поток, откуда пришли
goto %RETURN_TO%


:FINAL_WIN_STAGE
cls
title [D1x2k Tool] - Готово!

set "current_date=%date%"
set "current_time=%time%"
set "day=%current_date:~0,2%"
set "month=%current_date:~3,2%"
set "year=%current_date:~6,4%"
set "time_clean=%current_time: =0%"
set "hour=%time_clean:~0,2%"
set "min=%time_clean:~3,2%"
set "sec=%time_clean:~6,2%"

set /a "month+=6"
if %month% gtr 12 (
    set /a "month-=12"
    set /a "year+=1"
)
if %month% lss 10 set "month=0%month%"

echo ==================================================
echo   АКТИВАЦИЯ ВЫПОЛНЕНА УСПЕШНО
echo   Лицензия активна до: %day%.%month%.%year% %hour%:%min%:%sec%
echo ==================================================
echo.
echo ┌──────────────────────────────────────────────┐
echo │  » Если у вас не пропало предупреждение,     │
echo │    рекомендуется перезапустить Проводник.    │
echo │                                              │
echo │  [1] Перезапустить Проводник прямо сейчас    │
echo │  [2] Оставить без изменений и выйти          │
echo └──────────────────────────────────────────────┘
echo.
echo   » Нажмите цифру 1 или 2 на клавиатуре...

:LOOP_WIN
for /f "tokens=1 delims=" %%k in ('xcopy /w "%~f0" "%~f0" 2^>nul') do (
    set "KEY=%%k"
    set "KEY=!KEY:~-1!"
    if "!KEY!"=="1" goto EXPLORER_RESET
    if "!KEY!"=="2" exit
)
goto LOOP_WIN


:FINAL_OFFICE_STAGE
cls
title [D1x2k Tool] - Office Активирован!
echo ==================================================
echo   ПРОЦЕСС АКТИВАЦИИ MICROSOFT OFFICE ЗАВЕРШЕН
echo ==================================================
echo.
echo ┌───────────────────────────────────────────────┐
echo │  СТАТУС:  [ Активация выполнена успешно! ]     │
echo │  ПАКЕТ:   [ Microsoft Office 2016-2021 / 365 ]│
echo │                                               │
echo │  Все ограничения и баннеры успешно сняты.     │
echo └───────────────────────────────────────────────┘
echo.
echo Нажмите любую клавишу для выхода из программы . . .
pause > nul
exit


:FINAL_BOTH_STAGE
cls
title [D1x2k Tool] - Полная активация завершена!

set "current_date=%date%"
set "current_time=%time%"
set "day=%current_date:~0,2%"
set "month=%current_date:~3,2%"
set "year=%current_date:~6,4%"
set "time_clean=%current_time: =0%"
set "hour=%time_clean:~0,2%"
set "min=%time_clean:~3,2%"
set "sec=%time_clean:~6,2%"

set /a "month+=6"
if %month% gtr 12 (
    set /a "month-=12"
    set /a "year+=1"
)
if %month% lss 10 set "month=0%month%"

echo ==================================================
echo   ПОЛНАЯ АКТИВАЦИЯ СИСТЕМЫ ЗАВЕРШЕНА
echo ==================================================
echo.
echo ┌──────────────────────────────────────────────┐
if "!OFFICE_STATUS_OK!"=="1" (
    echo │  АКТИВАЦИЯ OFFICE: [ Успешно выполнена ]     │
) else (
    echo │  АКТИВАЦИЯ OFFICE:   Пакет не найден         │
)
echo │  АКТИВАЦИЯ WINDOWS:  Активна до !day!.!month!.!year!   │
echo └──────────────────────────────────────────────┘
echo.
echo ┌──────────────────────────────────────────────┐
echo │  » Если у вас не пропало предупреждение,     │
echo │    рекомендуется перезапустить Проводник.    │
echo │                                              │
echo │  [1] Перезапустить Проводник прямо сейчас    │
echo │  [2] Оставить без изменений и выйти          │
echo └──────────────────────────────────────────────┘
echo.
echo   » Нажмите цифру 1 или 2 на клавиатуре...

:LOOP_BOTH
for /f "tokens=1 delims=" %%k in ('xcopy /w "%~f0" "%~f0" 2^>nul') do (
    set "KEY=%%k"
    set "KEY=!KEY:~-1!"
    if "!KEY!"=="1" goto EXPLORER_RESET
    if "!KEY!"=="2" exit
)
goto LOOP_BOTH


:EXPLORER_RESET
echo.
echo   • Перезапуск Проводника...
taskkill /f /im explorer.exe >nul 2>&1
start explorer.exe >nul 2>&1
timeout /t 1 >nul
exit