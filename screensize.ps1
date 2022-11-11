$Screens = Get-CimInstance -Namespace root\wmi -ClassName WmiMonitorBasicDisplayParams 

$ScreenSizeD = @()

foreach ($s in $Screens) {
    $cmdiag = [Math]::Sqrt([Math]::Pow($s.MaxHorizontalImageSize,2) + [Math]::Pow($s.MaxVerticalImageSize,2))
    $ScreenSizeD = $cmdiag * 0.3937007874
    $screenName = $s.InstanceName
    echo "Monitor: $screenName has diagonal screen size $ScreenSizeD inches"
}