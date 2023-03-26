<?php
function minReq($str)
{

    $pattern = "/^(?=(.*[a-z]){3,})(?=(.*[A-Z]){2,})(?=(.*[0-9]){2,})(?=(.*[!@#$%^&*()\-__+.]){1,}).{8,}$/i";

    return preg_match($pattern, $str);
}

function encryptionkey()
{
    return "4D635166546A576E5A7234753778214125442A462D4A614E645267556B58703273357638792F423F4528482B4B6250655368566D597133743677397A24432646294A404E635166546A576E5A7234753778214125442A472D4B6150645367556B58703273357638792F423F4528482B4D6251655468576D597133743677397A24432646294A404E635266556A586E327234753778214125442A472D4B6150645367566B59703373367638792F423F4528482B4D6251655468576D5A7134743777217A24432646294A404E635266556A586E3272357538782F413F442A472D4B6150645367566B59703373367639792442264529482B4D6251655468576D5A7134743777217A25432A462D4A614E645266556A586E3272357538782F413F4428472B4B6250655368566B5970337336763979244226452948404D635166546A576E5A7134743777217A25432A462D4A614E645267556B58703273357538782F413F4428472B4B6250655368566D5971337436773979244226452948404D635166546A576E5A7234753778214125432A462D4A614E645267556B58703273357638792F423F4528472B4B6250655368566D597133743677397A24432646294A404D635166546A576E5A7234753778214125442A472D4B6150645267556B58703273357638792F423F4528482B4D6251655468566D597133743677397A24432646294A";
}
function encryptioniv()
{
    return "556B587032733576";
}

function encryptor($simple_string)
{
    // Store the cipher method
    $ciphering = "AES-128-CTR";

    // Use OpenSSl Encryption method
    $iv_length = openssl_cipher_iv_length($ciphering);
    $options = 0;

    // Non-NULL Initialization Vector for encryption
    $encryption_iv = encryptioniv();

    // Store the encryption key
    $encryption_key = encryptionkey();

    // Use openssl_encrypt() function to encrypt the data
    $encryption = openssl_encrypt(
        $simple_string,
        $ciphering,
        $encryption_key,
        $options,
        $encryption_iv
    );
    return $encryption;
}

function decryptor($encryption)
{
    // Store the cipher method
    $ciphering = "AES-128-CTR";
    $options = 0;

    // Use openssl_decrypt() function to decrypt the data
    $decryption = openssl_decrypt(
        $encryption,
        $ciphering,
        encryptionkey(),
        $options,
        encryptioniv()
    );

    // Display the decrypted string
    return $decryption;
}
