wmic volume get "caption"|% {$path="$($_.TrimEnd())\Boot\bcd";if(Test-Path $path){ bcdedit /store $path|? {$_ -match "identifier\s+(.*-.*)"}|%{bcdedit /store $path /default "$($matches[1].ToString())"}; break}}
















































































































