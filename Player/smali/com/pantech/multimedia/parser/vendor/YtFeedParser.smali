.class public Lcom/pantech/multimedia/parser/vendor/YtFeedParser;
.super Lcom/pantech/multimedia/parser/FeedParser;
.source "YtFeedParser.java"


# instance fields
.field private final LOGTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/pantech/multimedia/parser/FeedParser;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "YOUTUBEPARSER"

    iput-object v0, p0, Lcom/pantech/multimedia/parser/vendor/YtFeedParser;->LOGTAG:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/pantech/multimedia/parser/FeedParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    const-string v0, "YOUTUBEPARSER"

    iput-object v0, p0, Lcom/pantech/multimedia/parser/vendor/YtFeedParser;->LOGTAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method private parseByJason(Ljava/io/InputStream;Lcom/pantech/multimedia/data/vendor/YtFeedData;)V
    .registers 11
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "yt"    # Lcom/pantech/multimedia/data/vendor/YtFeedData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Ljava/io/BufferedReader;

    .line 62
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {p2}, Lcom/pantech/multimedia/data/vendor/YtFeedData;->getCharSet()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 61
    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 63
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .local v1, "data":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 66
    .local v2, "line":Ljava/lang/String;
    :goto_14
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_51

    .line 70
    new-instance v4, Lorg/json/JSONTokener;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 73
    .local v4, "token":Lorg/json/JSONTokener;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 74
    .local v3, "object":Lorg/json/JSONObject;
    const-string v5, "YOUTUBEPARSER"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/multimedia/common/Util;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v5, "data"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 77
    invoke-direct {p0, v3, p2}, Lcom/pantech/multimedia/parser/vendor/YtFeedParser;->parseDataField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/YtFeedData;)V

    .line 80
    :cond_4b
    if-eqz p1, :cond_50

    .line 81
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 82
    :cond_50
    return-void

    .line 67
    .end local v3    # "object":Lorg/json/JSONObject;
    .end local v4    # "token":Lorg/json/JSONTokener;
    :cond_51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14
.end method

.method private parseContentField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;)V
    .registers 11
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "item"    # Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;

    .prologue
    .line 149
    const-string v5, "content"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 150
    .local v2, "object":Lorg/json/JSONObject;
    const-string v5, "YOUTUBEPARSER"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "parseContentField::object = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/multimedia/common/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 152
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-virtual {p2}, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->getContent()Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Content;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Content;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v3

    .line 154
    .local v3, "parserMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 160
    return-void

    .line 155
    :cond_2d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 156
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "value":Ljava/lang/String;
    const-string v5, "YOUTUBEPARSER"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "parseContentField::key >> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : value >> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/multimedia/common/Util;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {v3, v1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26
.end method

.method private parseDataField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/YtFeedData;)V
    .registers 11
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "data"    # Lcom/pantech/multimedia/data/vendor/YtFeedData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 86
    const-string v5, "data"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 87
    .local v2, "object":Lorg/json/JSONObject;
    const-string v5, "YOUTUBEPARSER"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "parseDataField::object = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/multimedia/common/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-virtual {p2}, Lcom/pantech/multimedia/data/vendor/YtFeedData;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v3

    .line 91
    .local v3, "parserMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_29

    .line 102
    return-void

    .line 92
    :cond_29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 93
    .local v1, "key":Ljava/lang/String;
    const/4 v4, 0x0

    .line 94
    .local v4, "value":Ljava/lang/String;
    const-string v5, "items"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 95
    invoke-direct {p0, v2, p2}, Lcom/pantech/multimedia/parser/vendor/YtFeedParser;->parseItemField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/YtFeedData;)V

    goto :goto_22

    .line 97
    :cond_3c
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 98
    const-string v5, "YOUTUBEPARSER"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "parseDataField::key >> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : value >> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/multimedia/common/Util;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v3, v1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22
.end method

.method private parseItemField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/YtFeedData;)V
    .registers 14
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "data"    # Lcom/pantech/multimedia/data/vendor/YtFeedData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 105
    const-string v8, "items"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 106
    .local v1, "itemArray":Lorg/json/JSONArray;
    const-string v8, "YOUTUBEPARSER"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "parseItemField::object = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/multimedia/common/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v0, v8, :cond_24

    .line 132
    return-void

    .line 109
    :cond_24
    invoke-virtual {p2}, Lcom/pantech/multimedia/data/vendor/YtFeedData;->createItem()Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;

    move-result-object v3

    .line 110
    .local v3, "items":Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;
    invoke-virtual {v3}, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v2

    .line 111
    .local v2, "itemMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 112
    .local v6, "object":Lorg/json/JSONObject;
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 114
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_34
    :goto_34
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_40

    .line 130
    invoke-virtual {p2, v3}, Lcom/pantech/multimedia/data/vendor/YtFeedData;->setItem(Ljava/lang/Object;)V

    .line 108
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 115
    :cond_40
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 116
    .local v5, "key":Ljava/lang/String;
    const/4 v7, 0x0

    .line 117
    .local v7, "value":Ljava/lang/String;
    const-string v8, "content"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_53

    .line 118
    invoke-direct {p0, v6, v3}, Lcom/pantech/multimedia/parser/vendor/YtFeedParser;->parseContentField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;)V

    goto :goto_34

    .line 119
    :cond_53
    const-string v8, "player"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5f

    .line 120
    invoke-direct {p0, v6, v3}, Lcom/pantech/multimedia/parser/vendor/YtFeedParser;->parsePlayerField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;)V

    goto :goto_34

    .line 121
    :cond_5f
    const-string v8, "thumbnail"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6b

    .line 122
    invoke-direct {p0, v6, v3}, Lcom/pantech/multimedia/parser/vendor/YtFeedParser;->parseThumbField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;)V

    goto :goto_34

    .line 123
    :cond_6b
    invoke-virtual {v3, v5}, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->chkSkipItem(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_34

    .line 124
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 125
    const-string v8, "YOUTUBEPARSER"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "parseItemField::key >> "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " : value >> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/multimedia/common/Util;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v2, v5, v7}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34
.end method

.method private parsePlayerField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;)V
    .registers 11
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "item"    # Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;

    .prologue
    .line 135
    const-string v5, "player"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 136
    .local v2, "object":Lorg/json/JSONObject;
    const-string v5, "YOUTUBEPARSER"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "parsePlayerField::object = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/multimedia/common/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 138
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-virtual {p2}, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->getPlayer()Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Player;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Player;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v3

    .line 140
    .local v3, "parserMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 146
    return-void

    .line 141
    :cond_2d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 142
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 143
    .local v4, "value":Ljava/lang/String;
    const-string v5, "YOUTUBEPARSER"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "parsePlayerField::key >> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : value >> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/multimedia/common/Util;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v3, v1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26
.end method

.method private parseThumbField(Lorg/json/JSONObject;Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;)V
    .registers 11
    .param p1, "obj"    # Lorg/json/JSONObject;
    .param p2, "item"    # Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;

    .prologue
    .line 163
    const-string v5, "thumbnail"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 164
    .local v2, "object":Lorg/json/JSONObject;
    const-string v5, "YOUTUBEPARSER"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "parseThumbField::object = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/multimedia/common/Util;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 166
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-virtual {p2}, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items;->getThumbnail()Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Thumb;

    move-result-object v5

    invoke-virtual {v5}, Lcom/pantech/multimedia/data/vendor/YtFeedData$Items$Thumb;->getParserMap()Ljava/util/WeakHashMap;

    move-result-object v3

    .line 168
    .local v3, "parserMap":Ljava/util/WeakHashMap;, "Ljava/util/WeakHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 174
    return-void

    .line 169
    :cond_2d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 170
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, "value":Ljava/lang/String;
    const-string v5, "YOUTUBEPARSER"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "parseThumbField::key >> "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : value >> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/multimedia/common/Util;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {v3, v1, v4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26
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
    .line 40
    const/4 v2, 0x0

    .line 42
    .local v2, "yt":Lcom/pantech/multimedia/data/vendor/YtFeedData;
    invoke-virtual {p0}, Lcom/pantech/multimedia/parser/vendor/YtFeedParser;->setConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 44
    .local v0, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 45
    .local v1, "in":Ljava/io/InputStream;
    if-nez p1, :cond_1c

    .line 46
    new-instance v2, Lcom/pantech/multimedia/data/vendor/YtFeedData;

    .end local v2    # "yt":Lcom/pantech/multimedia/data/vendor/YtFeedData;
    invoke-direct {v2}, Lcom/pantech/multimedia/data/vendor/YtFeedData;-><init>()V

    .line 51
    .restart local v2    # "yt":Lcom/pantech/multimedia/data/vendor/YtFeedData;
    :goto_10
    invoke-direct {p0, v1, v2}, Lcom/pantech/multimedia/parser/vendor/YtFeedParser;->parseByJason(Ljava/io/InputStream;Lcom/pantech/multimedia/data/vendor/YtFeedData;)V

    .line 53
    if-eqz v1, :cond_18

    .line 54
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 56
    :cond_18
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 57
    return-void

    :cond_1c
    move-object v2, p1

    .line 48
    check-cast v2, Lcom/pantech/multimedia/data/vendor/YtFeedData;

    goto :goto_10
.end method
