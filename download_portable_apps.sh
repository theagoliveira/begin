#!/usr/bin/env bash

# PDFMERGER (https://github.com/Yanpas/PdfMerger)
wget -O- $(curl 'https://api.github.com/repos/Yanpas/PdfMerger/releases' | jq -r '.[0].assets[].browser_download_url | select(endswith(".jar"))') > "$HOME/Apps/PDFMerger.jar"
