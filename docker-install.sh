echo "paso 1 -------------------------------------------------------------"
sudo apt-get remove docker docker-engine docker.io containerd runc
echo "listo --------------------------------------------------------------"

echo "paso 2 -------------------------------------------------------------"
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg lsb-release
echo "listo --------------------------------------------------------------"


echo "paso 3 -------------------------------------------------------------"
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "listo --------------------------------------------------------------"


echo "paso 4 -------------------------------------------------------------"
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
echo "listo --------------------------------------------------------------"


echo "paso 5 -------------------------------------------------------------"
sudo apt-get update
echo "listo --------------------------------------------------------------"


echo "paso 6 -------------------------------------------------------------"
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
echo "listo --------------------------------------------------------------"

