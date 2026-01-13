# BabyForever Datapack Build Script
# This script packages the datapack into a distributable ZIP file

Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "  BabyForever Datapack Builder" -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host ""

# Configuration
$datapackName = "BabyForever"
$outputFileName = "BabyForever-v1.1.3.zip"
$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$releaseDir = Join-Path $scriptDir "Release"
$outputPath = Join-Path $releaseDir $outputFileName

# Files and folders to include in the datapack
$includePaths = @(
    "pack.mcmeta",
    "data"
)

Write-Host "[1/3] Validating datapack structure..." -ForegroundColor Yellow

# Check if required files exist
$valid = $true
foreach ($path in $includePaths) {
    $fullPath = Join-Path $scriptDir $path
    if (-not (Test-Path $fullPath)) {
        Write-Host "  ERROR: Missing required file/folder: $path" -ForegroundColor Red
        $valid = $false
    }
    else {
        Write-Host "  [OK] Found: $path" -ForegroundColor Green
    }
}

if (-not $valid) {
    Write-Host ""
    Write-Host "Build failed due to missing files!" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "[2/3] Creating ZIP archive..." -ForegroundColor Yellow

# Create Release folder if it doesn't exist
if (-not (Test-Path $releaseDir)) {
    Write-Host "  • Creating Release folder..." -ForegroundColor Gray
    New-Item -ItemType Directory -Path $releaseDir | Out-Null
}

# Remove old ZIP if exists
if (Test-Path $outputPath) {
    Write-Host "  • Removing old archive..." -ForegroundColor Gray
    Remove-Item $outputPath -Force
}

# Create temporary folder for clean packaging
$tempFolder = Join-Path $env:TEMP "BabyForever_Build"
if (Test-Path $tempFolder) {
    Remove-Item $tempFolder -Recurse -Force
}
New-Item -ItemType Directory -Path $tempFolder | Out-Null

# Copy files to temp folder
foreach ($path in $includePaths) {
    $source = Join-Path $scriptDir $path
    $dest = Join-Path $tempFolder $path
    
    if (Test-Path $source -PathType Container) {
        Copy-Item -Path $source -Destination $dest -Recurse
    }
    else {
        Copy-Item -Path $source -Destination $dest
    }
}

# Create ZIP from temp folder contents
Compress-Archive -Path (Join-Path $tempFolder "*") -DestinationPath $outputPath -Force

# Clean up temp folder
Remove-Item $tempFolder -Recurse -Force

Write-Host "  [OK] Archive created successfully!" -ForegroundColor Green

Write-Host ""
Write-Host "[3/3] Build complete!" -ForegroundColor Yellow

# Get file size
$fileSize = (Get-Item $outputPath).Length
$fileSizeKB = [math]::Round($fileSize / 1KB, 2)

Write-Host ""
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "  Build Summary" -ForegroundColor Cyan
Write-Host "=====================================" -ForegroundColor Cyan
Write-Host "  Output file: $outputFileName" -ForegroundColor White
Write-Host "  File size: $fileSizeKB KB" -ForegroundColor White
Write-Host "  Location: $outputPath" -ForegroundColor White
Write-Host ""
Write-Host "Installation Instructions:" -ForegroundColor Yellow
Write-Host "  1. Copy $outputFileName to:" -ForegroundColor White
Write-Host "     .minecraft/saves/[world_name]/datapacks/" -ForegroundColor Gray
Write-Host "  2. Run /reload in-game" -ForegroundColor White
Write-Host ""
Write-Host "Done!" -ForegroundColor Green
