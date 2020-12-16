New-Alias pip pipenv

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