# Windows: RAM ellenőrzés (parancsok Cheatsheet)

## Gyártó + modell (CMD)
`wmic computersystem get manufacturer,model`

## Telepített memóriamodulok (WMIC)
`wmic memorychip get BankLabel, Capacity, Speed, Manufacturer, PartNumber`

## PowerShell részletes (ajánlott)
```powershell
Get-CimInstance -ClassName Win32_PhysicalMemory |
  Format-Table BankLabel, @{Name='GB';Expression={[math]::Round($_.Capacity/1GB,2)}}, Speed, Manufacturer, PartNumber -AutoSize
