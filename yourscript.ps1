$maxTabs = 12345678910
$count = 0

Write-Host "Script running. Prepare to die." -ForegroundColor Red

while ($count -lt $maxTabs) {
    if (Get-Process -Name "notepad" -ErrorAction SilentlyContinue) {
        Write-Host "Notepad detected, Yay!" -ForegroundColor Red
        Stop-Process -Name "notepad" -Force -ErrorAction SilentlyContinue
        break
    }

    Start-Process "https://www.youtube.com/watch?v=dQw4w9WgXcQ"
    $count++

    Start-Sleep -Milliseconds 1
}

Write-Host "Made by MegamindSquared. Visit my Github here: https://github.com/jamesisapro/"