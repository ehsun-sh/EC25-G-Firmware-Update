XYRSA.exe -key rsa_private_2048.pem rsa_public_2048.pem 2048

XYRSA.exe -otp rsa_public_2048.pem otp

echo tTestTestTestTestTestTestTestTestTestTestTestTestTe>src

XYRSA.exe -PriE rsa_private_2048.pem src dest

type dest

XYRSA.exe -PubD rsa_public_2048.pem dest src1
type src1

pause
