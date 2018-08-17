.class Lcom/pantech/app/music/albumart/AlbumArtExtractor$1;
.super Ljava/lang/Object;
.source "AlbumArtExtractor.java"

# interfaces
.implements Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/albumart/AlbumArtExtractor;->requestAlbumart4LargeView(Landroid/widget/ImageView;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/albumart/AlbumArtExtractor;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/albumart/AlbumArtExtractor;)V
    .registers 2

    .prologue
    .line 275
    iput-object p1, p0, Lcom/pantech/app/music/albumart/AlbumArtExtractor$1;->this$0:Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumArtExtracted(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;)V
    .registers 4
    .param p1, "param"    # Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    .prologue
    .line 278
    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 279
    iget-object v0, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inTargetView:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    .line 280
    .local v0, "largeView":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 282
    .end local v0    # "largeView":Landroid/widget/ImageView;
    :cond_11
    return-void
.end method
