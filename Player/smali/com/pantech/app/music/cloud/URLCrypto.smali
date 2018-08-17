.class public Lcom/pantech/app/music/cloud/URLCrypto;
.super Ljava/lang/Object;
.source "URLCrypto.java"


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final appendHex(Ljava/lang/StringBuffer;B)V
    .registers 5
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .prologue
    .line 153
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 154
    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "seed"    # Ljava/lang/String;
    .param p1, "encrypted"    # Ljava/lang/String;

    .prologue
    .line 49
    const/4 v2, 0x0

    .line 51
    .local v2, "rawKey":[B
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/pantech/app/music/cloud/URLCrypto;->getRawKey([B)[B
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_8} :catch_18

    move-result-object v2

    .line 56
    :goto_9
    invoke-static {p1}, Lcom/pantech/app/music/cloud/URLCrypto;->toByte(Ljava/lang/String;)[B

    move-result-object v1

    .line 57
    .local v1, "enc":[B
    const/4 v3, 0x0

    .line 59
    .local v3, "result":[B
    :try_start_e
    invoke-static {v2, v1}, Lcom/pantech/app/music/cloud/URLCrypto;->decrypt([B[B)[B
    :try_end_11
    .catch Ljava/security/InvalidKeyException; {:try_start_e .. :try_end_11} :catch_1d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_11} :catch_22
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_e .. :try_end_11} :catch_27
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_e .. :try_end_11} :catch_2c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_e .. :try_end_11} :catch_31

    move-result-object v3

    .line 71
    :goto_12
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    return-object v4

    .line 53
    .end local v1    # "enc":[B
    .end local v3    # "result":[B
    :catch_18
    move-exception v0

    .line 54
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_9

    .line 60
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v1    # "enc":[B
    .restart local v3    # "result":[B
    :catch_1d
    move-exception v0

    .line 61
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_12

    .line 62
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_22
    move-exception v0

    .line 63
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_12

    .line 64
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_27
    move-exception v0

    .line 65
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_12

    .line 66
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2c
    move-exception v0

    .line 67
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_12

    .line 68
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_31
    move-exception v0

    .line 69
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_12
.end method

.method private static decrypt([B[B)[B
    .registers 6
    .param p0, "raw"    # [B
    .param p1, "encrypted"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 110
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 111
    .local v2, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 112
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 113
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 114
    .local v1, "decrypted":[B
    return-object v1
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "seed"    # Ljava/lang/String;
    .param p1, "clearText"    # Ljava/lang/String;

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 25
    .local v1, "rawKey":[B
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/pantech/app/music/cloud/URLCrypto;->getRawKey([B)[B
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_8} :catch_17

    move-result-object v1

    .line 30
    :goto_9
    const/4 v2, 0x0

    .line 33
    .local v2, "result":[B
    :try_start_a
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {v1, v3}, Lcom/pantech/app/music/cloud/URLCrypto;->encrypt([B[B)[B
    :try_end_11
    .catch Ljava/security/InvalidKeyException; {:try_start_a .. :try_end_11} :catch_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_11} :catch_21
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_a .. :try_end_11} :catch_26
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_a .. :try_end_11} :catch_2b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_a .. :try_end_11} :catch_30

    move-result-object v2

    .line 45
    :goto_12
    invoke-static {v2}, Lcom/pantech/app/music/cloud/URLCrypto;->toHex([B)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 26
    .end local v2    # "result":[B
    :catch_17
    move-exception v0

    .line 27
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_9

    .line 34
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "result":[B
    :catch_1c
    move-exception v0

    .line 35
    .local v0, "e":Ljava/security/InvalidKeyException;
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_12

    .line 36
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_21
    move-exception v0

    .line 37
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_12

    .line 38
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_26
    move-exception v0

    .line 39
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_12

    .line 40
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2b
    move-exception v0

    .line 41
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_12

    .line 42
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_30
    move-exception v0

    .line 43
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_12
.end method

.method private static encrypt([B[B)[B
    .registers 6
    .param p0, "raw"    # [B
    .param p1, "clear"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 103
    .local v2, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 104
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 105
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 106
    .local v1, "encrypted":[B
    return-object v1
.end method

.method public static fromHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/pantech/app/music/cloud/URLCrypto;->toByte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static getDeviceKey(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "deviceID":Ljava/lang/String;
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 147
    .local v1, "tManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 148
    return-object v0
.end method

.method private static getRawKey([B)[B
    .registers 8
    .param p0, "seed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 75
    const-string v5, "AES"

    invoke-static {v5}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 85
    .local v1, "kgen":Ljavax/crypto/KeyGenerator;
    :try_start_6
    const-string v5, "SHA1PRNG"

    const-string v6, "Crypto"

    invoke-static {v5, v6}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;
    :try_end_d
    .catch Ljava/security/NoSuchProviderException; {:try_start_6 .. :try_end_d} :catch_1f

    move-result-object v4

    .line 94
    .local v4, "sr":Ljava/security/SecureRandom;
    :goto_e
    invoke-virtual {v4, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 95
    const/16 v5, 0x80

    invoke-virtual {v1, v5, v4}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 96
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 97
    .local v3, "skey":Ljavax/crypto/SecretKey;
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 98
    .local v2, "raw":[B
    return-object v2

    .line 88
    .end local v2    # "raw":[B
    .end local v3    # "skey":Ljavax/crypto/SecretKey;
    .end local v4    # "sr":Ljava/security/SecureRandom;
    :catch_1f
    move-exception v0

    .line 90
    .local v0, "e":Ljava/security/NoSuchProviderException;
    const-string v5, "SHA1PRNG"

    invoke-static {v5}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v4

    .line 91
    .restart local v4    # "sr":Ljava/security/SecureRandom;
    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->printStackTrace()V

    goto :goto_e
.end method

.method public static toByte(Ljava/lang/String;)[B
    .registers 6
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 127
    .local v1, "len":I
    new-array v2, v1, [B

    .line 128
    .local v2, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-ge v0, v1, :cond_24

    .line 129
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v2, v0

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 130
    :cond_24
    return-object v2
.end method

.method public static toHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "txt"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/pantech/app/music/cloud/URLCrypto;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .registers 4
    .param p0, "buf"    # [B

    .prologue
    .line 134
    if-nez p0, :cond_5

    .line 135
    const-string v2, ""

    .line 141
    :goto_4
    return-object v2

    .line 137
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 138
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    array-length v2, p0

    if-ge v0, v2, :cond_19

    .line 139
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/pantech/app/music/cloud/URLCrypto;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 141
    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method
