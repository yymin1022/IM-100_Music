.class public Lcom/pantech/multimedia/parser/FeedParser$AllTrustManager;
.super Ljava/lang/Object;
.source "FeedParser.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/parser/FeedParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AllTrustManager"
.end annotation


# static fields
.field private static final mAccepted:[Ljava/security/cert/X509Certificate;

.field private static mTrustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 173
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    sput-object v0, Lcom/pantech/multimedia/parser/FeedParser$AllTrustManager;->mAccepted:[Ljava/security/cert/X509Certificate;

    .line 170
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowALLSSL()V
    .registers 5

    .prologue
    .line 193
    new-instance v2, Lcom/pantech/multimedia/parser/FeedParser$AllTrustManager$1;

    invoke-direct {v2}, Lcom/pantech/multimedia/parser/FeedParser$AllTrustManager$1;-><init>()V

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 200
    const/4 v1, 0x0

    .line 202
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    sget-object v2, Lcom/pantech/multimedia/parser/FeedParser$AllTrustManager;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    if-nez v2, :cond_1a

    .line 203
    const/4 v2, 0x1

    new-array v2, v2, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    new-instance v4, Lcom/pantech/multimedia/parser/FeedParser$AllTrustManager;

    invoke-direct {v4}, Lcom/pantech/multimedia/parser/FeedParser$AllTrustManager;-><init>()V

    aput-object v4, v2, v3

    sput-object v2, Lcom/pantech/multimedia/parser/FeedParser$AllTrustManager;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    .line 207
    :cond_1a
    :try_start_1a
    const-string v2, "TLS"

    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 208
    const/4 v2, 0x0

    sget-object v3, Lcom/pantech/multimedia/parser/FeedParser$AllTrustManager;->mTrustManagers:[Ljavax/net/ssl/TrustManager;

    new-instance v4, Ljava/security/SecureRandom;

    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_2b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1a .. :try_end_2b} :catch_33
    .catch Ljava/security/KeyManagementException; {:try_start_1a .. :try_end_2b} :catch_38

    .line 215
    :goto_2b
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    invoke-static {v2}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 216
    return-void

    .line 209
    :catch_33
    move-exception v0

    .line 210
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2b

    .line 211
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_38
    move-exception v0

    .line 212
    .local v0, "e":Ljava/security/KeyManagementException;
    invoke-virtual {v0}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_2b
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 179
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 185
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 189
    sget-object v0, Lcom/pantech/multimedia/parser/FeedParser$AllTrustManager;->mAccepted:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method
