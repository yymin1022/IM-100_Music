.class public Lcom/pantech/multimedia/parser/vendor/DsrakFeedParser;
.super Lcom/pantech/multimedia/parser/FeedParser;
.source "DsrakFeedParser.java"


# static fields
.field private static final RANKING_OREDER:Ljava/lang/String; = "RANKING_ORDER"


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
    const-string v0, "DOSIRAKPARSER"

    iput-object v0, p0, Lcom/pantech/multimedia/parser/vendor/DsrakFeedParser;->LOGTAG:Ljava/lang/String;

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
    const-string v0, "DOSIRAKPARSER"

    iput-object v0, p0, Lcom/pantech/multimedia/parser/vendor/DsrakFeedParser;->LOGTAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private parseByJason(Ljava/io/InputStream;Lcom/pantech/multimedia/data/vendor/DsrakFeedData;)V
    .registers 13
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "yt"    # Lcom/pantech/multimedia/data/vendor/DsrakFeedData;
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
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->getCharSet()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 64
    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 66
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .local v1, "data":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 69
    .local v4, "line":Ljava/lang/String;
    :goto_14
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_50

    .line 73
    new-instance v6, Lorg/json/JSONTokener;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 75
    .local v6, "token":Lorg/json/JSONTokener;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 76
    .local v5, "object":Lorg/json/JSONObject;
    const-string v7, "DOSIRAKPARSER"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pantech/multimedia/common/Util;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 79
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_44
    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_54

    .line 94
    if-eqz p1, :cond_4f

    .line 95
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 96
    :cond_4f
    return-void

    .line 70
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v5    # "object":Lorg/json/JSONObject;
    .end local v6    # "token":Lorg/json/JSONTokener;
    :cond_50
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 80
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v5    # "object":Lorg/json/JSONObject;
    .restart local v6    # "token":Lorg/json/JSONTokener;
    :cond_54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 81
    .local v3, "key":Ljava/lang/String;
    const-string v7, "RESULT"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 82
    invoke-direct {p0, v5, p2}, Lcom/pantech/multimedia/parser/vendor/DsrakFeedParser;->parseResultField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/DsrakFeedData;)V

    goto :goto_44

    .line 83
    :cond_66
    const-string v7, "PAGE_INFO"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_72

    .line 84
    invoke-direct {p0, v5, p2}, Lcom/pantech/multimedia/parser/vendor/DsrakFeedParser;->parsePageinfoField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/DsrakFeedData;)V

    goto :goto_44

    .line 85
    :cond_72
    const-string v7, "SONG_LIST"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    .line 86
    invoke-direct {p0, v5, p2}, Lcom/pantech/multimedia/parser/vendor/DsrakFeedParser;->parseSongListField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/DsrakFeedData;)V

    goto :goto_44

    .line 87
    :cond_7e
    const-string v7, "SONG_LIST2"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8a

    .line 88
    invoke-direct {p0, v5, p2}, Lcom/pantech/multimedia/parser/vendor/DsrakFeedParser;->parseSongList2Field(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/DsrakFeedData;)V

    goto :goto_44

    .line 89
    :cond_8a
    const-string v7, "SERVICE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 90
    invoke-direct {p0, v5, p2}, Lcom/pantech/multimedia/parser/vendor/DsrakFeedParser;->parseServiceField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/DsrakFeedData;)V

    goto :goto_44
.end method

.method private parsePageinfoField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/DsrakFeedData;)V
    .registers 13
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "data"    # Lcom/pantech/multimedia/data/vendor/DsrakFeedData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 99
    const-string v7, "PAGE_INFO"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 100
    .local v3, "object":Lorg/json/JSONObject;
    const-string v7, "DOSIRAKPARSER"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "parseResultField::object = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pantech/multimedia/common/Util;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 103
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-virtual {p2}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v5

    .line 105
    .local v5, "parserMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "PAGE_INFO"

    invoke-virtual {v5, v7}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$PageInfo;

    invoke-virtual {v7}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$PageInfo;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v4

    .line 107
    .local v4, "pageInfoMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_35

    .line 122
    return-void

    .line 108
    :cond_35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 109
    .local v2, "key":Ljava/lang/String;
    const/4 v6, 0x0

    .line 110
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 112
    :try_start_40
    const-string v7, "EUC-KR"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_45
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_40 .. :try_end_45} :catch_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_40 .. :try_end_45} :catch_6d

    move-result-object v6

    .line 119
    :goto_46
    const-string v7, "DOSIRAKPARSER"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "parsePageinfoField::key >> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : value >> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pantech/multimedia/common/Util;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {v4, v2, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 113
    :catch_68
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_46

    .line 115
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_6d
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_46
.end method

.method private parseResultField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/DsrakFeedData;)V
    .registers 13
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "data"    # Lcom/pantech/multimedia/data/vendor/DsrakFeedData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 125
    const-string v7, "RESULT"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 126
    .local v3, "object":Lorg/json/JSONObject;
    const-string v7, "DOSIRAKPARSER"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "parseResultField::object = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pantech/multimedia/common/Util;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 129
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-virtual {p2}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v4

    .line 131
    .local v4, "parserMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "RESULT"

    invoke-virtual {v4, v7}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Result;

    invoke-virtual {v7}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Result;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v5

    .line 133
    .local v5, "resultMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2e
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_35

    .line 151
    return-void

    .line 134
    :cond_35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 135
    .local v2, "key":Ljava/lang/String;
    const/4 v6, 0x0

    .line 136
    .local v6, "value":Ljava/lang/String;
    const-string v7, "CATEGORY"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2e

    .line 139
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 141
    :try_start_48
    const-string v7, "EUC-KR"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_48 .. :try_end_4d} :catch_70
    .catch Ljava/lang/IllegalArgumentException; {:try_start_48 .. :try_end_4d} :catch_75

    move-result-object v6

    .line 147
    :goto_4e
    const-string v7, "DOSIRAKPARSER"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "parseResultField::key >> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : value >> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pantech/multimedia/common/Util;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {v5, v2, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 142
    :catch_70
    move-exception v0

    .line 143
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_4e

    .line 144
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_75
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_4e
.end method

.method private parseServiceField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/DsrakFeedData;)V
    .registers 13
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "data"    # Lcom/pantech/multimedia/data/vendor/DsrakFeedData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 231
    const-string v7, "SERVICE"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 232
    .local v3, "object":Lorg/json/JSONObject;
    const-string v7, "DOSIRAKPARSER"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "parseResultField::object = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pantech/multimedia/common/Util;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 235
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-virtual {p2}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v4

    .line 237
    .local v4, "parserMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "SERVICE"

    invoke-virtual {v4, v7}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Service;

    invoke-virtual {v7}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$Service;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v5

    .line 239
    .local v5, "serviceMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_35

    .line 254
    return-void

    .line 240
    :cond_35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 241
    .local v2, "key":Ljava/lang/String;
    const/4 v6, 0x0

    .line 242
    .local v6, "value":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 244
    :try_start_40
    const-string v7, "EUC-KR"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_45
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_40 .. :try_end_45} :catch_68
    .catch Ljava/lang/IllegalArgumentException; {:try_start_40 .. :try_end_45} :catch_6d

    move-result-object v6

    .line 251
    :goto_46
    const-string v7, "DOSIRAKPARSER"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "parsePageinfoField::key >> "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : value >> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/pantech/multimedia/common/Util;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {v5, v2, v6}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2e

    .line 245
    :catch_68
    move-exception v0

    .line 246
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_46

    .line 247
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_6d
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_46
.end method

.method private parseSongList2Field(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/DsrakFeedData;)V
    .registers 16
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "data"    # Lcom/pantech/multimedia/data/vendor/DsrakFeedData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 198
    const-string v10, "SONG_LIST2"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 199
    .local v4, "object":Lorg/json/JSONObject;
    const-string v10, "DOSIRAKPARSER"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "parseSongList2Field::object = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pantech/multimedia/common/Util;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v10, "SONG"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/json/JSONArray;

    .line 202
    .local v6, "songArray":Lorg/json/JSONArray;
    const-string v10, "DOSIRAKPARSER"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "parseSongList2Field::songArray = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pantech/multimedia/common/Util;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_37
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v1, v10, :cond_3e

    .line 228
    return-void

    .line 205
    :cond_3e
    invoke-virtual {p2}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->createItem()Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;

    move-result-object v5

    .line 206
    .local v5, "song":Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;
    invoke-virtual {v5}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v7

    .line 207
    .local v7, "songMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 208
    .local v8, "songObj":Lorg/json/JSONObject;
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 210
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_4e
    :goto_4e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_5a

    .line 226
    invoke-virtual {p2, v5}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->setAlbumItem(Ljava/lang/Object;)V

    .line 204
    add-int/lit8 v1, v1, 0x1

    goto :goto_37

    .line 211
    :cond_5a
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 212
    .local v3, "key":Ljava/lang/String;
    const/4 v9, 0x0

    .line 213
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v5, v3}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->chkSkipItem(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4e

    .line 214
    invoke-virtual {v8, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 216
    :try_start_6b
    const-string v10, "EUC-KR"

    invoke-static {v9, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_70
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6b .. :try_end_70} :catch_93
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6b .. :try_end_70} :catch_98

    move-result-object v9

    .line 222
    :goto_71
    const-string v10, "DOSIRAKPARSER"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "parseSongList2Field::key >> "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : value >> "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/pantech/multimedia/common/Util;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v7, v3, v9}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4e

    .line 217
    :catch_93
    move-exception v0

    .line 218
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_71

    .line 219
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_98
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_71
.end method

.method private parseSongListField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/DsrakFeedData;)V
    .registers 19
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "data"    # Lcom/pantech/multimedia/data/vendor/DsrakFeedData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 156
    const/4 v2, 0x0

    .line 158
    .local v2, "fSkipItem":Z
    const-string v13, "SONG_LIST"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 159
    .local v6, "object":Lorg/json/JSONObject;
    const-string v13, "DOSIRAKPARSER"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "parseSongListField::object = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pantech/multimedia/common/Util;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v13, "SONG"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/json/JSONArray;

    .line 162
    .local v8, "songArray":Lorg/json/JSONArray;
    const-string v13, "DOSIRAKPARSER"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "parseSongListField::songArray = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pantech/multimedia/common/Util;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3a
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-lt v3, v13, :cond_41

    .line 195
    return-void

    .line 165
    :cond_41
    const/4 v2, 0x0

    .line 166
    invoke-virtual/range {p2 .. p2}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->createItem()Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;

    move-result-object v7

    .line 167
    .local v7, "song":Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;
    invoke-virtual {v7}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v9

    .line 168
    .local v9, "songMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 169
    .local v10, "songObj":Lorg/json/JSONObject;
    invoke-virtual {v10}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 171
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_52
    :goto_52
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_62

    .line 192
    if-nez v2, :cond_5f

    .line 193
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;->setItem(Ljava/lang/Object;)V

    .line 164
    :cond_5f
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 172
    :cond_62
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 173
    .local v5, "key":Ljava/lang/String;
    const/4 v12, 0x0

    .line 174
    .local v12, "value":Ljava/lang/String;
    invoke-virtual {v7, v5}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData$SongList;->chkSkipItem(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_52

    .line 175
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 177
    :try_start_73
    const-string v13, "EUC-KR"

    invoke-static {v12, v13}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_78
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_73 .. :try_end_78} :catch_b4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_73 .. :try_end_78} :catch_b9

    move-result-object v12

    .line 183
    :goto_79
    const-string v13, "RANKING_ORDER"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_92

    if-eqz v12, :cond_92

    .line 184
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 185
    .local v11, "val":I
    const/16 v13, 0x64

    if-gt v11, v13, :cond_91

    if-gtz v11, :cond_92

    .line 186
    :cond_91
    const/4 v2, 0x1

    .line 188
    .end local v11    # "val":I
    :cond_92
    const-string v13, "DOSIRAKPARSER"

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "parseSongListField::key >> "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " : value >> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/pantech/multimedia/common/Util;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v9, v5, v12}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 178
    :catch_b4
    move-exception v1

    .line 179
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_79

    .line 180
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_b9
    move-exception v1

    .line 181
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_79
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
    .line 43
    const/4 v2, 0x0

    .line 45
    .local v2, "yt":Lcom/pantech/multimedia/data/vendor/DsrakFeedData;
    invoke-virtual {p0}, Lcom/pantech/multimedia/parser/vendor/DsrakFeedParser;->setConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 47
    .local v0, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 48
    .local v1, "in":Ljava/io/InputStream;
    if-nez p1, :cond_1c

    .line 49
    new-instance v2, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;

    .end local v2    # "yt":Lcom/pantech/multimedia/data/vendor/DsrakFeedData;
    invoke-direct {v2}, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;-><init>()V

    .line 55
    .restart local v2    # "yt":Lcom/pantech/multimedia/data/vendor/DsrakFeedData;
    :goto_10
    invoke-direct {p0, v1, v2}, Lcom/pantech/multimedia/parser/vendor/DsrakFeedParser;->parseByJason(Ljava/io/InputStream;Lcom/pantech/multimedia/data/vendor/DsrakFeedData;)V

    .line 57
    if-eqz v1, :cond_18

    .line 58
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 60
    :cond_18
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 61
    return-void

    :cond_1c
    move-object v2, p1

    .line 52
    check-cast v2, Lcom/pantech/multimedia/data/vendor/DsrakFeedData;

    goto :goto_10
.end method
