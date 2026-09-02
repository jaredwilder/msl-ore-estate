$parts = Get-ChildItem "MSL-ORE-ESTATE-BOOTSTRAP-PASS6.zip.part-*" | Sort-Object Name
$out = "MSL-DAY2-HISTORIC-HAUL-PASS6-CUMULATIVE-OREV1-2026-09-02.zip"
$dest = [System.IO.File]::Create($out)
try { foreach ($p in $parts) { $src=[System.IO.File]::OpenRead($p.FullName); try { $src.CopyTo($dest) } finally { $src.Dispose() } } } finally { $dest.Dispose() }
$h=(Get-FileHash $out -Algorithm SHA256).Hash.ToLower()
if ($h -ne "2682dca8104a49394d8d8d0105fead721c4d220ebecfb990b0aa7bbc0965abbc") { throw "SHA256 mismatch: $h" }
Write-Host "PASS $h"
