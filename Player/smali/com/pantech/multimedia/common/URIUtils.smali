.class public Lcom/pantech/multimedia/common/URIUtils;
.super Ljava/lang/Object;
.source "URIUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/multimedia/common/URIUtils$URIEncoder;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final WWW_FORM_URL:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 12
    new-instance v0, Ljava/util/BitSet;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lcom/pantech/multimedia/common/URIUtils;->WWW_FORM_URL:Ljava/util/BitSet;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "unescaped"    # Ljava/lang/String;
    .param p1, "allowed"    # Ljava/util/BitSet;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 102
    invoke-static {p0, p2}, Lcom/pantech/multimedia/common/URIUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/pantech/multimedia/common/URIUtils;->encodeUrl(Ljava/util/BitSet;[B)[B

    move-result-object v0

    .line 103
    .local v0, "rawdata":[B
    invoke-static {v0}, Lcom/pantech/multimedia/common/URIUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "unescaped"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 109
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/pantech/multimedia/common/URIUtils;->encodePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "unescaped"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 96
    sget-object v0, Lcom/pantech/multimedia/common/URIUtils$URIEncoder;->allowed_abs_path:Ljava/util/BitSet;

    invoke-static {p0, v0, p1}, Lcom/pantech/multimedia/common/URIUtils;->encode(Ljava/lang/String;Ljava/util/BitSet;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final encodeUrl(Ljava/util/BitSet;[B)[B
    .registers 9
    .param p0, "urlsafe"    # Ljava/util/BitSet;
    .param p1, "bytes"    # [B

    .prologue
    const/16 v6, 0x10

    .line 57
    if-nez p1, :cond_6

    .line 59
    const/4 v5, 0x0

    .line 90
    :goto_5
    return-object v5

    .line 61
    :cond_6
    if-nez p0, :cond_a

    .line 63
    sget-object p0, Lcom/pantech/multimedia/common/URIUtils;->WWW_FORM_URL:Ljava/util/BitSet;

    .line 65
    :cond_a
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 66
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    array-length v5, p1

    if-lt v4, v5, :cond_18

    .line 90
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    goto :goto_5

    .line 68
    :cond_18
    aget-byte v0, p1, v4

    .line 69
    .local v0, "b":I
    if-gez v0, :cond_1e

    .line 71
    add-int/lit16 v0, v0, 0x100

    .line 73
    :cond_1e
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 75
    const/16 v5, 0x20

    if-ne v0, v5, :cond_2a

    .line 77
    const/16 v0, 0x2b

    .line 79
    :cond_2a
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 66
    :goto_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 83
    :cond_30
    const/16 v5, 0x25

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 84
    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    .line 85
    .local v2, "hex1":C
    and-int/lit8 v5, v0, 0xf

    invoke-static {v5, v6}, Ljava/lang/Character;->forDigit(II)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 86
    .local v3, "hex2":C
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 87
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2d
.end method

.method private static getAsciiString([B)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # [B

    .prologue
    .line 36
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/pantech/multimedia/common/URIUtils;->getAsciiString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getAsciiString([BII)Ljava/lang/String;
    .registers 6
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 41
    if-nez p0, :cond_a

    .line 43
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_a
    :try_start_a
    new-instance v1, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v1, p0, p1, p2, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_11} :catch_12

    return-object v1

    .line 49
    :catch_12
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "HttpClient requires ASCII support"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 5
    .param p0, "data"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 16
    if-nez p0, :cond_a

    .line 18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "data may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 20
    :cond_a
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1a

    .line 22
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "charset may not be null or empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_1a
    :try_start_1a
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_1d} :catch_1f

    move-result-object v1

    .line 30
    :goto_1e
    return-object v1

    .line 28
    :catch_1f
    move-exception v0

    .line 30
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_1e
.end method
