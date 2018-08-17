.class Lcom/pantech/app/music/library/activity/ListBaseActivity$3;
.super Ljava/lang/Object;
.source "ListBaseActivity.java"

# interfaces
.implements Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/library/activity/ListBaseActivity;->setBackgroundWithColor(JLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/library/activity/ListBaseActivity;)V
    .registers 2

    .prologue
    .line 350
    iput-object p1, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity$3;->this$0:Lcom/pantech/app/music/library/activity/ListBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlbumArtExtracted(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;)V
    .registers 6
    .param p1, "param"    # Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    .prologue
    .line 353
    if-nez p1, :cond_a

    .line 354
    const-string v2, "ListBaseActivity"

    const-string v3, "RETURN: param = null"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugW(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_9
    :goto_9
    return-void

    .line 356
    :cond_a
    iget-object v2, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inTargetView:Landroid/view/View;

    if-nez v2, :cond_16

    .line 357
    const-string v2, "ListBaseActivity"

    const-string v3, "RETURN: param = null"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 361
    :cond_16
    iget-object v2, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inTargetView:Landroid/view/View;

    const v3, 0x7f1000d2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 362
    .local v0, "blurView":Landroid/widget/ImageView;
    iget-object v2, p1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inTargetView:Landroid/view/View;

    const v3, 0x7f1000d3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 363
    .local v1, "dimView":Landroid/view/View;
    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_39

    .line 364
    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 366
    :cond_39
    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getColorful()Lcom/pantech/app/music/utils/ColorUtils$Colorful;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 367
    invoke-virtual {p1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->getColorful()Lcom/pantech/app/music/utils/ColorUtils$Colorful;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->getBlendingcolor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_9
.end method
