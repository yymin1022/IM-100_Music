.class public Lcom/pantech/app/music/MusicStarter;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MusicStarter.java"


# static fields
.field public static final BRANCH_COMMAND:Ljava/lang/String; = "music_starter_branch_command"

.field public static final BRANCH_TO_SHORTCUT_PLAY:I = 0x1

.field private static final REQUEST_PERMISSION_ID:I = 0x3e7

.field private static final START_REQUEST_ID:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "MusicStarter"

.field private static mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private MusicStater_Start()V
    .registers 13

    .prologue
    const/high16 v11, 0x4000000

    const/4 v10, 0x0

    .line 149
    invoke-virtual {p0}, Lcom/pantech/app/music/MusicStarter;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_2a

    .line 151
    invoke-virtual {p0}, Lcom/pantech/app/music/MusicStarter;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "music_starter_branch_command"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 152
    .local v1, "branchCommand":I
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isEntryPointPlayback()Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 154
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/pantech/app/music/player/MusicPlaybackActivity;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v7, "starter":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/pantech/app/music/MusicStarter;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v7}, Lcom/pantech/app/music/MusicStarter;->startActivity(Landroid/content/Intent;)V

    .line 223
    .end local v1    # "branchCommand":I
    .end local v7    # "starter":Landroid/content/Intent;
    :cond_2a
    :goto_2a
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 224
    .local v3, "h":Landroid/os/Handler;
    new-instance v8, Lcom/pantech/app/music/MusicStarter$1;

    invoke-direct {v8, p0}, Lcom/pantech/app/music/MusicStarter$1;-><init>(Lcom/pantech/app/music/MusicStarter;)V

    const-wide/16 v10, 0x258

    invoke-virtual {v3, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    return-void

    .line 158
    .end local v3    # "h":Landroid/os/Handler;
    .restart local v1    # "branchCommand":I
    :cond_3a
    if-lez v1, :cond_58

    .line 159
    packed-switch v1, :pswitch_data_f0

    goto :goto_2a

    .line 161
    :pswitch_40
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/pantech/app/music/MusicStarter;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 162
    .local v0, "Intent":Landroid/content/Intent;
    const-class v8, Lcom/pantech/app/music/library/activity/ShortCutActivity;

    invoke-virtual {v0, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 163
    const v8, 0x8000

    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/MusicStarter;->startActivity(Landroid/content/Intent;)V

    goto :goto_2a

    .line 168
    .end local v0    # "Intent":Landroid/content/Intent;
    :cond_58
    invoke-virtual {p0}, Lcom/pantech/app/music/MusicStarter;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "player_if_from_shortcut"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_76

    .line 169
    new-instance v7, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/pantech/app/music/MusicStarter;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 170
    .restart local v7    # "starter":Landroid/content/Intent;
    const-class v8, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-virtual {v7, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 171
    invoke-virtual {p0, v7}, Lcom/pantech/app/music/MusicStarter;->startActivity(Landroid/content/Intent;)V

    goto :goto_2a

    .line 176
    .end local v7    # "starter":Landroid/content/Intent;
    :cond_76
    invoke-virtual {p0}, Lcom/pantech/app/music/MusicStarter;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "toPlayer"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 177
    .local v4, "mFromNotification":Z
    invoke-virtual {p0}, Lcom/pantech/app/music/MusicStarter;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "toNowplaying"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 178
    .local v6, "mStartToNowplaying":Z
    invoke-virtual {p0}, Lcom/pantech/app/music/MusicStarter;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "fromSmartBeam"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 181
    .local v5, "mFromSmartBeam":Z
    const-class v2, Lcom/pantech/app/music/library/activity/ListTabActivity;

    .line 182
    .local v2, "entryActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isNavigationDrawerUsed()Z

    move-result v8

    if-eqz v8, :cond_c1

    .line 183
    const-class v2, Lcom/pantech/app/music/list/activity/NavigationListActivity;

    .line 188
    :cond_9e
    :goto_9e
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 190
    .restart local v7    # "starter":Landroid/content/Intent;
    if-eqz v4, :cond_c6

    .line 191
    invoke-virtual {v7, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0, v10}, Lcom/pantech/app/music/MusicStarter;->setVisible(Z)V

    .line 193
    invoke-virtual {p0}, Lcom/pantech/app/music/MusicStarter;->finish()V

    .line 203
    :goto_ae
    invoke-virtual {p0}, Lcom/pantech/app/music/MusicStarter;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v7}, Lcom/pantech/app/music/MusicStarter;->startActivity(Landroid/content/Intent;)V

    .line 206
    if-eqz v4, :cond_d5

    .line 208
    sget-object v8, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->NOTIFICATION:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    invoke-static {p0, v8, v10, v10}, Lcom/pantech/app/music/list/module/PlayInterface;->showPlayer(Landroid/content/Context;Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;ZI)V

    goto/16 :goto_2a

    .line 185
    .end local v7    # "starter":Landroid/content/Intent;
    :cond_c1
    if-eqz v4, :cond_9e

    .line 186
    const-class v2, Lcom/pantech/app/music/player/MusicPlaybackActivity;

    goto :goto_9e

    .line 195
    .restart local v7    # "starter":Landroid/content/Intent;
    :cond_c6
    if-nez v6, :cond_ca

    if-eqz v5, :cond_d1

    .line 197
    :cond_ca
    const v8, 0x10008000

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_ae

    .line 201
    :cond_d1
    invoke-virtual {v7, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_ae

    .line 210
    :cond_d5
    if-eqz v6, :cond_df

    .line 212
    sget-object v8, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->NOTIFICATION:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    const/4 v9, 0x1

    invoke-static {p0, v8, v9, v10}, Lcom/pantech/app/music/list/module/PlayInterface;->showPlayer(Landroid/content/Context;Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;ZI)V

    goto/16 :goto_2a

    .line 214
    :cond_df
    if-eqz v5, :cond_2a

    .line 216
    sget-object v8, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->EXINTERFACE:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    invoke-virtual {p0}, Lcom/pantech/app/music/MusicStarter;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    invoke-static {p0, v8, v10, v10, v9}, Lcom/pantech/app/music/list/module/PlayInterface;->showPlayer(Landroid/content/Context;Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;ZILandroid/net/Uri;)V

    goto/16 :goto_2a

    .line 159
    :pswitch_data_f0
    .packed-switch 0x1
        :pswitch_40
    .end packed-switch
.end method

.method private showMsgOnToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showMsgOnToast : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->performance(Ljava/lang/String;Z)V

    .line 236
    sget-object v0, Lcom/pantech/app/music/MusicStarter;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_20

    .line 237
    sget-object v0, Lcom/pantech/app/music/MusicStarter;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 240
    :cond_20
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/pantech/app/music/common/MusicUtils;->makeTextToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/MusicStarter;->mToast:Landroid/widget/Toast;

    .line 241
    sget-object v0, Lcom/pantech/app/music/MusicStarter;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_37

    .line 242
    sget-object v0, Lcom/pantech/app/music/MusicStarter;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 243
    sget-object v0, Lcom/pantech/app/music/MusicStarter;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 245
    :cond_37
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 111
    const-string v0, "MusicStarter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    packed-switch p1, :pswitch_data_6c

    .line 144
    :goto_25
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 145
    return-void

    .line 116
    :pswitch_29
    const-string v0, "onActivityResult : START_REQUEST_ID "

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->performance(Ljava/lang/String;Z)V

    .line 117
    invoke-virtual {p0}, Lcom/pantech/app/music/MusicStarter;->finish()V

    goto :goto_25

    .line 121
    :pswitch_33
    const/16 v0, 0x64

    if-ne p2, v0, :cond_42

    .line 122
    const-string v0, "MusicStarter"

    const-string v1, "onActivityResult : PERMISSION_ALL_GRANTED "

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/pantech/app/music/MusicStarter;->MusicStater_Start()V

    goto :goto_25

    .line 132
    :cond_42
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/MusicStarter;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_60

    .line 133
    const-string v0, "MusicStarter"

    const-string v1, "onActivityResult : PRECONDITION_FOR_MUSIC PERMISSION_DENIED "

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const v0, 0x7f08010c

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/MusicStarter;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/pantech/app/music/MusicStarter;->showMsgOnToast(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/pantech/app/music/MusicStarter;->finish()V

    goto :goto_25

    .line 138
    :cond_60
    const-string v0, "MusicStarter"

    const-string v1, "onActivityResult : PRECONDITION_FOR_MUSIC PERMISSION_GRANTED "

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lcom/pantech/app/music/MusicStarter;->MusicStater_Start()V

    goto :goto_25

    .line 113
    nop

    :pswitch_data_6c
    .packed-switch 0x3e7
        :pswitch_33
        :pswitch_29
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const-string v2, "MusicStarter"

    const-string v3, "onCreate()"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_53

    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, "deniedPrecondition":Z
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/MusicStarter;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    .line 46
    const/4 v0, 0x1

    .line 48
    :cond_1b
    const-string v2, "MusicStarter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate() deniedPrecondition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    if-eqz v0, :cond_4f

    .line 50
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/pantech/app/music/common/PermissionCheckActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "RequestPermission"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    const-string v2, "FromService"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 54
    const/16 v2, 0x3e7

    invoke-virtual {p0, v1, v2}, Lcom/pantech/app/music/MusicStarter;->startActivityForResult(Landroid/content/Intent;I)V

    .line 63
    .end local v0    # "deniedPrecondition":Z
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_4e
    return-void

    .line 57
    .restart local v0    # "deniedPrecondition":Z
    :cond_4f
    invoke-direct {p0}, Lcom/pantech/app/music/MusicStarter;->MusicStater_Start()V

    goto :goto_4e

    .line 61
    .end local v0    # "deniedPrecondition":Z
    :cond_53
    invoke-direct {p0}, Lcom/pantech/app/music/MusicStarter;->MusicStater_Start()V

    goto :goto_4e
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 105
    const-string v0, "MusicStarter"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 107
    return-void
.end method

.method protected onRestart()V
    .registers 3

    .prologue
    .line 67
    const-string v0, "MusicStarter"

    const-string v1, "onRestart()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onRestart()V

    .line 69
    return-void
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 73
    const-string v0, "MusicStarter"

    const-string v1, "onStart()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_d

    .line 94
    :cond_d
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStart()V

    .line 95
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 99
    const-string v0, "MusicStarter"

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->debugI(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 101
    return-void
.end method
