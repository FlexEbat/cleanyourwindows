@echo off
set /p disableHibernate="Отключить гибернацию? (y/n): "
if /i "%disableHibernate%"=="y" (
    echo Отключаем гибернацию...
    powercfg -h off
) else (
    echo Пропуск отключения гибернации.
)

set /p enableHibernate="Включить гибернацию? (y/n): "
if /i "%enableHibernate%"=="y" (
    echo Включаем гибернацию...
    powercfg -h on
) else (
    echo Пропуск включения гибернации.
)

echo Операция завершена.
pause