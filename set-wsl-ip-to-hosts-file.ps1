$CURRENT_IP = ((wsl hostname -I) -split " ")[0]

((Get-Content -path ./hosts -Raw) -replace '\[WSL_ADDRESS\]', $CURRENT_IP | Out-File -FilePath C:\Windows\System32\drivers\etc\hosts)

