.class Lcom/pantech/multimedia/client/MelOnMultimediaClient$2;
.super Ljava/lang/Object;
.source "MelOnMultimediaClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/multimedia/client/MelOnMultimediaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/multimedia/client/MelOnMultimediaClient;


# direct methods
.method constructor <init>(Lcom/pantech/multimedia/client/MelOnMultimediaClient;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient$2;->this$0:Lcom/pantech/multimedia/client/MelOnMultimediaClient;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 59
    const/4 v1, 0x1

    .line 62
    .local v1, "errorType":I
    :try_start_1
    iget-object v2, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient$2;->this$0:Lcom/pantech/multimedia/client/MelOnMultimediaClient;

    iget-object v2, v2, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->mFeedParser:Lcom/pantech/multimedia/parser/FeedParser;

    if-eqz v2, :cond_12

    .line 63
    iget-object v2, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient$2;->this$0:Lcom/pantech/multimedia/client/MelOnMultimediaClient;

    iget-object v2, v2, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->mFeedParser:Lcom/pantech/multimedia/parser/FeedParser;

    iget-object v3, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient$2;->this$0:Lcom/pantech/multimedia/client/MelOnMultimediaClient;

    iget-object v3, v3, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->mFeedData:Lcom/pantech/multimedia/data/FeedData;

    invoke-virtual {v2, v3}, Lcom/pantech/multimedia/parser/FeedParser;->startParser(Lcom/pantech/multimedia/data/FeedData;)V
    :try_end_12
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_12} :catch_32
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_39
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_12} :catch_40
    .catch Lcom/pantech/multimedia/parser/FeedParser$MMClientConnException; {:try_start_1 .. :try_end_12} :catch_47
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_12} :catch_4e
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_12} :catch_53

    .line 83
    :cond_12
    :goto_12
    iget-object v2, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient$2;->this$0:Lcom/pantech/multimedia/client/MelOnMultimediaClient;

    iget-object v2, v2, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_31

    .line 84
    iget-object v2, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient$2;->this$0:Lcom/pantech/multimedia/client/MelOnMultimediaClient;

    iget-object v2, v2, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 85
    iget-object v2, p0, Lcom/pantech/multimedia/client/MelOnMultimediaClient$2;->this$0:Lcom/pantech/multimedia/client/MelOnMultimediaClient;

    iget-object v2, v2, Lcom/pantech/multimedia/client/MelOnMultimediaClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 88
    :cond_31
    return-void

    .line 64
    :catch_32
    move-exception v0

    .line 65
    .local v0, "e":Ljava/net/UnknownHostException;
    const/16 v1, 0x65

    .line 66
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_12

    .line 67
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :catch_39
    move-exception v0

    .line 68
    .local v0, "e":Ljava/io/IOException;
    const/16 v1, 0x65

    .line 69
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 70
    .end local v0    # "e":Ljava/io/IOException;
    :catch_40
    move-exception v0

    .line 71
    .local v0, "e":Lorg/json/JSONException;
    const/16 v1, 0x66

    .line 72
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_12

    .line 73
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_47
    move-exception v0

    .line 74
    .local v0, "e":Lcom/pantech/multimedia/parser/FeedParser$MMClientConnException;
    const/16 v1, 0x67

    .line 75
    invoke-virtual {v0}, Lcom/pantech/multimedia/parser/FeedParser$MMClientConnException;->printStackTrace()V

    goto :goto_12

    .line 76
    .end local v0    # "e":Lcom/pantech/multimedia/parser/FeedParser$MMClientConnException;
    :catch_4e
    move-exception v0

    .line 78
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_12

    .line 79
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_53
    move-exception v0

    .line 81
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_12
.end method
