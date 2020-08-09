# Terraformのインストール方法

```
brew install tfenv
tfenv install
```

# ローカルでの実行

```
export TF_VAR_do_token=(DigitalOceanのトークン)
terraform apply
# もしくは
terraform apply -auto-approve
doctl kubernetes cluster kubeconfig save itizen
```
