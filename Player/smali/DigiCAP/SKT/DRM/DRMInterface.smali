.class public LDigiCAP/SKT/DRM/DRMInterface;
.super Ljava/lang/Object;
.source "DRMInterface.java"


# static fields
.field private static loadlib:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 16
    sput-boolean v2, LDigiCAP/SKT/DRM/DRMInterface;->loadlib:Z

    .line 19
    :try_start_3
    const-string v1, "sktdrmsimplejni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 20
    const/4 v1, 0x1

    sput-boolean v1, LDigiCAP/SKT/DRM/DRMInterface;->loadlib:Z
    :try_end_b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_b} :catch_c

    .line 24
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_b
    return-void

    .line 21
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_c
    move-exception v0

    .line 22
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    sput-boolean v2, LDigiCAP/SKT/DRM/DRMInterface;->loadlib:Z

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native DRMCheckDCF([B)Ljava/lang/String;
.end method

.method public native DRMClose(S)S
.end method

.method public native DRMDestroy()V
.end method

.method public native DRMGetErrorCode(S)J
.end method

.method public native DRMGetValidPeriod(S)Ljava/lang/String;
.end method

.method public native DRMInit()S
.end method

.method public native DRMOpen([BI)S
.end method

.method public native DRMSetClientID(Ljava/lang/String;)J
.end method

.method public SKT_DRMCheckDCF(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 63
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 64
    .local v1, "path":[B
    invoke-virtual {p0, v1}, LDigiCAP/SKT/DRM/DRMInterface;->DRMCheckDCF([B)Ljava/lang/String;
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v2

    .line 67
    .end local v1    # "path":[B
    :goto_a
    return-object v2

    .line 65
    :catch_b
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 67
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public SKT_DRMClose(S)S
    .registers 3
    .param p1, "fd"    # S

    .prologue
    .line 49
    invoke-virtual {p0, p1}, LDigiCAP/SKT/DRM/DRMInterface;->DRMClose(S)S

    move-result v0

    return v0
.end method

.method public SKT_DRMDestroy()V
    .registers 1

    .prologue
    .line 35
    invoke-virtual {p0}, LDigiCAP/SKT/DRM/DRMInterface;->DRMDestroy()V

    .line 36
    return-void
.end method

.method public SKT_DRMGetErrorCode(S)J
    .registers 4
    .param p1, "fd"    # S

    .prologue
    .line 53
    invoke-virtual {p0, p1}, LDigiCAP/SKT/DRM/DRMInterface;->DRMGetErrorCode(S)J

    move-result-wide v0

    return-wide v0
.end method

.method public SKT_DRMGetValidPeriod(S)Ljava/lang/String;
    .registers 3
    .param p1, "fd"    # S

    .prologue
    .line 57
    invoke-virtual {p0, p1}, LDigiCAP/SKT/DRM/DRMInterface;->DRMGetValidPeriod(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SKT_DRMInit()S
    .registers 2

    .prologue
    .line 27
    sget-boolean v0, LDigiCAP/SKT/DRM/DRMInterface;->loadlib:Z

    if-eqz v0, :cond_9

    .line 28
    invoke-virtual {p0}, LDigiCAP/SKT/DRM/DRMInterface;->DRMInit()S

    move-result v0

    .line 30
    :goto_8
    return v0

    :cond_9
    const/4 v0, -0x1

    goto :goto_8
.end method

.method public SKT_DRMOpen(Ljava/lang/String;I)S
    .registers 6
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "flag"    # I

    .prologue
    .line 39
    :try_start_0
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 40
    .local v1, "path":[B
    invoke-virtual {p0, v1, p2}, LDigiCAP/SKT/DRM/DRMInterface;->DRMOpen([BI)S
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_9} :catch_b

    move-result v2

    .line 43
    .end local v1    # "path":[B
    :goto_a
    return v2

    .line 41
    :catch_b
    move-exception v0

    .line 42
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 43
    const/4 v2, -0x1

    goto :goto_a
.end method

.method public SKT_DRMSetClientID(Ljava/lang/String;)J
    .registers 4
    .param p1, "clientID"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-virtual {p0, p1}, LDigiCAP/SKT/DRM/DRMInterface;->DRMSetClientID(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method
