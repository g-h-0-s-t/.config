Set-Theme Agnoster
Set-PSReadlineOption -EditMode vi

Set-PSReadLineKeyHandler -Chord 'j' -ScriptBlock {
  if ([Microsoft.PowerShell.PSConsoleReadLine]::InViInsertMode()) {
    $key = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    if ($key.Character -eq 'j') {
      [Microsoft.PowerShell.PSConsoleReadLine]::ViCommandMode()
    }
    else {
      [Microsoft.Powershell.PSConsoleReadLine]::Insert('j')
      [Microsoft.Powershell.PSConsoleReadLine]::Insert($key.Character)
    }
  }
}


New-Alias pip pipenv

function rf($arg1) {
 rm -Force -r $arg1
}


function tk($process) {
 taskkill /F /IM $process
}

function st {
 cd C:\Users\User\Documents\Powershell
 vim profile.ps1
}

function ngrok($arg, $port) {
 cd C:\Users\User\Downloads\ngrok-stable-windows-amd64
 ./ngrok $arg $port

}
function p {
 Set-Location C:\Users\User\projects
}

function p1($loc) {
 Set-Location C:\Users\User\projects\rewardbux
 cd ./$loc
}

function p2($loc) {
 Set-Location C:\Users\User\projects\ci\1\handyman-jacek
 if ($loc) {
    cd ./packages/$loc
 }
}

function p3($loc) {
 Set-Location C:\Users\User\projects\card
 if ($loc) {
    cd ./$loc
 }
}

function pipg($arg1, $arg2, $arg3, $arg4) {
  python -m pip $arg1 $arg2 $arg3 $arg4
}

function mongo($arg1, $arg2, $arg3, $arg4) {
 Set-Location "C:\program files\mongodb\server\4.4\bin"
 ./mongo $arg1 $arg2 $arg3 $arg4
}
