#!/bin/bash

# Script untuk memicu GitHub Actions workflow untuk build dan push image
# Dibuat untuk memenuhi kriteria proyek Dicoding - Deploy Aplikasi dengan Kubernetes

# Set variabel untuk GitHub username dan repository
GITHUB_USERNAME="wahidrizka"
GITHUB_REPO="devops-expert-microservices"

echo "================== Karsajobs UI (Frontend) CI/CD =================="
echo "PENTING: Workflow GitHub Actions ini memerlukan 'GH_PACKAGES_TOKEN'"
echo "Pastikan Anda telah membuat Personal Access Token dengan permission 'write:packages'"
echo "dan menambahkannya sebagai secret di repository dengan nama 'GH_PACKAGES_TOKEN'"
echo ""
echo "Script ini akan memicu GitHub Actions workflow untuk:"
echo "- lint-dockerfile: Menginstal dan menjalankan hadolint"
echo "- build-app-karsajobs-ui: Build dan push image ke GitHub Container Registry"
echo ""
echo "Image akan tersedia di: ghcr.io/${GITHUB_USERNAME}/karsajobs-ui"
echo "=================================================================="

# Buat file kosong untuk memicu GitHub Actions
echo "Memicu GitHub Actions workflow..."
echo "# Auto-triggered build $(date)" > trigger.txt
git add trigger.txt
git commit -m "Trigger GitHub Actions workflow for karsajobs-ui"
git push origin karsajobs-ui

# Tampilkan link ke Actions
echo ""
echo "GitHub Actions workflow telah dipicu!"
echo "Anda dapat memantau progress di:"
echo "https://github.com/${GITHUB_USERNAME}/${GITHUB_REPO}/actions?query=branch%3Akarsajobs-ui"
echo ""
echo "Image akan tersedia di:"
echo "ghcr.io/${GITHUB_USERNAME}/karsajobs-ui:latest"

# Update link.txt
if [ -f "../link.txt" ]; then
  echo "https://ghcr.io/${GITHUB_USERNAME}/karsajobs-ui" >> ../link.txt
else
  echo "https://ghcr.io/${GITHUB_USERNAME}/karsajobs-ui" > ../link.txt
fi