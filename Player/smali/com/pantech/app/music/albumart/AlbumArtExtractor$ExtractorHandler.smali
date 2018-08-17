.class public Lcom/pantech/app/music/albumart/AlbumArtExtractor$ExtractorHandler;
.super Landroid/os/Handler;
.source "AlbumArtExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/albumart/AlbumArtExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtractorHandler"
.end annotation


# static fields
.field static final REQUEST_EXTRACT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/albumart/AlbumArtExtractor;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/albumart/AlbumArtExtractor;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/pantech/app/music/albumart/AlbumArtExtractor$ExtractorHandler;->this$0:Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    .line 190
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 191
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 195
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 196
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_82

    .line 238
    :goto_9
    return-void

    .line 198
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    .line 201
    .local v1, "param":Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;
    iget v7, v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    sget v8, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_NO_CACHE:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_1c

    .line 202
    const-string v7, "AlbumArtExtractor"

    const-string v8, "NO CACHE REQUEST handleMessage "

    invoke-static {v7, v8}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :cond_1c
    sget-object v2, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->NORMAL:Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    .line 207
    .local v2, "size":Lcom/pantech/app/music/albumart/AlbumArtCache$Size;
    iget v7, v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    sget v8, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_LARGE_SIZE:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_27

    .line 208
    sget-object v2, Lcom/pantech/app/music/albumart/AlbumArtCache$Size;->LARGE:Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

    .line 212
    :cond_27
    iget v7, v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    sget v8, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_NO_CACHE:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_80

    move v5, v6

    .line 215
    .local v5, "withNoCache":Z
    :goto_2f
    iget-object v7, p0, Lcom/pantech/app/music/albumart/AlbumArtExtractor$ExtractorHandler;->this$0:Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    iget-wide v8, v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    invoke-static {v7, v8, v9, v2, v5}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->access$000(Lcom/pantech/app/music/albumart/AlbumArtExtractor;JLcom/pantech/app/music/albumart/AlbumArtCache$Size;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    .local v0, "albumArt":Landroid/graphics/Bitmap;
    invoke-virtual {v1, v0}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 219
    iget v7, v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    sget v8, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_COLOR_SWATCH:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_59

    .line 220
    iget-wide v8, v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    invoke-static {v8, v9, v0}, Lcom/pantech/app/music/albumart/AlbumArtColor;->generate(JLandroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v3

    .line 221
    .local v3, "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    if-eqz v3, :cond_59

    .line 222
    invoke-virtual {v1, v3}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->setSwatch(Landroid/support/v7/graphics/Palette$Swatch;)V

    .line 223
    invoke-virtual {v3}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v7

    sget-object v8, Lcom/pantech/app/music/utils/ColorUtils$Type;->LIST:Lcom/pantech/app/music/utils/ColorUtils$Type;

    invoke-static {v7, v8}, Lcom/pantech/app/music/utils/ColorUtils;->getColorfulColor(ILcom/pantech/app/music/utils/ColorUtils$Type;)Lcom/pantech/app/music/utils/ColorUtils$Colorful;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->setColorful(Lcom/pantech/app/music/utils/ColorUtils$Colorful;)V

    .line 228
    .end local v3    # "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    :cond_59
    iget v7, v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    sget v8, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_EFFECT_BLUR:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_70

    .line 229
    iget-object v7, p0, Lcom/pantech/app/music/albumart/AlbumArtExtractor$ExtractorHandler;->this$0:Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    iget-object v7, v7, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/pantech/app/music/utils/BitmapUtils;->blur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 230
    invoke-virtual {v1, v0}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 231
    iget-wide v8, v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    invoke-static {v8, v9, v0}, Lcom/pantech/app/music/albumart/AlbumArtCache;->putBlur(JLandroid/graphics/Bitmap;)V

    .line 234
    :cond_70
    iget-object v7, p0, Lcom/pantech/app/music/albumart/AlbumArtExtractor$ExtractorHandler;->this$0:Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    iget-object v7, v7, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->mMainUIHandler:Lcom/pantech/app/music/albumart/AlbumArtExtractor$MainUIHandler;

    invoke-virtual {v7, v6, v1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$MainUIHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 235
    .local v4, "uiMsg":Landroid/os/Message;
    iget-object v6, p0, Lcom/pantech/app/music/albumart/AlbumArtExtractor$ExtractorHandler;->this$0:Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    iget-object v6, v6, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->mMainUIHandler:Lcom/pantech/app/music/albumart/AlbumArtExtractor$MainUIHandler;

    invoke-virtual {v6, v4}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$MainUIHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9

    .line 212
    .end local v0    # "albumArt":Landroid/graphics/Bitmap;
    .end local v4    # "uiMsg":Landroid/os/Message;
    .end local v5    # "withNoCache":Z
    :cond_80
    const/4 v5, 0x0

    goto :goto_2f

    .line 196
    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method
