.class Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil$UBoxAlbumartResultType;
.super Ljava/lang/Object;
.source "UBoxAlbumartUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UBoxAlbumartResultType"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mRetrying:Z


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .registers 3
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "retry"    # Z

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput-object p1, p0, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil$UBoxAlbumartResultType;->mBitmap:Landroid/graphics/Bitmap;

    .line 229
    iput-boolean p2, p0, Lcom/pantech/app/music/list/module/albumart/UBoxAlbumartUtil$UBoxAlbumartResultType;->mRetrying:Z

    .line 230
    return-void
.end method
