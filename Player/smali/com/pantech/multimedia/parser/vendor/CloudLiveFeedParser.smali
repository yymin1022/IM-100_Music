.class public Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser;
.super Lcom/pantech/multimedia/parser/FeedParser;
.source "CloudLiveFeedParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;
    }
.end annotation


# static fields
.field private static final XML_DEBUG:Z


# instance fields
.field private final LOGTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/pantech/multimedia/parser/FeedParser;-><init>(Landroid/content/Context;)V

    .line 38
    const-string v0, "CLOUDLIVEPARSER"

    iput-object v0, p0, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser;->LOGTAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private parseByXML(Ljava/io/InputStream;Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;)V
    .registers 8
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "mfd"    # Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 110
    .local v0, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 111
    .local v2, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    .line 112
    .local v3, "reader":Lorg/xml/sax/XMLReader;
    new-instance v1, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;

    invoke-direct {v1, p0, p2}, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;-><init>(Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser;Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;)V

    .line 113
    .local v1, "handler":Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser$SaxHandler;
    invoke-interface {v3, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 114
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 115
    return-void
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
            Ljava/net/UnknownHostException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "in":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 51
    .local v2, "mfd":Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;
    if-nez p1, :cond_35

    .line 52
    new-instance v2, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;

    .end local v2    # "mfd":Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;
    invoke-direct {v2}, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;-><init>()V

    .line 56
    .restart local v2    # "mfd":Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;
    :goto_9
    invoke-virtual {p0}, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser;->setConnection()Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 58
    .local v0, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 60
    .local v3, "statusCode":I
    const/16 v4, 0xc8

    if-eq v3, v4, :cond_39

    .line 61
    const-string v4, "CLOUDLIVEPARSER"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "BongBong statusCode : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/multimedia/common/Util;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 69
    :goto_2c
    if-eqz v1, :cond_31

    .line 70
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 71
    :cond_31
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 72
    return-void

    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "statusCode":I
    :cond_35
    move-object v2, p1

    .line 54
    check-cast v2, Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;

    goto :goto_9

    .line 64
    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v3    # "statusCode":I
    :cond_39
    const-string v4, "CLOUDLIVEPARSER"

    const-string v5, "BongBong HttpStatus.SC_OK"

    invoke-static {v4, v5}, Lcom/pantech/multimedia/common/Util;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 66
    invoke-direct {p0, v1, v2}, Lcom/pantech/multimedia/parser/vendor/CloudLiveFeedParser;->parseByXML(Ljava/io/InputStream;Lcom/pantech/multimedia/data/vendor/CloudLiveFeedData;)V

    goto :goto_2c
.end method
