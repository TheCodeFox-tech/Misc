$arg1 = $args[0]
$arg2 = $args[1]

if ("Add" -like $arg1){
    if ("User" -like $arg2){
        reg add HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /t REG_DWORD /v DisableTaskMgr /d 1 /f
    }else{
        Write-Host "Please specify the mode as second argument! (Currently supported: User)"
    }
}elseif ("Remove" -like $arg1){
    if ("User" -like $arg2){
        REG DELETE HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /f
    }else{
        Write-Host "Please specify the mode as second argument! (Currently supported: User)"
    }
}
else{
    Write-Host "Please specify the operation as first argument! (Currently supported: Add, Remove)"
}
