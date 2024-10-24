XYRSA.exe -key rsa_private_1024.pem rsa_public_1024.pem 2048

XYRSA.exe -otp rsa_public_1024.pem otp

echo tTestTestTestTestTestTestTestTestTestTestTestTestTe>src

XYRSA.exe -PriE rsa_private_1024.pem src dest

type dest

XYRSA.exe -PubD rsa_public_1024.pem dest src1
type src1

pause
