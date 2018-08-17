.class Lcom/pantech/app/music/library/ListAdapter$ViewHolder$10;
.super Ljava/lang/Object;
.source "ListAdapter.java"

# interfaces
.implements Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->setAlbumArtWithColor(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

.field final synthetic val$albumID:J


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/ListAdapter$ViewHolder;J)V
    .registers 4

    .prologue
    .line 932
    iput-object p1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$10;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iput-wide p2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$10;->val$albumID:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumArtExtracted(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;)V
    .registers 10
    .param p1, "param"    # Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    .prologue
    .line 935
    iget-wide v4, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$10;->val$albumID:J

    iget-wide v6, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_46

    .line 937
    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getColorful()Lcom/pantech/app/music/utils/ColorUtils$Colorful;

    move-result-object v1

    .line 938
    .local v1, "colorful":Lcom/pantech/app/music/utils/ColorUtils$Colorful;
    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 941
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$10;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iget-object v4, v4, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mAlbumArt:Landroid/widget/ImageView;

    if-eqz v4, :cond_2e

    if-eqz v0, :cond_2e

    .line 942
    iget-object v4, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$10;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iget-object v4, v4, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mInfoHole:Landroid/view/View;

    if-eqz v4, :cond_47

    .line 943
    new-instance v3, Lcom/pantech/app/music/component/RoundDrawable;

    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/pantech/app/music/component/RoundDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 944
    .local v3, "roundDrawable":Lcom/pantech/app/music/component/RoundDrawable;
    iget-object v4, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$10;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iget-object v4, v4, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mAlbumArt:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 951
    .end local v3    # "roundDrawable":Lcom/pantech/app/music/component/RoundDrawable;
    :cond_2e
    :goto_2e
    iget-object v4, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$10;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iget-object v4, v4, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mInfoBackground:Landroid/view/View;

    if-eqz v4, :cond_46

    if-eqz v1, :cond_46

    .line 952
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->getSubcolor()I

    move-result v4

    invoke-direct {v2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 953
    .local v2, "drawable":Landroid/graphics/drawable/ColorDrawable;
    iget-object v4, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$10;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iget-object v4, v4, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mInfoBackground:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 956
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "colorful":Lcom/pantech/app/music/utils/ColorUtils$Colorful;
    .end local v2    # "drawable":Landroid/graphics/drawable/ColorDrawable;
    :cond_46
    return-void

    .line 946
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v1    # "colorful":Lcom/pantech/app/music/utils/ColorUtils$Colorful;
    :cond_47
    iget-object v4, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$10;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iget-object v4, v4, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mAlbumArt:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2e
.end method
