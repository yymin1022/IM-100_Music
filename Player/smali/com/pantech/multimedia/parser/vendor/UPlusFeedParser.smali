.class public Lcom/pantech/multimedia/parser/vendor/UPlusFeedParser;
.super Lcom/pantech/multimedia/parser/FeedParser;
.source "UPlusFeedParser.java"


# instance fields
.field private final LOGTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/pantech/multimedia/parser/FeedParser;-><init>(Landroid/content/Context;)V

    .line 35
    const-string v0, "UPLUSPARSER"

    iput-object v0, p0, Lcom/pantech/multimedia/parser/vendor/UPlusFeedParser;->LOGTAG:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/pantech/multimedia/parser/FeedParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    const-string v0, "UPLUSPARSER"

    iput-object v0, p0, Lcom/pantech/multimedia/parser/vendor/UPlusFeedParser;->LOGTAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private parseByJson(Ljava/io/InputStream;Lcom/pantech/multimedia/data/vendor/UPlusFeedData;)V
    .registers 11
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "mfd"    # Lcom/pantech/multimedia/data/vendor/UPlusFeedData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 100
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, p1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 102
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .local v1, "data":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 105
    .local v2, "line":Ljava/lang/String;
    :goto_12
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_42

    .line 109
    const-string v5, "UPLUSPARSER"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "parseConcatField>>"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/multimedia/common/Util;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    new-instance v4, Lorg/json/JSONTokener;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 114
    .local v4, "token":Lorg/json/JSONTokener;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 115
    .local v3, "object":Lorg/json/JSONObject;
    invoke-direct {p0, v3, p2}, Lcom/pantech/multimedia/parser/vendor/UPlusFeedParser;->parseConcatField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/UPlusFeedData;)V

    .line 116
    return-void

    .line 106
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "token":Lorg/json/JSONTokener;
    :cond_42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12
.end method

.method private parseConcatField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/UPlusFeedData;)V
    .registers 12
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "mfd"    # Lcom/pantech/multimedia/data/vendor/UPlusFeedData;

    .prologue
    .line 119
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 120
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-virtual {p2}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v4

    .line 121
    .local v4, "parserMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_f

    .line 144
    return-void

    .line 122
    :cond_f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 124
    .local v2, "key":Ljava/lang/String;
    const-string v6, "UPLUSPARSER"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "key : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/multimedia/common/Util;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v6, "FILE_LIST"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/pantech/multimedia/parser/vendor/UPlusFeedParser;->parseFileList(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/UPlusFeedData;)V

    goto :goto_8

    .line 128
    :cond_35
    const-string v6, "ParamSet"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 129
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    .line 130
    .local v3, "obj":Lorg/json/JSONObject;
    invoke-direct {p0, v3, p2}, Lcom/pantech/multimedia/parser/vendor/UPlusFeedParser;->parseConcatField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/UPlusFeedData;)V

    goto :goto_8

    .line 133
    .end local v3    # "obj":Lorg/json/JSONObject;
    :cond_47
    const/4 v5, 0x0

    .line 134
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    :try_start_4c
    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_51
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4c .. :try_end_51} :catch_56

    move-result-object v5

    .line 141
    :goto_52
    invoke-virtual {v4, v2, v5}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 138
    :catch_56
    move-exception v0

    .line 139
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_52
.end method

.method private parseFileList(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/UPlusFeedData;)V
    .registers 20
    .param p1, "object"    # Lorg/json/JSONObject;
    .param p2, "mfd"    # Lcom/pantech/multimedia/data/vendor/UPlusFeedData;

    .prologue
    .line 148
    const-string v14, "FILE_LIST"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 149
    .local v11, "obj":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 151
    .local v2, "arraySong":Lorg/json/JSONArray;
    instance-of v14, v11, Ljava/lang/String;

    if-eqz v14, :cond_e

    .line 208
    :cond_d
    return-void

    :cond_e
    move-object v2, v11

    .line 154
    check-cast v2, Lorg/json/JSONArray;

    .line 157
    const-string v14, "UPLUSPARSER"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "arraySong : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/pantech/multimedia/common/Util;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const-string v14, "UPLUSPARSER"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "arraySong.length() : "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/pantech/multimedia/common/Util;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_42
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v6, v14, :cond_d

    .line 162
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 164
    .local v5, "fileObj":Lorg/json/JSONObject;
    if-nez v5, :cond_a9

    .line 166
    invoke-virtual/range {p2 .. p2}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->createMetaItem()Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;

    move-result-object v3

    .line 167
    .local v3, "data":Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;
    invoke-virtual {v3}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v12

    .line 169
    .local v12, "tempMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 170
    .local v1, "array":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 172
    .local v10, "length":I
    const/16 v14, 0xb

    if-ne v10, v14, :cond_6f

    .line 174
    :goto_64
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_65
    if-lt v7, v10, :cond_72

    .line 182
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->setMetaItem(Ljava/lang/Object;)V

    .line 160
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v3    # "data":Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;
    .end local v7    # "index":I
    .end local v10    # "length":I
    :goto_6c
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 172
    .restart local v1    # "array":Lorg/json/JSONArray;
    .restart local v3    # "data":Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;
    .restart local v10    # "length":I
    :cond_6f
    const/16 v10, 0xb

    goto :goto_64

    .line 176
    .restart local v7    # "index":I
    :cond_72
    :try_start_72
    const-string v14, "UPLUSPARSER"

    new-instance v15, Ljava/lang/StringBuilder;

    sget-object v16, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->FILE_META_HEADER:[Ljava/lang/String;

    aget-object v16, v16, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, " : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/pantech/multimedia/common/Util;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    sget-object v14, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->FILE_META_HEADER:[Ljava/lang/String;

    aget-object v14, v14, v7

    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a1
    .catch Lorg/json/JSONException; {:try_start_72 .. :try_end_a1} :catch_a4

    .line 174
    :goto_a1
    add-int/lit8 v7, v7, 0x1

    goto :goto_65

    .line 178
    :catch_a4
    move-exception v4

    .line 179
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_a1

    .line 185
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v3    # "data":Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileMetaInfo;
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v7    # "index":I
    .end local v10    # "length":I
    .end local v12    # "tempMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_a9
    invoke-virtual/range {p2 .. p2}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->createItem()Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;

    move-result-object v3

    .line 186
    .local v3, "data":Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;
    invoke-virtual {v3}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData$FileList;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v12

    .line 188
    .restart local v12    # "tempMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 190
    .local v8, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_b5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_c1

    .line 204
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->setItem(Ljava/lang/Object;)V

    goto :goto_6c

    .line 191
    :cond_c1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 192
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 194
    .local v13, "value":Ljava/lang/String;
    invoke-virtual {v12, v9, v13}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b5
.end method


# virtual methods
.method public startParser(Lcom/pantech/multimedia/data/FeedData;)V
    .registers 9
    .param p1, "fd"    # Lcom/pantech/multimedia/data/FeedData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/pantech/multimedia/parser/FeedParser$MMClientConnException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/16 v6, 0xc8

    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 52
    .local v2, "mfd":Lcom/pantech/multimedia/data/vendor/UPlusFeedData;
    if-nez p1, :cond_3d

    .line 53
    new-instance v2, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;

    .end local v2    # "mfd":Lcom/pantech/multimedia/data/vendor/UPlusFeedData;
    invoke-direct {v2}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;-><init>()V

    .line 57
    .restart local v2    # "mfd":Lcom/pantech/multimedia/data/vendor/UPlusFeedData;
    :goto_b
    invoke-virtual {p0}, Lcom/pantech/multimedia/parser/vendor/UPlusFeedParser;->getQueryType()I

    move-result v4

    const/16 v5, 0x1f4

    if-ne v4, v5, :cond_50

    .line 59
    invoke-virtual {p0}, Lcom/pantech/multimedia/parser/vendor/UPlusFeedParser;->setHttpsConnection()Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 61
    .local v0, "conn":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v3

    .line 63
    .local v3, "statusCode":I
    if-eq v3, v6, :cond_41

    .line 64
    const-string v4, "UPLUSPARSER"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "statusCode : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/multimedia/common/Util;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 72
    :goto_34
    if-eqz v1, :cond_39

    .line 73
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 74
    :cond_39
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 95
    .end local v0    # "conn":Ljavax/net/ssl/HttpsURLConnection;
    .end local v3    # "statusCode":I
    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    move-object v2, p1

    .line 55
    check-cast v2, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;

    goto :goto_b

    .line 67
    .restart local v0    # "conn":Ljavax/net/ssl/HttpsURLConnection;
    .restart local v3    # "statusCode":I
    :cond_41
    const-string v4, "UPLUSPARSER"

    const-string v5, "HttpStatus.SC_OK"

    invoke-static {v4, v5}, Lcom/pantech/multimedia/common/Util;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 69
    invoke-direct {p0, v1, v2}, Lcom/pantech/multimedia/parser/vendor/UPlusFeedParser;->parseByJson(Ljava/io/InputStream;Lcom/pantech/multimedia/data/vendor/UPlusFeedData;)V

    goto :goto_34

    .line 76
    .end local v0    # "conn":Ljavax/net/ssl/HttpsURLConnection;
    .end local v3    # "statusCode":I
    :cond_50
    invoke-virtual {p0}, Lcom/pantech/multimedia/parser/vendor/UPlusFeedParser;->getQueryType()I

    move-result v4

    const/16 v5, 0x1f6

    if-eq v4, v5, :cond_3c

    .line 78
    invoke-virtual {p0}, Lcom/pantech/multimedia/parser/vendor/UPlusFeedParser;->setConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 80
    .local v0, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 82
    .restart local v3    # "statusCode":I
    if-eq v3, v6, :cond_82

    .line 83
    const-string v4, "UPLUSPARSER"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "statusCode : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/multimedia/common/Util;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 91
    :goto_79
    if-eqz v1, :cond_7e

    .line 92
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 93
    :cond_7e
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_3c

    .line 86
    :cond_82
    const-string v4, "UPLUSPARSER"

    const-string v5, "HttpStatus.SC_OK"

    invoke-static {v4, v5}, Lcom/pantech/multimedia/common/Util;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 88
    invoke-direct {p0, v1, v2}, Lcom/pantech/multimedia/parser/vendor/UPlusFeedParser;->parseByJson(Ljava/io/InputStream;Lcom/pantech/multimedia/data/vendor/UPlusFeedData;)V

    goto :goto_79
.end method
