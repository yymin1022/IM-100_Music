.class public Lcom/pantech/multimedia/parser/vendor/MelonFeedParser;
.super Lcom/pantech/multimedia/parser/FeedParser;
.source "MelonFeedParser.java"


# instance fields
.field private final LOGTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/pantech/multimedia/parser/FeedParser;-><init>(Landroid/content/Context;)V

    .line 30
    const-string v0, "MELONPARSER"

    iput-object v0, p0, Lcom/pantech/multimedia/parser/vendor/MelonFeedParser;->LOGTAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/pantech/multimedia/parser/FeedParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    const-string v0, "MELONPARSER"

    iput-object v0, p0, Lcom/pantech/multimedia/parser/vendor/MelonFeedParser;->LOGTAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private parseByJason(Ljava/io/InputStream;Lcom/pantech/multimedia/data/vendor/MelonFeedData;)V
    .registers 16
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "mfd"    # Lcom/pantech/multimedia/data/vendor/MelonFeedData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Ljava/io/BufferedReader;

    .line 65
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->getCharSet()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, p1, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 64
    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 66
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v1, "data":Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 69
    .local v5, "line":Ljava/lang/String;
    :goto_14
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_54

    .line 73
    const-string v10, "MELONPARSER"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "parseByJason>>"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pantech/multimedia/common/Util;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v7

    .line 76
    .local v7, "parserMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v8, Lorg/json/JSONTokener;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 79
    .local v8, "token":Lorg/json/JSONTokener;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 80
    .local v6, "object":Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 81
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_58

    .line 100
    if-eqz p1, :cond_53

    .line 101
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 102
    :cond_53
    return-void

    .line 70
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v7    # "parserMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "token":Lorg/json/JSONTokener;
    :cond_54
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 82
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v6    # "object":Lorg/json/JSONObject;
    .restart local v7    # "parserMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v8    # "token":Lorg/json/JSONTokener;
    :cond_58
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 83
    .local v4, "key":Ljava/lang/String;
    const-string v10, "CONTENTS"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6a

    .line 84
    invoke-direct {p0, v6, p2}, Lcom/pantech/multimedia/parser/vendor/MelonFeedParser;->parseContentField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/MelonFeedData;)V

    goto :goto_48

    .line 86
    :cond_6a
    const/4 v9, 0x0

    .line 87
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 89
    :try_start_6f
    const-string v10, "EUC-KR"

    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_74
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6f .. :try_end_74} :catch_97
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6f .. :try_end_74} :catch_9c

    move-result-object v9

    .line 95
    :goto_75
    const-string v10, "MELONPARSER"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "parseSongListField::key >> "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : value >> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pantech/multimedia/common/Util;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v7, v4, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    .line 90
    :catch_97
    move-exception v2

    .line 91
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_75

    .line 92
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_9c
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_75
.end method

.method private parseContentField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/MelonFeedData;)V
    .registers 15
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "mfd"    # Lcom/pantech/multimedia/data/vendor/MelonFeedData;

    .prologue
    .line 105
    const-string v9, "CONTENTS"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/json/JSONArray;

    .line 106
    .local v5, "songArray":Lorg/json/JSONArray;
    const-string v9, "MELONPARSER"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "parseContentField::object = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pantech/multimedia/common/Util;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v9, "MELONPARSER"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "parseContentField::songArray = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pantech/multimedia/common/Util;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_31
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v1, v9, :cond_38

    .line 135
    return-void

    .line 111
    :cond_38
    invoke-virtual {p2}, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->createItem()Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;

    move-result-object v4

    .line 112
    .local v4, "song":Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;
    invoke-virtual {v4}, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v6

    .line 113
    .local v6, "songMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 114
    .local v7, "songObj":Lorg/json/JSONObject;
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 116
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_48
    :goto_48
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_54

    .line 133
    invoke-virtual {p2, v4}, Lcom/pantech/multimedia/data/vendor/MelonFeedData;->setItem(Ljava/lang/Object;)V

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 117
    :cond_54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 118
    .local v3, "key":Ljava/lang/String;
    const/4 v8, 0x0

    .line 119
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v4, v3}, Lcom/pantech/multimedia/data/vendor/MelonFeedData$Contents;->chkSkipItem(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_48

    .line 120
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 122
    :try_start_65
    const-string v9, "EUC-KR"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_6a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_65 .. :try_end_6a} :catch_8d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_65 .. :try_end_6a} :catch_92

    move-result-object v8

    .line 128
    :goto_6b
    const-string v9, "MELONPARSER"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "parseContentField::key >> "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : value >> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/pantech/multimedia/common/Util;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v6, v3, v8}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_48

    .line 123
    :catch_8d
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_6b

    .line 125
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_92
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_6b
.end method


# virtual methods
.method public startParser(Lcom/pantech/multimedia/data/FeedData;)V
    .registers 5
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
    .line 44
    const/4 v2, 0x0

    .line 46
    .local v2, "mfd":Lcom/pantech/multimedia/data/vendor/MelonFeedData;
    invoke-virtual {p0}, Lcom/pantech/multimedia/parser/vendor/MelonFeedParser;->setConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 48
    .local v0, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 49
    .local v1, "in":Ljava/io/InputStream;
    if-nez p1, :cond_1c

    .line 50
    new-instance v2, Lcom/pantech/multimedia/data/vendor/MelonFeedData;

    .end local v2    # "mfd":Lcom/pantech/multimedia/data/vendor/MelonFeedData;
    invoke-direct {v2}, Lcom/pantech/multimedia/data/vendor/MelonFeedData;-><init>()V

    .line 54
    .restart local v2    # "mfd":Lcom/pantech/multimedia/data/vendor/MelonFeedData;
    :goto_10
    invoke-direct {p0, v1, v2}, Lcom/pantech/multimedia/parser/vendor/MelonFeedParser;->parseByJason(Ljava/io/InputStream;Lcom/pantech/multimedia/data/vendor/MelonFeedData;)V

    .line 56
    if-eqz v1, :cond_18

    .line 57
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 59
    :cond_18
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 61
    return-void

    :cond_1c
    move-object v2, p1

    .line 52
    check-cast v2, Lcom/pantech/multimedia/data/vendor/MelonFeedData;

    goto :goto_10
.end method
