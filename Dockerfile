FROM mcr.microsoft.com/vscode/devcontainers/python:3.8

# 必要なパッケージをインストール
RUN apt-get update && apt-get install -y \
    curl \
    git \
    && apt-get clean -y && rm -rf /var/lib/apt/lists/*

# 作業ディレクトリを設定
WORKDIR /workspace