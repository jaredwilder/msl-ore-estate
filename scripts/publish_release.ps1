param(
  [Parameter(Mandatory=$true)][string]$Archive,
  [string]$Tag = "pass6-orev1-2026-09-02"
)
$expected = "2682dca8104a49394d8d8d0105fead721c4d220ebecfb990b0aa7bbc0965abbc"
$actual = (Get-FileHash $Archive -Algorithm SHA256).Hash.ToLower()
if ($actual -ne $expected) { throw "SHA256 mismatch: $actual" }
gh release create $Tag $Archive --repo jaredwilder/msl-ore-estate --title $Tag --notes ""
