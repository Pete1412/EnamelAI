$lines = Get-Content index.html
for ($i=0; $i -lt $lines.Length; $i++) {
    if ($lines[$i].Contains('data:image/png;base64')) {
        $lines[$i] = '<img src="data:image/svg+xml,%3Csvg xmlns=\"http://www.w3.org/2000/svg\" viewBox=\"0 0 200 200\"%3E%3Crect width=\"200\" height=\"200\" fill=\"%23c084fc\"/%3E%3Cpath d=\"M30 120 C50 60, 150 60, 170 120 S110 180, 80 130\" stroke=\"%23fff\" stroke-width=\"12\" fill=\"none\"/%3E%3Ctext x=\"100\" y=\"180\" font-family=\"Arial\" font-size=\"28\" fill=\"%23fff\" text-anchor=\"middle\"%3ECaries%3C/text%3E%3C/svg%3E" alt="Logo" style="max-width: 160px; display: block; margin: 0 auto 18px;" />'
        break
    }
}
Set-Content index.html $lines
Write-Output 'done'