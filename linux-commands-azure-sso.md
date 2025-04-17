
# Azure AD SSO + RBAC Lab – Key Linux Commands

## 1. Connect to Azure VM
ssh azureuser@<public-ip-address>

## 2. Update System & Install NGINX
sudo apt update
sudo apt install nginx -y

## 3. Start & Enable NGINX
sudo systemctl start nginx
sudo systemctl enable nginx

## 4. Configure UFW Firewall for HTTP (Optional)
sudo ufw allow 'Nginx Full'
sudo ufw enable

## 5. Confirm NGINX is Running
curl http://localhost

## 6. Logout of the VM
exit
