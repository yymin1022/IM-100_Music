.class public Lcom/pantech/app/music/service/MusicButtonIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicButtonIntentReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;
    }
.end annotation


# static fields
.field private static final ACTION_STATUSBAR_OPENED:Ljava/lang/String; = "com.pantech.statusbar.fully.opened"

.field private static final INTENT_ACTION_AUDIO_HEADSET_PLUGED:Ljava/lang/String; = "android.media.AUDIO_HEADSET_PLUGED"

.field private static final INTENT_ACTION_BOOT_COMPLETED:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"

.field private static final INTENT_ACTION_MEDIA_BUTTON:Ljava/lang/String; = "android.intent.action.MEDIA_BUTTON"

.field private static final INTENT_ACTION_SKT_MUSIC_END:Ljava/lang/String; = "android.intent.action.MUSIC_END"

.field private static final INTENT_ACTION_SKT_MUSIC_START:Ljava/lang/String; = "android.intent.action.MUSIC_START"

.field private static final KEYCODE_PAN_WHEEL:I = 0x11b

.field private static final MSG_ACTION_DOWN_KEY_EVENT:I = 0x1

.field private static final MSG_ACTION_UP_KEY_EVENT:I = 0x2

.field private static final MSG_BASE:I = 0x0

.field private static final MSG_CHECK_DOWN_KEY_EVENT_END:I = 0x6

.field private static final MSG_PROCESS_HEADSETHOOK:I = 0x3

.field private static final MSG_PROCESS_RPT:I = 0x5

.field private static final MSG_RELEASE_WAKELOCK:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MusicButtonIntentReceiver"

.field private static final TIME_DELAY_HEADSETHOOK_DOUBLECLICK:I = 0x190

.field private static final TIME_DELAY_PROCESS_RPT_FIRST_TIME:I = 0x578

.field private static final TIME_DELAY_PROCESS_RPT_LOOP:I = 0x12c

.field private static final TIME_DELAY_RELEASE_WAKELOCK:I = 0xbb8

.field private static final TIME_DELAY_REPEAT_KEYEVENT:I = 0x64

.field private static final TIME_DELAY_RPT_KEYEVENT_END:I = 0x9c4

.field public static mMusicButtonIntentHandler:Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;

.field private static mPlaybackLaunched:Z

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mPlaybackLaunched:Z

    .line 81
    new-instance v0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;

    invoke-direct {v0}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;-><init>()V

    sput-object v0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mMusicButtonIntentHandler:Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)V
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->processKeyEvent(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;I)V
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->processRptKeyEvent(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$200()V
    .registers 0

    .prologue
    .line 47
    invoke-static {}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLockAndRelease()V
    .registers 5

    .prologue
    const/4 v1, 0x4

    .line 502
    sget-object v0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 503
    sget-object v0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 505
    sget-object v0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mMusicButtonIntentHandler:Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->removeMessages(I)V

    .line 506
    sget-object v0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mMusicButtonIntentHandler:Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 508
    :cond_1e
    return-void
.end method

.method public static cancelKeyEvent()V
    .registers 2

    .prologue
    .line 254
    const/4 v0, 0x0

    sput-boolean v0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mPlaybackLaunched:Z

    .line 255
    sget-object v0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mMusicButtonIntentHandler:Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 256
    return-void
.end method

.method private static getKeyCodeStr(I)Ljava/lang/String;
    .registers 2
    .param p0, "keyCode"    # I

    .prologue
    .line 343
    sparse-switch p0, :sswitch_data_2a

    .line 367
    :cond_3
    const-string v0, "unknown"

    :goto_5
    return-object v0

    .line 345
    :sswitch_6
    const-string v0, "stop"

    goto :goto_5

    .line 347
    :sswitch_9
    const-string v0, "headsethook"

    goto :goto_5

    .line 349
    :sswitch_c
    const-string v0, "playpause"

    goto :goto_5

    .line 351
    :sswitch_f
    const-string v0, "next"

    goto :goto_5

    .line 353
    :sswitch_12
    const-string v0, "previous"

    goto :goto_5

    .line 355
    :sswitch_15
    const-string v0, "play"

    goto :goto_5

    .line 357
    :sswitch_18
    const-string v0, "pause"

    goto :goto_5

    .line 359
    :sswitch_1b
    const-string v0, "rew"

    goto :goto_5

    .line 361
    :sswitch_1e
    const-string v0, "ff"

    goto :goto_5

    .line 363
    :sswitch_21
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isWheelKey()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 364
    const-string v0, "playpause"

    goto :goto_5

    .line 343
    :sswitch_data_2a
    .sparse-switch
        0x4f -> :sswitch_9
        0x55 -> :sswitch_c
        0x56 -> :sswitch_6
        0x57 -> :sswitch_f
        0x58 -> :sswitch_12
        0x59 -> :sswitch_1b
        0x5a -> :sswitch_1e
        0x7e -> :sswitch_15
        0x7f -> :sswitch_18
        0x11b -> :sswitch_21
    .end sparse-switch
.end method

.method private static getKeyEventActionStr(I)Ljava/lang/String;
    .registers 2
    .param p0, "keyAction"    # I

    .prologue
    .line 330
    packed-switch p0, :pswitch_data_10

    .line 338
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 332
    :pswitch_6
    const-string v0, "ACTION_DOWN"

    goto :goto_5

    .line 334
    :pswitch_9
    const-string v0, "ACTION_UP"

    goto :goto_5

    .line 336
    :pswitch_c
    const-string v0, "ACTION_MULTIPLE"

    goto :goto_5

    .line 330
    nop

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
    .end packed-switch
.end method

.method protected static getServiceCommand(I)Ljava/lang/String;
    .registers 5
    .param p0, "keycode"    # I

    .prologue
    .line 279
    const-string v0, "command"

    .line 280
    .local v0, "command":Ljava/lang/String;
    const-string v1, "MusicButtonIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceCommand() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sparse-switch p0, :sswitch_data_48

    .line 323
    :cond_1d
    :goto_1d
    const-string v1, "command"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 324
    const/4 v0, 0x0

    .line 326
    .end local v0    # "command":Ljava/lang/String;
    :cond_26
    return-object v0

    .line 284
    .restart local v0    # "command":Ljava/lang/String;
    :sswitch_27
    const-string v0, "stop"

    .line 285
    goto :goto_1d

    .line 289
    :sswitch_2a
    const-string v0, "togglepause"

    .line 290
    goto :goto_1d

    .line 293
    :sswitch_2d
    const-string v0, "next"

    .line 294
    goto :goto_1d

    .line 297
    :sswitch_30
    const-string v0, "previous"

    .line 298
    goto :goto_1d

    .line 301
    :sswitch_33
    const-string v0, "play"

    .line 302
    goto :goto_1d

    .line 305
    :sswitch_36
    const-string v0, "pause"

    .line 306
    goto :goto_1d

    .line 309
    :sswitch_39
    const-string v0, "rewind"

    .line 310
    goto :goto_1d

    .line 313
    :sswitch_3c
    const-string v0, "fastforward"

    .line 314
    goto :goto_1d

    .line 317
    :sswitch_3f
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isWheelKey()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 318
    const-string v0, "togglepause"

    goto :goto_1d

    .line 282
    :sswitch_data_48
    .sparse-switch
        0x4f -> :sswitch_2a
        0x55 -> :sswitch_2a
        0x56 -> :sswitch_27
        0x57 -> :sswitch_2d
        0x58 -> :sswitch_30
        0x59 -> :sswitch_39
        0x5a -> :sswitch_3c
        0x7e -> :sswitch_33
        0x7f -> :sswitch_36
        0x11b -> :sswitch_3f
    .end sparse-switch
.end method

.method private static isRptKeyValid(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    const/4 v0, 0x0

    .line 262
    .local v0, "result":Z
    invoke-static {p0}, Lcom/pantech/app/music/utils/TelephonyUtils;->isCallState(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_31

    invoke-static {p0}, Lcom/pantech/app/music/common/MusicUtils;->GetClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 263
    const/4 v0, 0x1

    .line 267
    :goto_18
    const-string v1, "MusicButtonIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRptKeyValid() result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    return v0

    .line 265
    :cond_31
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private static processKeyEvent(Landroid/content/Context;I)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyCode"    # I

    .prologue
    .line 239
    invoke-static {p1}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->getServiceCommand(I)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "command":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 251
    :goto_6
    return-void

    .line 244
    :cond_7
    const-string v2, "MusicButtonIntentReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processKeyEvent() command("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 247
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "com.android.music.musicservicecommand"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string v2, "command"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v2, "MusicButtonIntentReceiver"

    const-string v3, "startService"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_6
.end method

.method private static processRptKeyEvent(Landroid/content/Context;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "keyCode"    # I

    .prologue
    .line 196
    const-string v1, "MusicButtonIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processRptKeyEvent(): keyCode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->getKeyCodeStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    if-nez p0, :cond_25

    .line 230
    :cond_24
    :goto_24
    return-void

    .line 200
    :cond_25
    sparse-switch p1, :sswitch_data_66

    goto :goto_24

    .line 204
    :sswitch_29
    invoke-static {p0}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->isRptKeyValid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_24

    sget-boolean v1, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mPlaybackLaunched:Z

    if-nez v1, :cond_24

    .line 205
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 206
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    const-class v1, Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 208
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 209
    const/4 v1, 0x1

    sput-boolean v1, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mPlaybackLaunched:Z

    .line 211
    invoke-static {}, Lcom/pantech/app/music/common/MusicUtils;->getMusicPlaying()Z

    move-result v1

    if-nez v1, :cond_51

    .line 212
    invoke-static {p0, p1}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->processKeyEvent(Landroid/content/Context;I)V

    .line 215
    :cond_51
    const-string v1, "MusicButtonIntentReceiver"

    const-string v2, "processRptKeyEvent() startActivity(MusicPlaybackActivity.class)"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_24

    .line 221
    .end local v0    # "i":Landroid/content/Intent;
    :sswitch_59
    const/16 v1, 0x5a

    invoke-static {p0, v1}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->processKeyEvent(Landroid/content/Context;I)V

    goto :goto_24

    .line 226
    :sswitch_5f
    const/16 v1, 0x59

    invoke-static {p0, v1}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->processKeyEvent(Landroid/content/Context;I)V

    goto :goto_24

    .line 200
    nop

    :sswitch_data_66
    .sparse-switch
        0x4f -> :sswitch_29
        0x55 -> :sswitch_29
        0x57 -> :sswitch_59
        0x58 -> :sswitch_5f
        0x59 -> :sswitch_5f
        0x5a -> :sswitch_59
        0x7e -> :sswitch_29
    .end sparse-switch
.end method

.method private static releaseWakeLock()V
    .registers 1

    .prologue
    .line 273
    sget-object v0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_11

    sget-object v0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 274
    sget-object v0, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 276
    :cond_11
    return-void
.end method

.method private sendServiceCommand(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    .line 517
    const-string v1, "MusicButtonIntentReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SendServiceCommand() command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 520
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    const-string v1, "command"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 523
    return-void
.end method

.method private setWakeLock(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 494
    sget-object v1, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1f

    .line 495
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 496
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-class v2, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 497
    sget-object v1, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 499
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_1f
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "LongLogTag"
        }
    .end annotation

    .prologue
    .line 375
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 491
    :cond_4
    :goto_4
    return-void

    .line 378
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "intentAction":Ljava/lang/String;
    const-string v8, "MusicButtonIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive() intentAction: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    if-eqz v2, :cond_4

    .line 383
    invoke-direct {p0, p1}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->setWakeLock(Landroid/content/Context;)V

    .line 384
    invoke-direct {p0}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->acquireWakeLockAndRelease()V

    .line 386
    const-string v8, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 392
    const-string v8, "android.media.AUDIO_HEADSET_PLUGED"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_69

    .line 393
    const-string v8, "hs_pluged_boottime"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 395
    .local v0, "hs_pluged_boottime":Z
    const-string v8, "MusicButtonIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " Headset pluged at boot time : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    if-nez v0, :cond_4

    .line 408
    const-string v8, "headset_plug_auto_play"

    const/4 v9, 0x0

    invoke-static {p1, v8, v9}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 409
    const-string v8, "headsetplay"

    invoke-direct {p0, p1, v8}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->sendServiceCommand(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    .line 414
    .end local v0    # "hs_pluged_boottime":Z
    :cond_69
    const-string v8, "android.intent.action.MUSIC_START"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_87

    .line 415
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKTelecom()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "STEP1_START"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 416
    const-string v8, "play"

    invoke-direct {p0, p1, v8}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->sendServiceCommand(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 418
    :cond_87
    const-string v8, "android.intent.action.MUSIC_END"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9c

    .line 419
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKTelecom()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 420
    const-string v8, "pause"

    invoke-direct {p0, p1, v8}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->sendServiceCommand(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 422
    :cond_9c
    const-string v8, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_14b

    .line 423
    invoke-static {p1}, Lcom/pantech/app/music/utils/TelephonyUtils;->isPureCallState(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 426
    const-string v8, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/view/KeyEvent;

    .line 428
    .local v5, "keyEvent":Landroid/view/KeyEvent;
    if-eqz v5, :cond_4

    .line 429
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 430
    .local v4, "keyCode":I
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    .line 431
    .local v3, "keyAction":I
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    .line 433
    .local v6, "keyRptCount":I
    const-string v8, "MusicButtonIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive() keyAction["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v3}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->getKeyEventActionStr(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] keyCode["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->getKeyCodeStr(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] keyRptCount["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    if-nez v3, :cond_133

    .line 437
    if-eqz v6, :cond_101

    const/4 v8, 0x1

    if-ne v6, v8, :cond_11a

    .line 438
    :cond_101
    if-nez v6, :cond_106

    .line 439
    const/4 v8, 0x0

    sput-boolean v8, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mPlaybackLaunched:Z

    .line 442
    :cond_106
    sget-object v8, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mMusicButtonIntentHandler:Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 443
    .local v7, "msg":Landroid/os/Message;
    iput v4, v7, Landroid/os/Message;->arg1:I

    .line 444
    iput v6, v7, Landroid/os/Message;->arg2:I

    .line 445
    iput-object p1, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 446
    sget-object v8, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mMusicButtonIntentHandler:Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v7, v10, v11}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 450
    .end local v7    # "msg":Landroid/os/Message;
    :cond_11a
    sget-object v8, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mMusicButtonIntentHandler:Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->removeMessages(I)V

    .line 451
    sget-object v8, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mMusicButtonIntentHandler:Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;

    const/4 v9, 0x6

    const-wide/16 v10, 0x9c4

    invoke-virtual {v8, v9, v10, v11}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 460
    :cond_128
    :goto_128
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->isOrderedBroadcast()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 461
    invoke-virtual {p0}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->abortBroadcast()V

    goto/16 :goto_4

    .line 452
    :cond_133
    const/4 v8, 0x1

    if-ne v3, v8, :cond_128

    .line 453
    sget-object v8, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mMusicButtonIntentHandler:Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 454
    .restart local v7    # "msg":Landroid/os/Message;
    iput v4, v7, Landroid/os/Message;->arg1:I

    .line 455
    iput v6, v7, Landroid/os/Message;->arg2:I

    .line 456
    iput-object p1, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 457
    sget-object v8, Lcom/pantech/app/music/service/MusicButtonIntentReceiver;->mMusicButtonIntentHandler:Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;

    const-wide/16 v10, 0x64

    invoke-virtual {v8, v7, v10, v11}, Lcom/pantech/app/music/service/MusicButtonIntentReceiver$MusicButtonIntentHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_128

    .line 466
    .end local v3    # "keyAction":I
    .end local v4    # "keyCode":I
    .end local v5    # "keyEvent":Landroid/view/KeyEvent;
    .end local v6    # "keyRptCount":I
    .end local v7    # "msg":Landroid/os/Message;
    :cond_14b
    const-string v8, "com.pantech.statusbar.fully.opened"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17c

    .line 467
    const-string v8, "MusicButtonIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MusicButtonIntentReceiver action:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    new-instance v1, Landroid/content/Intent;

    const-class v8, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {v1, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 469
    .local v1, "i":Landroid/content/Intent;
    const-string v8, "com.pantech.app.oneplayer.action.exit"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_4

    .line 473
    .end local v1    # "i":Landroid/content/Intent;
    :cond_17c
    const-string v8, "com.pantech.app.oneplayer.action"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1ad

    .line 474
    const-string v8, "MusicButtonIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MusicButtonIntentReceiver action:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    new-instance v1, Landroid/content/Intent;

    const-class v8, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {v1, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 476
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v8, "com.pantech.app.oneplayer.action"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_4

    .line 481
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1ad
    const-string v8, "com.pantech.app.oneplayer.action.exit"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1de

    .line 482
    const-string v8, "MusicButtonIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MusicButtonIntentReceiver action:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    new-instance v1, Landroid/content/Intent;

    const-class v8, Lcom/pantech/app/music/service/MusicPlaybackService;

    invoke-direct {v1, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 484
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v8, "com.pantech.app.oneplayer.action.exit"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 486
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_4

    .line 488
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1de
    const-string v8, "MusicButtonIntentReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive() Unknown intentAction: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/pantech/app/music/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method
