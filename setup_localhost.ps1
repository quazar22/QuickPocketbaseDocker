# run docker compose
docker compose up -d

# wait 5 seconds
Start-Sleep -s 5

$headers = New-Object "System.Collections.Generic.Dictionary[[String],[String]]"
$headers.Add("Content-Type", "application/json")

$body = "{
`n    `"email`": `"admin@therandomsgenerator.com`",
`n    `"password`": `"!1td1217GS1!`",
`n    `"passwordConfirm`": `"!1td1217GS1!`"
`n}"

$response = Invoke-RestMethod 'http://localhost:8090/api/admins' -Method 'POST' -Headers $headers -Body $body
$response | ConvertTo-Json

