.class public Lcom/pantech/multimedia/cloud/CloudCreator;
.super Ljava/lang/Object;
.source "CloudCreator.java"


# instance fields
.field private final CLOUD_TYPE_CLOUDLIVE:I

.field private final CLOUD_TYPE_TCLOUD:I

.field private final CLOUD_TYPE_UPLUSBOX:I

.field private cloudType:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v1, p0, Lcom/pantech/multimedia/cloud/CloudCreator;->CLOUD_TYPE_TCLOUD:I

    .line 8
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/multimedia/cloud/CloudCreator;->CLOUD_TYPE_UPLUSBOX:I

    .line 9
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/multimedia/cloud/CloudCreator;->CLOUD_TYPE_CLOUDLIVE:I

    .line 11
    iput v1, p0, Lcom/pantech/multimedia/cloud/CloudCreator;->cloudType:I

    .line 15
    iput v1, p0, Lcom/pantech/multimedia/cloud/CloudCreator;->cloudType:I

    .line 16
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v1, p0, Lcom/pantech/multimedia/cloud/CloudCreator;->CLOUD_TYPE_TCLOUD:I

    .line 8
    const/4 v0, 0x1

    iput v0, p0, Lcom/pantech/multimedia/cloud/CloudCreator;->CLOUD_TYPE_UPLUSBOX:I

    .line 9
    const/4 v0, 0x2

    iput v0, p0, Lcom/pantech/multimedia/cloud/CloudCreator;->CLOUD_TYPE_CLOUDLIVE:I

    .line 11
    iput v1, p0, Lcom/pantech/multimedia/cloud/CloudCreator;->cloudType:I

    .line 19
    iput p1, p0, Lcom/pantech/multimedia/cloud/CloudCreator;->cloudType:I

    .line 20
    iput-object p2, p0, Lcom/pantech/multimedia/cloud/CloudCreator;->mContext:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public createCloud()Lcom/pantech/multimedia/cloud/CloudClient;
    .registers 3

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 27
    .local v0, "client":Lcom/pantech/multimedia/cloud/CloudClient;
    iget v1, p0, Lcom/pantech/multimedia/cloud/CloudCreator;->cloudType:I

    packed-switch v1, :pswitch_data_20

    .line 39
    :goto_6
    return-object v0

    .line 29
    :pswitch_7
    new-instance v0, Lcom/pantech/multimedia/cloud/Tcloud;

    .end local v0    # "client":Lcom/pantech/multimedia/cloud/CloudClient;
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/CloudCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/pantech/multimedia/cloud/Tcloud;-><init>(Landroid/content/Context;)V

    .line 30
    .restart local v0    # "client":Lcom/pantech/multimedia/cloud/CloudClient;
    goto :goto_6

    .line 32
    :pswitch_f
    new-instance v0, Lcom/pantech/multimedia/cloud/UPlusBox;

    .end local v0    # "client":Lcom/pantech/multimedia/cloud/CloudClient;
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/CloudCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/pantech/multimedia/cloud/UPlusBox;-><init>(Landroid/content/Context;)V

    .line 33
    .restart local v0    # "client":Lcom/pantech/multimedia/cloud/CloudClient;
    goto :goto_6

    .line 35
    :pswitch_17
    new-instance v0, Lcom/pantech/multimedia/cloud/CloudLive;

    .end local v0    # "client":Lcom/pantech/multimedia/cloud/CloudClient;
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/CloudCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/pantech/multimedia/cloud/CloudLive;-><init>(Landroid/content/Context;)V

    .restart local v0    # "client":Lcom/pantech/multimedia/cloud/CloudClient;
    goto :goto_6

    .line 27
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_7
        :pswitch_f
        :pswitch_17
    .end packed-switch
.end method

.method public createCloud(Landroid/content/Context;ZJ)Lcom/pantech/multimedia/cloud/CloudClient;
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "refresh"    # Z
    .param p3, "version"    # J

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "client":Lcom/pantech/multimedia/cloud/CloudClient;
    iget v1, p0, Lcom/pantech/multimedia/cloud/CloudCreator;->cloudType:I

    packed-switch v1, :pswitch_data_20

    .line 58
    :goto_6
    return-object v0

    .line 48
    :pswitch_7
    new-instance v0, Lcom/pantech/multimedia/cloud/Tcloud;

    .end local v0    # "client":Lcom/pantech/multimedia/cloud/CloudClient;
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/CloudCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2, p3, p4}, Lcom/pantech/multimedia/cloud/Tcloud;-><init>(Landroid/content/Context;ZJ)V

    .line 49
    .restart local v0    # "client":Lcom/pantech/multimedia/cloud/CloudClient;
    goto :goto_6

    .line 51
    :pswitch_f
    new-instance v0, Lcom/pantech/multimedia/cloud/UPlusBox;

    .end local v0    # "client":Lcom/pantech/multimedia/cloud/CloudClient;
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/CloudCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/pantech/multimedia/cloud/UPlusBox;-><init>(Landroid/content/Context;)V

    .line 52
    .restart local v0    # "client":Lcom/pantech/multimedia/cloud/CloudClient;
    goto :goto_6

    .line 54
    :pswitch_17
    new-instance v0, Lcom/pantech/multimedia/cloud/CloudLive;

    .end local v0    # "client":Lcom/pantech/multimedia/cloud/CloudClient;
    iget-object v1, p0, Lcom/pantech/multimedia/cloud/CloudCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/pantech/multimedia/cloud/CloudLive;-><init>(Landroid/content/Context;)V

    .restart local v0    # "client":Lcom/pantech/multimedia/cloud/CloudClient;
    goto :goto_6

    .line 46
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_7
        :pswitch_f
        :pswitch_17
    .end packed-switch
.end method
