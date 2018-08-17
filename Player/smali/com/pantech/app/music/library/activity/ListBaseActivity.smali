.class public abstract Lcom/pantech/app/music/library/activity/ListBaseActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ListBaseActivity.java"

# interfaces
.implements Lcom/pantech/app/music/library/IListActivity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/library/activity/ListBaseActivity$ListHandler;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_PERMISSION:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "ListBaseActivity"


# instance fields
.field final MSG_BIND_TO_MUSIC_SERVICE:I

.field private bStatusRegistered:Z

.field mListHandler:Lcom/pantech/app/music/library/activity/ListBaseActivity$ListHandler;

.field protected mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

.field mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

.field mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

.field private mStatusListener:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 47
    const/16 v0, 0x64

    iput v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->MSG_BIND_TO_MUSIC_SERVICE:I

    .line 57
    new-instance v0, Lcom/pantech/app/music/library/activity/ListBaseActivity$ListHandler;

    invoke-direct {v0, p0, p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity$ListHandler;-><init>(Lcom/pantech/app/music/library/activity/ListBaseActivity;Lcom/pantech/app/music/library/activity/ListBaseActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mListHandler:Lcom/pantech/app/music/library/activity/ListBaseActivity$ListHandler;

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->bStatusRegistered:Z

    .line 373
    new-instance v0, Lcom/pantech/app/music/library/activity/ListBaseActivity$4;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity$4;-><init>(Lcom/pantech/app/music/library/activity/ListBaseActivity;)V

    iput-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private attachMiniPlayer(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f1000d6

    .line 291
    invoke-virtual {p0, v6}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 293
    .local v1, "miniPlayerView":Landroid/view/View;
    if-nez v1, :cond_a

    .line 339
    :cond_9
    :goto_9
    return-void

    .line 299
    :cond_a
    const-string v3, "ListBaseActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attachMiniPlayer - savedInstanceState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "ListMiniPlayer"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 306
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_4f

    .line 310
    const-string v3, "ListBaseActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Find MiniPlayer fragment! getActivity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    if-nez p1, :cond_4f

    .line 313
    const-string v3, "ListBaseActivity"

    const-string v4, "fragment != null && savedInstanceState == null"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    :cond_4f
    if-nez p1, :cond_86

    .line 318
    if-nez v0, :cond_75

    .line 319
    const-string v3, "ListBaseActivity"

    const-string v4, "fragment = null && savedInstanceState = null -> fragment \uc0dd\uc131!"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-class v3, Lcom/pantech/app/music/library/ListMiniPlayer;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    .line 321
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 322
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    const-string v3, "ListMiniPlayer"

    invoke-virtual {v2, v6, v0, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 323
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 330
    .end local v2    # "transaction":Landroid/app/FragmentTransaction;
    :cond_75
    :goto_75
    if-eqz v0, :cond_9

    .line 331
    check-cast v0, Lcom/pantech/app/music/library/IListMiniPlayer;

    .end local v0    # "fragment":Landroid/app/Fragment;
    iput-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    .line 332
    iget-object v3, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    new-instance v4, Lcom/pantech/app/music/library/activity/ListBaseActivity$2;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity$2;-><init>(Lcom/pantech/app/music/library/activity/ListBaseActivity;)V

    invoke-interface {v3, v4}, Lcom/pantech/app/music/library/IListMiniPlayer;->setCallback(Lcom/pantech/app/music/library/IListMiniPlayer$Callback;)V

    goto :goto_9

    .line 326
    .restart local v0    # "fragment":Landroid/app/Fragment;
    :cond_86
    const-string v3, "ListBaseActivity"

    const-string v4, "savedInstanceState != null"

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75
.end method

.method private bindToMusicService()V
    .registers 4

    .prologue
    .line 240
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v0, :cond_c

    .line 241
    const-string v0, "ListBaseActivity"

    const-string v1, "RETURN: mService != null"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :goto_b
    return-void

    .line 245
    :cond_c
    const-string v0, "ListBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFinishing(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isDestroyed(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->isDestroyed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 248
    const-string v0, "ListBaseActivity"

    const-string v1, "RETURN: isFinishing() = true"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 252
    :cond_44
    new-instance v0, Lcom/pantech/app/music/library/activity/ListBaseActivity$1;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity$1;-><init>(Lcom/pantech/app/music/library/activity/ListBaseActivity;)V

    invoke-static {p0, v0}, Lcom/pantech/app/music/common/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    goto :goto_b
.end method

.method private registerStatusListener()V
    .registers 4

    .prologue
    .line 220
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 222
    .local v0, "f":Landroid/content/IntentFilter;
    const-string v1, "com.pantech.app.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v1, "com.pantech.app.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v1, "com.pantech.app.music.infochanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string v1, "com.pantech.app.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string v1, "com.pantech.app.music.drmroerror"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2, v0}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    invoke-virtual {p0, v1, v2}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 229
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->bStatusRegistered:Z

    .line 230
    return-void
.end method

.method private unRegisterStatusListener()V
    .registers 2

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->bStatusRegistered:Z

    if-eqz v0, :cond_c

    .line 234
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->bStatusRegistered:Z

    .line 237
    :cond_c
    return-void
.end method


# virtual methods
.method abstract attachFragment(Landroid/os/Bundle;)V
.end method

.method abstract detachFragment()V
.end method

.method protected doMiniPlayerButton()V
    .registers 2

    .prologue
    .line 420
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/pantech/app/music/utils/IntentUtils;->gotoNowPlaying(Landroid/app/Activity;I)V

    .line 421
    return-void
.end method

.method public getActionModeBottomLayout()Landroid/view/View;
    .registers 2

    .prologue
    .line 411
    const v0, 0x7f1000bf

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method abstract getAllFragments()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method abstract getFragment()Lcom/pantech/app/music/library/IListFragment;
.end method

.method abstract getMainLayoutView()Landroid/view/View;
.end method

.method public getService()Lcom/pantech/app/music/service/IMusicPlaybackService;
    .registers 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    return-object v0
.end method

.method handleMessageForList(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 75
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_12

    .line 83
    :goto_5
    return-void

    .line 77
    :pswitch_6
    const-string v0, "ListBaseActivity"

    const-string v1, "MSG_BIND_TO_MUSIC_SERVICE"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->bindToMusicService()V

    goto :goto_5

    .line 75
    nop

    :pswitch_data_12
    .packed-switch 0x64
        :pswitch_6
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 168
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 169
    packed-switch p1, :pswitch_data_24

    .line 195
    :goto_6
    return-void

    .line 172
    :pswitch_7
    const/4 v0, -0x1

    if-eq p2, v0, :cond_e

    const/16 v0, 0x64

    if-ne p2, v0, :cond_19

    .line 185
    :cond_e
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->finish()V

    .line 186
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_6

    .line 190
    :cond_19
    const v0, 0x7f08010c

    invoke-static {p0, v0}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    .line 191
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V

    goto :goto_6

    .line 169
    nop

    :pswitch_data_24
    .packed-switch 0x2710
        :pswitch_7
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 90
    const-string v0, "ListBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", savedInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const/16 v0, 0x2710

    invoke-static {p0, v0}, Lcom/pantech/app/music/utils/ActivityUtils;->makeRequestPermissionDialog(Landroid/app/Activity;I)Z

    move-result v0

    sput-boolean v0, Lcom/pantech/app/music/utils/ActivityUtils;->mHasPermission:Z

    .line 94
    sget-boolean v0, Lcom/pantech/app/music/utils/ActivityUtils;->mHasPermission:Z

    if-eqz v0, :cond_5a

    .line 96
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->attachFragment(Landroid/os/Bundle;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->attachMiniPlayer(Landroid/os/Bundle;)V

    .line 99
    invoke-direct {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->registerStatusListener()V

    .line 114
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mListHandler:Lcom/pantech/app/music/library/activity/ListBaseActivity$ListHandler;

    const/16 v1, 0x64

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/library/activity/ListBaseActivity$ListHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 120
    :goto_50
    const-wide/16 v0, -0x1

    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->getMainLayoutView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->setBackgroundWithColor(JLandroid/view/View;)V

    .line 121
    return-void

    .line 116
    :cond_5a
    const-string v0, "ListBaseActivity"

    const-string v1, "no permission!!!"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_50
.end method

.method protected onDestroy()V
    .registers 4

    .prologue
    .line 127
    const-string v0, "ListBaseActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mServiceToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", this: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mListHandler:Lcom/pantech/app/music/library/activity/ListBaseActivity$ListHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/library/activity/ListBaseActivity$ListHandler;->removeMessages(I)V

    .line 132
    invoke-virtual {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->detachFragment()V

    .line 133
    invoke-direct {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->unRegisterStatusListener()V

    .line 135
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    if-eqz v0, :cond_3d

    .line 136
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/pantech/app/music/common/MusicUtils;->unbindFromService(Lcom/pantech/app/music/common/MusicUtils$ServiceToken;)V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    .line 139
    :cond_3d
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 140
    return-void
.end method

.method protected onPostResume()V
    .registers 4

    .prologue
    .line 144
    const-string v0, "ListBaseActivity"

    const-string v1, "onPostResume"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    if-eqz v0, :cond_12

    .line 147
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/music/library/IListMiniPlayer;->show(IZ)V

    .line 149
    :cond_12
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPostResume()V

    .line 150
    return-void
.end method

.method protected onRestart()V
    .registers 1

    .prologue
    .line 161
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onRestart()V

    .line 163
    invoke-direct {p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity;->bindToMusicService()V

    .line 164
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 154
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 157
    return-void
.end method

.method public onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .registers 5
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;

    .prologue
    .line 209
    const-string v0, "ListBaseActivity"

    const-string v1, "onSupportActionModeFinished()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    if-eqz v0, :cond_18

    .line 211
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/pantech/app/music/library/IListMiniPlayer;->removeOptions(I)V

    .line 212
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/music/library/IListMiniPlayer;->show(IZ)V

    .line 214
    :cond_18
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSupportActionModeFinished(Landroid/support/v7/view/ActionMode;)V

    .line 215
    return-void
.end method

.method public onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .registers 5
    .param p1, "mode"    # Landroid/support/v7/view/ActionMode;

    .prologue
    .line 199
    const-string v0, "ListBaseActivity"

    const-string v1, "onSupportActionModeStarted()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    if-eqz v0, :cond_18

    .line 201
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/pantech/app/music/library/IListMiniPlayer;->addOptions(I)V

    .line 202
    iget-object v0, p0, Lcom/pantech/app/music/library/activity/ListBaseActivity;->mMiniPlayer:Lcom/pantech/app/music/library/IListMiniPlayer;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/pantech/app/music/library/IListMiniPlayer;->hide(IZ)V

    .line 204
    :cond_18
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSupportActionModeStarted(Landroid/support/v7/view/ActionMode;)V

    .line 205
    return-void
.end method

.method public requestSearchQuery(Ljava/lang/String;)V
    .registers 2
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 403
    return-void
.end method

.method public requestViewPagerPosition(I)V
    .registers 2
    .param p1, "index"    # I

    .prologue
    .line 407
    return-void
.end method

.method public setBackgroundWithColor(JLandroid/view/View;)V
    .registers 9
    .param p1, "albumID"    # J
    .param p3, "rootView"    # Landroid/view/View;

    .prologue
    .line 343
    new-instance v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;

    invoke-direct {v1}, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;-><init>()V

    .line 344
    .local v1, "param":Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;
    iput-wide p1, v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inAlbumID:J

    .line 345
    iput-object p3, v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inTargetView:Landroid/view/View;

    .line 346
    sget v2, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_EFFECT_BLUR:I

    sget v3, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->OPTION_COLOR_SWATCH:I

    or-int/2addr v2, v3

    iput v2, v1, Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;->inOptions:I

    .line 349
    invoke-static {p0}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->getInstance(Landroid/content/Context;)Lcom/pantech/app/music/albumart/AlbumArtExtractor;

    move-result-object v0

    .line 350
    .local v0, "extractor":Lcom/pantech/app/music/albumart/AlbumArtExtractor;
    new-instance v2, Lcom/pantech/app/music/library/activity/ListBaseActivity$3;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/library/activity/ListBaseActivity$3;-><init>(Lcom/pantech/app/music/library/activity/ListBaseActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/music/albumart/AlbumArtExtractor;->requestAlbumArt(Lcom/pantech/app/music/albumart/AlbumArtExtractor$Param;Lcom/pantech/app/music/albumart/AlbumArtExtractor$OnAlbumArtExtractorListener;)Landroid/graphics/Bitmap;

    .line 371
    return-void
.end method
