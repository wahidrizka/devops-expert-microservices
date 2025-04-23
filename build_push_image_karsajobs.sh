#!/bin/bash

# Script untuk memicu GitHub Actions workflow untuk build dan push image
# Dibuat untuk memenuhi kriteria proyek Dicoding - Deploy Aplikasi dengan Kubernetes

# Set variabel untuk GitHub username dan repository
GITHUB_USERNAME="wahidrizka"
GITHUB_REPO="devops-expert-microservices"

echo "================== Karsajobs Backend CI/CD =================="
echo "Script ini akan memicu GitHub Actions workflow untuk:"
echo "- Lint Dockerfile"
echo "- Test aplikasi"
echo "- Build dan push Docker image ke GitHub Packages"
echo ""
echo "Image akan tersedia di: ghcr.io/${GITHUB_USERNAME}/karsajobs"
echo "==========================================================="

# Buat file kosong untuk memicu GitHub Actions
echo "Memicu GitHub Actions workflow..."
echo "# Auto-triggered build $(date)" > trigger.txt
git add trigger.txt
git commit -m "Trigger GitHub Actions workflow for karsajobs"
git push origin karsajobs

# Tampilkan link ke Actions
echo ""
echo "GitHub Actions workflow telah dipicu!"
echo "Anda dapat memantau progress di:"
echo "https://github.com/${GITHUB_USERNAME}/${GITHUB_REPO}/actions?query=branch%3Akarsajobs"
echo ""
echo "Image akan tersedia di:"
echo "ghcr.io/${GITHUB_USERNAME}/karsajobs:latest"

# Update link.txt
echo "https://ghcr.io/${GITHUB_USERNAME}/karsajobs" > ../link.txt