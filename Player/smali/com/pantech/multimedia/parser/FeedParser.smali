.class public abstract Lcom/pantech/multimedia/parser/FeedParser;
.super Ljava/lang/Object;
.source "FeedParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/multimedia/parser/FeedParser$AllTrustManager;,
        Lcom/pantech/multimedia/parser/FeedParser$MMClientConnException;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FEEDPARSER"


# instance fields
.field private appContext:Landroid/content/Context;

.field protected mHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryType:I

.field private queryUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/pantech/multimedia/parser/FeedParser;->appContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/pantech/multimedia/parser/FeedParser;->appContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/pantech/multimedia/parser/FeedParser;->queryUrl:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public getQueryType()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/pantech/multimedia/parser/FeedParser;->mQueryType:I

    return v0
.end method

.method public getRequestUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/pantech/multimedia/parser/FeedParser;->queryUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected setConnection()Ljava/net/HttpURLConnection;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pantech/multimedia/parser/FeedParser$MMClientConnException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 130
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/pantech/multimedia/parser/FeedParser;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "queryURL":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 132
    .local v0, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {p0, v0}, Lcom/pantech/multimedia/parser/FeedParser;->setConnectionParams(Ljava/net/HttpURLConnection;)V

    .line 133
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 135
    const/4 v2, 0x0

    .line 136
    .local v2, "statusCode":I
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 139
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_2f

    .line 140
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 141
    new-instance v3, Lcom/pantech/multimedia/parser/FeedParser$MMClientConnException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/pantech/multimedia/parser/FeedParser$MMClientConnException;-><init>(Lcom/pantech/multimedia/parser/FeedParser;Ljava/lang/String;)V

    throw v3

    .line 144
    :cond_2f
    return-object v0
.end method

.method protected setConnectionParams(Ljava/net/HttpURLConnection;)V
    .registers 6
    .param p1, "conn"    # Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    if-nez p1, :cond_3

    .line 107
    :cond_2
    return-void

    .line 91
    :cond_3
    const/16 v1, 0x1130

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 92
    const/16 v1, 0x11f8

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 94
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 95
    const-string v1, "GET"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 97
    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 101
    iget-object v1, p0, Lcom/pantech/multimedia/parser/FeedParser;->mHeaderMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/pantech/multimedia/parser/FeedParser;->mHeaderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 102
    iget-object v1, p0, Lcom/pantech/multimedia/parser/FeedParser;->mHeaderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 103
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37
.end method

.method protected setConnectionParams(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 6
    .param p1, "conn"    # Ljavax/net/ssl/HttpsURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    if-nez p1, :cond_3

    .line 125
    :cond_2
    return-void

    .line 112
    :cond_3
    const/16 v1, 0x1130

    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setConnectTimeout(I)V

    .line 113
    const/16 v1, 0x11f8

    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setReadTimeout(I)V

    .line 114
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setUseCaches(Z)V

    .line 115
    const-string v1, "GET"

    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 116
    const-string v1, "Connection"

    const-string v2, "close"

    invoke-virtual {p1, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljavax/net/ssl/HttpsURLConnection;->setInstanceFollowRedirects(Z)V

    .line 119
    iget-object v1, p0, Lcom/pantech/multimedia/parser/FeedParser;->mHeaderMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/pantech/multimedia/parser/FeedParser;->mHeaderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 120
    iget-object v1, p0, Lcom/pantech/multimedia/parser/FeedParser;->mHeaderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 121
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljavax/net/ssl/HttpsURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37
.end method

.method protected setHttpsConnection()Ljavax/net/ssl/HttpsURLConnection;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pantech/multimedia/parser/FeedParser$MMClientConnException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 149
    invoke-static {}, Lcom/pantech/multimedia/parser/FeedParser$AllTrustManager;->allowALLSSL()V

    .line 152
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/pantech/multimedia/parser/FeedParser;->getRequestUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, "queryURL":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 155
    .local v0, "conn":Ljavax/net/ssl/HttpsURLConnection;
    invoke-virtual {p0, v0}, Lcom/pantech/multimedia/parser/FeedParser;->setConnectionParams(Ljavax/net/ssl/HttpsURLConnection;)V

    .line 156
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->connect()V

    .line 158
    const/4 v2, 0x0

    .line 159
    .local v2, "statusCode":I
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    .line 162
    const/16 v3, 0xc8

    if-eq v2, v3, :cond_32

    .line 163
    invoke-virtual {v0}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 164
    new-instance v3, Lcom/pantech/multimedia/parser/FeedParser$MMClientConnException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/pantech/multimedia/parser/FeedParser$MMClientConnException;-><init>(Lcom/pantech/multimedia/parser/FeedParser;Ljava/lang/String;)V

    throw v3

    .line 167
    :cond_32
    return-object v0
.end method

.method public setQueryType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/pantech/multimedia/parser/FeedParser;->mQueryType:I

    .line 63
    return-void
.end method

.method public setRequestHeaderMap(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/pantech/multimedia/parser/FeedParser;->mHeaderMap:Ljava/util/Map;

    .line 59
    return-void
.end method

.method public setRequestUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/pantech/multimedia/parser/FeedParser;->queryUrl:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public abstract startParser(Lcom/pantech/multimedia/data/FeedData;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Lcom/pantech/multimedia/parser/FeedParser$MMClientConnException;,
            Ljava/net/UnknownHostException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation
.end method
