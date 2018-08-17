.class public Lcom/pantech/multimedia/client/MultimediaClientCreator;
.super Ljava/lang/Object;
.source "MultimediaClientCreator.java"


# instance fields
.field mClientData:Lcom/pantech/multimedia/client/MultimediaClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/pantech/multimedia/client/MultimediaClientCreator;->makeClient(Landroid/content/Context;I)Lcom/pantech/multimedia/client/MultimediaClient;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/multimedia/client/MultimediaClientCreator;->mClientData:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "chartType"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/pantech/multimedia/client/MultimediaClientCreator;->makeClient(Landroid/content/Context;I)Lcom/pantech/multimedia/client/MultimediaClient;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/multimedia/client/MultimediaClientCreator;->mClientData:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 18
    iget-object v0, p0, Lcom/pantech/multimedia/client/MultimediaClientCreator;->mClientData:Lcom/pantech/multimedia/client/MultimediaClient;

    invoke-virtual {v0, p3}, Lcom/pantech/multimedia/client/MultimediaClient;->setQueryType(I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;II)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "chartType"    # I
    .param p4, "keywords"    # Ljava/lang/String;
    .param p5, "category"    # Ljava/lang/String;
    .param p6, "total"    # I
    .param p7, "startIndex"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    .line 22
    invoke-direct/range {v0 .. v6}, Lcom/pantech/multimedia/client/MultimediaClientCreator;->makeClient(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;II)Lcom/pantech/multimedia/client/MultimediaClient;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/multimedia/client/MultimediaClientCreator;->mClientData:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 23
    iget-object v0, p0, Lcom/pantech/multimedia/client/MultimediaClientCreator;->mClientData:Lcom/pantech/multimedia/client/MultimediaClient;

    invoke-virtual {v0, p3}, Lcom/pantech/multimedia/client/MultimediaClient;->setQueryType(I)V

    .line 24
    return-void
.end method

.method private makeClient(Landroid/content/Context;I)Lcom/pantech/multimedia/client/MultimediaClient;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 27
    sparse-switch p2, :sswitch_data_24

    .line 39
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 29
    :sswitch_5
    new-instance v0, Lcom/pantech/multimedia/client/MelOnMultimediaClient;

    invoke-direct {v0, p1, p2}, Lcom/pantech/multimedia/client/MelOnMultimediaClient;-><init>(Landroid/content/Context;I)V

    goto :goto_4

    .line 31
    :sswitch_b
    new-instance v0, Lcom/pantech/multimedia/client/OllehMultimediaClient;

    invoke-direct {v0, p1, p2}, Lcom/pantech/multimedia/client/OllehMultimediaClient;-><init>(Landroid/content/Context;I)V

    goto :goto_4

    .line 33
    :sswitch_11
    new-instance v0, Lcom/pantech/multimedia/client/YouTubeMultimediaClient;

    invoke-direct {v0, p1, p2}, Lcom/pantech/multimedia/client/YouTubeMultimediaClient;-><init>(Landroid/content/Context;I)V

    goto :goto_4

    .line 35
    :sswitch_17
    new-instance v0, Lcom/pantech/multimedia/client/UPlusMultimediaClient;

    invoke-direct {v0, p1, p2}, Lcom/pantech/multimedia/client/UPlusMultimediaClient;-><init>(Landroid/content/Context;I)V

    goto :goto_4

    .line 37
    :sswitch_1d
    new-instance v0, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient;

    invoke-direct {v0, p1, p2}, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient;-><init>(Landroid/content/Context;I)V

    goto :goto_4

    .line 27
    nop

    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_11
        0x1 -> :sswitch_5
        0x2 -> :sswitch_b
        0x64 -> :sswitch_17
        0xc8 -> :sswitch_1d
    .end sparse-switch
.end method

.method private makeClient(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;II)Lcom/pantech/multimedia/client/MultimediaClient;
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "keywords"    # Ljava/lang/String;
    .param p4, "category"    # Ljava/lang/String;
    .param p5, "total"    # I
    .param p6, "startIndex"    # I

    .prologue
    .line 43
    sparse-switch p2, :sswitch_data_42

    .line 55
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 45
    :sswitch_5
    new-instance v0, Lcom/pantech/multimedia/client/MelOnMultimediaClient;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/pantech/multimedia/client/MelOnMultimediaClient;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_4

    .line 47
    :sswitch_11
    new-instance v0, Lcom/pantech/multimedia/client/OllehMultimediaClient;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/pantech/multimedia/client/OllehMultimediaClient;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_4

    .line 49
    :sswitch_1d
    new-instance v0, Lcom/pantech/multimedia/client/YouTubeMultimediaClient;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/pantech/multimedia/client/YouTubeMultimediaClient;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_4

    .line 51
    :sswitch_29
    new-instance v0, Lcom/pantech/multimedia/client/UPlusMultimediaClient;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/pantech/multimedia/client/UPlusMultimediaClient;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_4

    .line 53
    :sswitch_35
    new-instance v0, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/pantech/multimedia/client/CloudLiveMultimediaClient;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_4

    .line 43
    nop

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_1d
        0x1 -> :sswitch_5
        0x2 -> :sswitch_11
        0x64 -> :sswitch_29
        0xc8 -> :sswitch_35
    .end sparse-switch
.end method


# virtual methods
.method public getClient()Lcom/pantech/multimedia/client/MultimediaClient;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/pantech/multimedia/client/MultimediaClientCreator;->mClientData:Lcom/pantech/multimedia/client/MultimediaClient;

    return-object v0
.end method
