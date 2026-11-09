$ErrorActionPreference = 'Stop'

function Assert-Condition([bool]$condition, [string]$message) {
  if (-not $condition) { throw "FAIL: $message" }
  Write-Output "PASS: $message"
}

$catalog = Get-Content -LiteralPath (Join-Path $PSScriptRoot '..\catalog\candidates.json') -Raw | ConvertFrom-Json
$products = @($catalog.products)
Assert-Condition ($products.Count -eq 10) 'catalog contains exactly ten candidate records'
Assert-Condition (($products | Where-Object { $_.status -ne 'candidate' }).Count -eq 0) 'all records remain candidate status'
Assert-Condition (($products | Where-Object { $_.commercial.supplier_cost_brl -ne $null -or $_.commercial.suggested_retail_brl -ne $null -or $_.margin.contribution_brl -ne $null }).Count -eq 0) 'commercial and margin values are not populated'

$ids = @($products | ForEach-Object id)
foreach ($product in $products) {
  Assert-Condition ($product.id -match '^c-\d{2}$') "$($product.id) uses stable candidate ID"
  foreach ($complement in @($product.complements)) {
    Assert-Condition ($ids -contains $complement) "$($product.id) complement $complement exists"
  }
  Assert-Condition ($product.environment.Count -gt 0) "$($product.id) has an environment"
  Assert-Condition ($product.palette.Count -gt 0) "$($product.id) has a palette"
}

Get-ChildItem (Join-Path $PSScriptRoot '..\shopify-theme') -Recurse -File -Filter '*.json' | ForEach-Object {
  Get-Content $_.FullName -Raw | ConvertFrom-Json | Out-Null
  Write-Output "PASS: valid JSON $($_.FullName)"
}

$secretPattern = '(?i)(api[_-]?key|password|secret|private[_-]?key|BEGIN .*PRIVATE KEY|ghp_|sk-)'
$matches = rg -n $secretPattern (Join-Path $PSScriptRoot '..\catalog') (Join-Path $PSScriptRoot '..\automation') (Join-Path $PSScriptRoot '..\shopify-theme') 2>$null
Assert-Condition ([string]::IsNullOrWhiteSpace(($matches -join "`n"))) 'no credential-like patterns in project artifacts'

Write-Output 'PASS: repository validation completed'
