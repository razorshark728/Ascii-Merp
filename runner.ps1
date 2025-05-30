$frames = @(
    "https://raw.githubusercontent.com/razorshark728/Ascii-Merp/blob/main/frame1.txt",
     "https://raw.githubusercontent.com/razorshark728/Ascii-Merp/blob/main/frame2.txt",
      "https://raw.githubusercontent.com/razorshark728/Ascii-Merp/blob/main/frame3.txt",
       "https://raw.githubusercontent.com/razorshark728/Ascii-Merp/blob/main/frame4.txt",
    "https://raw.githubusercontent.com/razorshark728/Ascii-Merp/blob/main/frame5.txt"
    # Add more URLs here
)

while ($true) {
    foreach ($url in $frames) {
        try {
            $frame = Invoke-RestMethod $url
            Write-Host $frame
        } catch {
            Write-Host "Error loading $url"
        }
        Start-Sleep -Milliseconds 100
        Clear-Host
    }
}
