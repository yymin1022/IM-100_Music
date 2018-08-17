.class Lcom/pantech/app/music/library/ListAdapter$ViewHolder$9;
.super Ljava/lang/Object;
.source "ListAdapter.java"

# interfaces
.implements Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->setTextWithColor(J)V
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
    .line 901
    iput-object p1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$9;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iput-wide p2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$9;->val$albumID:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumArtExtracted(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;)V
    .registers 8
    .param p1, "param"    # Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    .prologue
    .line 904
    iget-wide v2, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$9;->val$albumID:J

    iget-wide v4, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_45

    .line 905
    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getColorful()Lcom/pantech/app/music/utils/ColorUtils$Colorful;

    move-result-object v0

    .line 906
    .local v0, "colorful":Lcom/pantech/app/music/utils/ColorUtils$Colorful;
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$9;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mMainText:Landroid/widget/TextView;

    if-eqz v1, :cond_1f

    if-eqz v0, :cond_1f

    .line 907
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$9;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mMainText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->getPointcolor2()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 909
    :cond_1f
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$9;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mSubText:Landroid/widget/TextView;

    if-eqz v1, :cond_32

    if-eqz v0, :cond_32

    .line 910
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$9;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mSubText:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->getPointcolor2()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 912
    :cond_32
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$9;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mPlayingIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_45

    if-eqz v0, :cond_45

    .line 913
    iget-object v1, p0, Lcom/pantech/app/music/library/ListAdapter$ViewHolder$9;->this$1:Lcom/pantech/app/music/library/ListAdapter$ViewHolder;

    iget-object v1, v1, Lcom/pantech/app/music/library/ListAdapter$ViewHolder;->mPlayingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->getPointcolor2()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 916
    .end local v0    # "colorful":Lcom/pantech/app/music/utils/ColorUtils$Colorful;
    :cond_45
    return-void
.end method
