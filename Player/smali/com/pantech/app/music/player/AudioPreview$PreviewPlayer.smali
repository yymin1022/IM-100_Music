.class Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;
.super Landroid/media/MediaPlayer;
.source "AudioPreview.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/AudioPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewPlayer"
.end annotation


# instance fields
.field mActivity:Lcom/pantech/app/music/player/AudioPreview;

.field mIsPrepared:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1143
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 1145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->mIsPrepared:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/pantech/app/music/player/AudioPreview$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/pantech/app/music/player/AudioPreview$1;

    .prologue
    .line 1143
    invoke-direct {p0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;-><init>()V

    return-void
.end method


# virtual methods
.method isPrepared()Z
    .registers 2

    .prologue
    .line 1180
    iget-boolean v0, p0, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->mIsPrepared:Z

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 1175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->mIsPrepared:Z

    .line 1176
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->mActivity:Lcom/pantech/app/music/player/AudioPreview;

    invoke-virtual {v0, p1}, Lcom/pantech/app/music/player/AudioPreview;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 1177
    return-void
.end method

.method public setActivity(Lcom/pantech/app/music/player/AudioPreview;)V
    .registers 3
    .param p1, "activity"    # Lcom/pantech/app/music/player/AudioPreview;

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->mActivity:Lcom/pantech/app/music/player/AudioPreview;

    .line 1149
    invoke-virtual {p0, p0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 1150
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->mActivity:Lcom/pantech/app/music/player/AudioPreview;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 1151
    iget-object v0, p0, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->mActivity:Lcom/pantech/app/music/player/AudioPreview;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1152
    return-void
.end method

.method public setDataSourceAndPrepare(Landroid/net/Uri;)V
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1156
    :try_start_0
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->mActivity:Lcom/pantech/app/music/player/AudioPreview;

    invoke-virtual {p0, v1, p1}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1157
    invoke-virtual {p0}, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->prepareAsync()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    .line 1168
    :goto_8
    return-void

    .line 1158
    :catch_9
    move-exception v0

    .line 1159
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1165
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->mActivity:Lcom/pantech/app/music/player/AudioPreview;

    iget-object v2, p0, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->mActivity:Lcom/pantech/app/music/player/AudioPreview;

    const v3, 0x7f080097

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/player/AudioPreview;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/player/AudioPreview;->access$1200(Lcom/pantech/app/music/player/AudioPreview;Ljava/lang/String;)V

    .line 1166
    iget-object v1, p0, Lcom/pantech/app/music/player/AudioPreview$PreviewPlayer;->mActivity:Lcom/pantech/app/music/player/AudioPreview;

    iget-object v1, v1, Lcom/pantech/app/music/player/AudioPreview;->mAudioPreviewHandler:Lcom/pantech/app/music/player/AudioPreview$AudioPreviewHandler;

    const/4 v2, 0x1

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Lcom/pantech/app/music/player/AudioPreview$AudioPreviewHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8
.end method
