.class public Lcom/pantech/app/music/albumart/AlbumArtExtractor$MainUIHandler;
.super Landroid/os/Handler;
.source "AlbumArtExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/albumart/AlbumArtExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainUIHandler"
.end annotation


# static fields
.field static final RESULT_EXTRACT:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/albumart/AlbumArtExtractor;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/albumart/AlbumArtExtractor;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/pantech/app/music/albumart/AlbumArtExtractor$MainUIHandler;->this$0:Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    .line 244
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 245
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 249
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 250
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_18

    .line 258
    :cond_8
    :goto_8
    return-void

    .line 252
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    .line 253
    .local v0, "param":Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;
    iget-object v1, v0, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inListener:Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;

    if-eqz v1, :cond_8

    .line 254
    iget-object v1, v0, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inListener:Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;

    invoke-interface {v1, v0}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;->onAlbumArtExtracted(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;)V

    goto :goto_8

    .line 250
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
