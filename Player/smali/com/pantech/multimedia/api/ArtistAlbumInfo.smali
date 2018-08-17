.class public Lcom/pantech/multimedia/api/ArtistAlbumInfo;
.super Ljava/lang/Object;
.source "ArtistAlbumInfo.java"

# interfaces
.implements Lcom/pantech/multimedia/api/ClientConnectionInterface;


# instance fields
.field private enoughData:Z

.field private mClient:Lcom/pantech/multimedia/client/MultimediaClient;

.field private mVendor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vendor"    # I
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pantech/multimedia/api/ArtistAlbumInfo;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 16
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pantech/multimedia/api/ArtistAlbumInfo;->enoughData:Z

    .line 19
    iput p2, p0, Lcom/pantech/multimedia/api/ArtistAlbumInfo;->mVendor:I

    .line 20
    new-instance v0, Lcom/pantech/multimedia/client/MultimediaClientCreator;

    const/16 v1, 0x10

    invoke-direct {v0, p1, p2, v1}, Lcom/pantech/multimedia/client/MultimediaClientCreator;-><init>(Landroid/content/Context;II)V

    .line 21
    .local v0, "creator":Lcom/pantech/multimedia/client/MultimediaClientCreator;
    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClientCreator;->getClient()Lcom/pantech/multimedia/client/MultimediaClient;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/multimedia/api/ArtistAlbumInfo;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    .line 22
    invoke-virtual {p0, p3}, Lcom/pantech/multimedia/api/ArtistAlbumInfo;->setContentId(Ljava/lang/String;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pantech/multimedia/api/ArtistAlbumInfo;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClient;->getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;

    move-result-object v0

    return-object v0
.end method

.method public request()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 35
    iget v1, p0, Lcom/pantech/multimedia/api/ArtistAlbumInfo;->mVendor:I

    if-nez v1, :cond_6

    .line 39
    :cond_5
    :goto_5
    return v0

    .line 36
    :cond_6
    iget-boolean v1, p0, Lcom/pantech/multimedia/api/ArtistAlbumInfo;->enoughData:Z

    if-eqz v1, :cond_5

    .line 37
    iget-object v0, p0, Lcom/pantech/multimedia/api/ArtistAlbumInfo;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    invoke-virtual {v0}, Lcom/pantech/multimedia/client/MultimediaClient;->request()Z

    move-result v0

    goto :goto_5
.end method

.method public setContentId(Ljava/lang/String;)V
    .registers 3
    .param p1, "contentId"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p1}, Lcom/pantech/multimedia/common/Util;->chkNullString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/multimedia/api/ArtistAlbumInfo;->enoughData:Z

    .line 32
    :goto_9
    return-void

    .line 29
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/multimedia/api/ArtistAlbumInfo;->enoughData:Z

    .line 30
    invoke-virtual {p0}, Lcom/pantech/multimedia/api/ArtistAlbumInfo;->getFeedQueryInstance()Lcom/pantech/multimedia/query/FeedQuery;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pantech/multimedia/query/FeedQuery;->setId(Ljava/lang/String;)V

    goto :goto_9
.end method

.method public setOnResponseListener(Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;)V
    .registers 3
    .param p1, "l"    # Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/pantech/multimedia/api/ArtistAlbumInfo;->mClient:Lcom/pantech/multimedia/client/MultimediaClient;

    invoke-virtual {v0, p1}, Lcom/pantech/multimedia/client/MultimediaClient;->setOnResponseListener(Lcom/pantech/multimedia/client/AbstractMultimediaClient$OnResponseListener;)V

    .line 48
    return-void
.end method
