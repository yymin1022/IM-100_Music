.class public final Lcom/pantech/multimedia/common/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final LOGLEVEL_FILE_NAME:Ljava/lang/String; = "mmdclogger.txt"

.field public static final LOG_TAG:Ljava/lang/String; = "MMDATAClient"

.field private static final MELON_THUMB_ALBUM_URL:Ljava/lang/String; = "http://image.melon.com/cm/album/images/"

.field private static final MELON_THUMB_ARTIST_URL:Ljava/lang/String; = "http://image.melon.com/cm/artist/images/"

.field private static final TYPE_D:I = 0x2

.field private static final TYPE_E:I = 0x5

.field private static final TYPE_I:I = 0x3

.field private static final TYPE_V:I = 0x1

.field private static final TYPE_W:I = 0x4

.field private static final fLogOn:Z

.field private static logLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 78
    const/4 v0, 0x5

    sput v0, Lcom/pantech/multimedia/common/Util;->logLevel:I

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkLogLevel()V
    .registers 7

    .prologue
    .line 124
    sget v6, Lcom/pantech/multimedia/common/Util;->logLevel:I

    if-nez v6, :cond_5

    .line 152
    .local v5, "state":Ljava/lang/String;
    :cond_4
    :goto_4
    return-void

    .line 126
    .end local v5    # "state":Ljava/lang/String;
    :cond_5
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 128
    .restart local v5    # "state":Ljava/lang/String;
    const-string v6, "mounted"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    .line 129
    const-string v6, "mounted_ro"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 134
    :cond_19
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 135
    .local v4, "path":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v6, "mmdclogger.txt"

    invoke-direct {v1, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 137
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 139
    const/4 v2, 0x0

    .line 141
    .local v2, "fos":Ljava/io/InputStream;
    :try_start_2b
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_30} :catch_3b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_30} :catch_40

    .line 142
    .end local v2    # "fos":Ljava/io/InputStream;
    .local v3, "fos":Ljava/io/InputStream;
    :try_start_30
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v6

    sput v6, Lcom/pantech/multimedia/common/Util;->logLevel:I

    .line 143
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_39} :catch_48
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_39} :catch_45

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/InputStream;
    .restart local v2    # "fos":Ljava/io/InputStream;
    goto :goto_4

    .line 145
    :catch_3b
    move-exception v0

    .line 147
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3c
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_4

    .line 148
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_40
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/IOException;
    :goto_41
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 148
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/InputStream;
    .restart local v3    # "fos":Ljava/io/InputStream;
    :catch_45
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/InputStream;
    .restart local v2    # "fos":Ljava/io/InputStream;
    goto :goto_41

    .line 145
    .end local v2    # "fos":Ljava/io/InputStream;
    .restart local v3    # "fos":Ljava/io/InputStream;
    :catch_48
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/InputStream;
    .restart local v2    # "fos":Ljava/io/InputStream;
    goto :goto_3c
.end method

.method public static chkNetworkEnable(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 178
    if-nez p0, :cond_5

    move v2, v3

    .line 199
    :goto_4
    return v2

    .line 181
    :cond_5
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 182
    .local v1, "mConnMgr":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 184
    .local v2, "ret":Z
    if-nez v1, :cond_12

    move v2, v3

    goto :goto_4

    .line 186
    :cond_12
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 187
    .local v0, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_1f

    .line 189
    const/4 v2, 0x1

    .line 191
    :cond_1f
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v3, v4, :cond_2d

    .line 194
    const/4 v2, 0x1

    .line 196
    :cond_2d
    const-string v3, "MMDCUtil"

    const-string v4, "chkNetWorkEnable: any network disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v1, 0x0

    .line 198
    const/4 v0, 0x0

    .line 199
    goto :goto_4
.end method

.method public static chkNullString(Ljava/lang/String;)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 21
    if-nez p0, :cond_4

    .line 26
    :cond_3
    :goto_3
    return v0

    .line 22
    :cond_4
    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v0, :cond_3

    .line 24
    const-string v1, "null"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 26
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/pantech/multimedia/common/Util;->outputLog(Ljava/lang/String;Ljava/lang/String;I)V

    .line 85
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 93
    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lcom/pantech/multimedia/common/Util;->outputLog(Ljava/lang/String;Ljava/lang/String;I)V

    .line 94
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 87
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/pantech/multimedia/common/Util;->outputLog(Ljava/lang/String;Ljava/lang/String;I)V

    .line 88
    return-void
.end method

.method private static makeThumbUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x5

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/16 v5, 0x2f

    .line 166
    const-string v0, "00000000"

    .line 168
    .local v0, "tmp":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v9, :cond_11

    .line 169
    const/4 v2, 0x0

    .line 172
    :goto_10
    return-object v2

    .line 171
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "tmp2":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 174
    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_th.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 172
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_10
.end method

.method public static makeThumbUrlByAlbumID(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://image.melon.com/cm/album/images/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/pantech/multimedia/common/Util;->makeThumbUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeThumbUrlByArtistID(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://image.melon.com/cm/artist/images/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/pantech/multimedia/common/Util;->makeThumbUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static outputLog(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 97
    sget v0, Lcom/pantech/multimedia/common/Util;->logLevel:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 121
    :cond_5
    :goto_5
    return-void

    .line 99
    :cond_6
    packed-switch p2, :pswitch_data_32

    goto :goto_5

    .line 101
    :pswitch_a
    sget v0, Lcom/pantech/multimedia/common/Util;->logLevel:I

    if-le p2, v0, :cond_5

    .line 102
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 105
    :pswitch_12
    sget v0, Lcom/pantech/multimedia/common/Util;->logLevel:I

    if-le p2, v0, :cond_5

    .line 106
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 109
    :pswitch_1a
    sget v0, Lcom/pantech/multimedia/common/Util;->logLevel:I

    if-le p2, v0, :cond_5

    .line 110
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 113
    :pswitch_22
    sget v0, Lcom/pantech/multimedia/common/Util;->logLevel:I

    if-le p2, v0, :cond_5

    .line 114
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 117
    :pswitch_2a
    sget v0, Lcom/pantech/multimedia/common/Util;->logLevel:I

    if-le p2, v0, :cond_5

    .line 118
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 99
    :pswitch_data_32
    .packed-switch 0x1
        :pswitch_a
        :pswitch_12
        :pswitch_1a
        :pswitch_22
        :pswitch_2a
    .end packed-switch
.end method

.method public static removeSpaceAndMakeList(Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 48
    :cond_2
    return-void

    .line 31
    :cond_3
    invoke-static {p0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 33
    const-string v2, ""

    .line 35
    .local v2, "tempStr":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 38
    .local v0, "charArray":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 39
    aget-char v3, v0, v1

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2a

    .line 40
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_27

    .line 41
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    const-string v2, ""

    .line 38
    :cond_27
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 45
    :cond_2a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-char v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_27
.end method

.method public static replaceSpaceToOring(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {p0}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v2, 0x0

    .line 64
    :cond_7
    return-object v2

    .line 53
    :cond_8
    const-string v2, ""

    .line 55
    .local v2, "tempStr":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 58
    .local v0, "charArray":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    array-length v3, v0

    if-ge v1, v3, :cond_7

    .line 59
    aget-char v3, v0, v1

    const/16 v4, 0x20

    if-ne v3, v4, :cond_1f

    .line 60
    const/16 v3, 0x7c

    aput-char v3, v0, v1

    .line 62
    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-char v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_12
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/pantech/multimedia/common/Util;->outputLog(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/pantech/multimedia/common/Util;->outputLog(Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    return-void
.end method
