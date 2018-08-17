.class Lcom/pantech/app/music/player/MusicPlaybackActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "MusicPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/player/MusicPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/player/MusicPlaybackActivity;)V
    .registers 2

    .prologue
    .line 263
    iput-object p1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 266
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v1

    if-nez v1, :cond_14

    .line 364
    :cond_13
    :goto_13
    :pswitch_13
    return-void

    .line 270
    :cond_14
    const-string v1, "MusicPlaybackActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "=>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_210

    :cond_34
    :goto_34
    packed-switch v1, :pswitch_data_242

    goto :goto_13

    .line 274
    :pswitch_38
    const-string v1, "MusicPlaybackActivity"

    const-string v5, "case META_CHANGED:"

    invoke-static {v1, v5}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$300(Lcom/pantech/app/music/player/MusicPlaybackActivity;Z)V

    .line 276
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$400(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->updatePlayButton()V

    .line 277
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$400(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->updateNowPlaying()V

    .line 278
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const-wide/16 v6, 0x1

    invoke-static {v1, v6, v7}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$500(Lcom/pantech/app/music/player/MusicPlaybackActivity;J)V

    .line 285
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1, v8, v9}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$602(Lcom/pantech/app/music/player/MusicPlaybackActivity;J)J

    .line 286
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    const-wide/16 v6, -0x1

    invoke-static {v1, v6, v7}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$702(Lcom/pantech/app/music/player/MusicPlaybackActivity;J)J

    .line 287
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1, v8, v9}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$802(Lcom/pantech/app/music/player/MusicPlaybackActivity;J)J

    .line 289
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->notifyDataSetChanged()V

    .line 291
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->isPageMoving()Z

    move-result v1

    if-nez v1, :cond_98

    .line 293
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    move-result-object v1

    iget-object v3, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getQueuePosition()I

    move-result v3

    const-string v5, "metachanged"

    invoke-virtual {v1, v3, v2, v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->setPage(IZLjava/lang/CharSequence;)V

    .line 297
    :cond_98
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v4}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->requestLargeAlbumart(II)V

    goto/16 :goto_13

    .line 271
    :sswitch_a5
    const-string v5, "com.pantech.app.music.metachanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    move v1, v2

    goto :goto_34

    :sswitch_af
    const-string v5, "com.pantech.app.music.safebox.metachanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    move v1, v3

    goto/16 :goto_34

    :sswitch_ba
    const-string v5, "com.pantech.app.music.infochanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    const/4 v1, 0x2

    goto/16 :goto_34

    :sswitch_c5
    const-string v5, "com.pantech.app.music.albumartupdated"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    const/4 v1, 0x3

    goto/16 :goto_34

    :sswitch_d0
    const-string v5, "com.pantech.app.music.drmroerror"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    move v1, v4

    goto/16 :goto_34

    :sswitch_db
    const-string v5, "com.pantech.app.music.safebox.drmroerror"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    const/4 v1, 0x5

    goto/16 :goto_34

    :sswitch_e6
    const-string v5, "com.pantech.app.music.playstatechanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    const/4 v1, 0x6

    goto/16 :goto_34

    :sswitch_f1
    const-string v5, "com.pantech.app.music.safebox.playstatechanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    const/4 v1, 0x7

    goto/16 :goto_34

    :sswitch_fc
    const-string v5, "com.pantech.app.music.queuechanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    const/16 v1, 0x8

    goto/16 :goto_34

    :sswitch_108
    const-string v5, "com.pantech.app.music.safebox.queuechanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    const/16 v1, 0x9

    goto/16 :goto_34

    :sswitch_114
    const-string v5, "com.pantech.app.music.settingchanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    const/16 v1, 0xa

    goto/16 :goto_34

    :sswitch_120
    const-string v5, "com.pantech.app.music.safebox.settingchanged"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    const/16 v1, 0xb

    goto/16 :goto_34

    .line 301
    :pswitch_12c
    const-string v1, "MusicPlaybackActivity"

    const-string v4, "case INFO_CHANGED:"

    invoke-static {v1, v4}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->isPageMoving()Z

    move-result v1

    if-nez v1, :cond_169

    .line 313
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->notifyDataSetChanged()V

    .line 315
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getShuffleMode()I

    move-result v1

    if-ne v1, v3, :cond_170

    .line 316
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    move-result-object v1

    iget-object v4, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v4}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getQueuePosition()I

    move-result v4

    const-string v5, "infochanged"

    invoke-virtual {v1, v4, v2, v5}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->setPage(IZLjava/lang/CharSequence;)V

    .line 325
    :cond_169
    :goto_169
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$300(Lcom/pantech/app/music/player/MusicPlaybackActivity;Z)V

    goto/16 :goto_13

    .line 318
    :cond_170
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->getQueuePosition()I

    move-result v2

    const-string v4, "infochanged"

    invoke-virtual {v1, v2, v3, v4}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->setPage(IZLjava/lang/CharSequence;)V

    goto :goto_169

    .line 333
    :pswitch_186
    const-string v1, "MusicPlaybackActivity"

    const-string v2, "case DRM_RO_ERROR:"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$1000(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 335
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$1100(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$LGUDrmControl;->updateRoData()V

    goto/16 :goto_13

    .line 341
    :pswitch_1a0
    const-string v1, "MusicPlaybackActivity"

    const-string v2, "case PLAYSTATE_CHANGED:"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    iget-object v1, v1, Lcom/pantech/app/music/player/MusicPlaybackActivity;->mPlayItem:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-static {v1}, Lcom/pantech/app/music/utils/ContentUtils;->isStreaming(Lcom/pantech/app/music/list/MusicItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_1c4

    .line 343
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$000(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MusicServiceClient;->duration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->setDuration(J)V

    .line 345
    :cond_1c4
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$400(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->updatePlayButton()V

    .line 346
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$1200(Lcom/pantech/app/music/player/MusicPlaybackActivity;)J

    goto/16 :goto_13

    .line 351
    :pswitch_1d4
    const-string v1, "MusicPlaybackActivity"

    const-string v2, "case QUEUE_CHANGED:"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$900(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$MainLookControl;->notifyDataSetChanged()V

    .line 353
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1, v3}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$300(Lcom/pantech/app/music/player/MusicPlaybackActivity;Z)V

    goto/16 :goto_13

    .line 358
    :pswitch_1eb
    const-string v1, "MusicPlaybackActivity"

    const-string v2, "case SETTING_CHANGED:"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$000(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlaySongControl;->updateRating()V

    .line 360
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$400(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->updateShuffleButton()V

    .line 361
    iget-object v1, p0, Lcom/pantech/app/music/player/MusicPlaybackActivity$5;->this$0:Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-static {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity;->access$400(Lcom/pantech/app/music/player/MusicPlaybackActivity;)Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/player/MusicPlaybackActivity$PlayMenuControl;->updateRepeatButton()V

    goto/16 :goto_13

    .line 271
    nop

    :sswitch_data_210
    .sparse-switch
        -0x7cc90cef -> :sswitch_108
        -0x6b666b3f -> :sswitch_af
        -0x63fb9556 -> :sswitch_d0
        -0x51a1423b -> :sswitch_f1
        -0x441f710b -> :sswitch_e6
        -0x228db7d7 -> :sswitch_c5
        0x1941f57a -> :sswitch_db
        0x37ee5aa2 -> :sswitch_114
        0x3fba56c8 -> :sswitch_ba
        0x5f30dc41 -> :sswitch_fc
        0x6a25c591 -> :sswitch_a5
        0x72c9fd72 -> :sswitch_120
    .end sparse-switch

    :pswitch_data_242
    .packed-switch 0x0
        :pswitch_38
        :pswitch_38
        :pswitch_12c
        :pswitch_13
        :pswitch_186
        :pswitch_186
        :pswitch_1a0
        :pswitch_1a0
        :pswitch_1d4
        :pswitch_1d4
        :pswitch_1eb
        :pswitch_1eb
    .end packed-switch
.end method
