.class public Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;
.super Ljava/lang/Object;
.source "AlbumartExtracter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResultInfo"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mSwatch:Landroid/support/v7/graphics/Palette$Swatch;

.field final synthetic this$0:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;)V
    .registers 2

    .prologue
    .line 47
    iput-object p1, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;->this$0:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSwatch()Landroid/support/v7/graphics/Palette$Swatch;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;->mSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 53
    return-void
.end method

.method public setSwatch(Landroid/support/v7/graphics/Palette$Swatch;)V
    .registers 2
    .param p1, "swatch"    # Landroid/support/v7/graphics/Palette$Swatch;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;->mSwatch:Landroid/support/v7/graphics/Palette$Swatch;

    .line 60
    return-void
.end method
