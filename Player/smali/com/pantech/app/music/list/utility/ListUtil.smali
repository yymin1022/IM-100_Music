.class public Lcom/pantech/app/music/list/utility/ListUtil;
.super Ljava/lang/Object;
.source "ListUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/utility/ListUtil$ShowIME;
    }
.end annotation


# static fields
.field public static final DISP_FILENAME:Z = true

.field public static final DISP_ID3_TITLE:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    return-void
.end method

.method public static getCurrentTimeSec()J
    .registers 4

    .prologue
    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getScreenLayout(I)I
    .registers 2
    .param p0, "screenLayout"    # I

    .prologue
    .line 33
    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method public static getServiceQueuePosition(Lcom/pantech/app/music/service/IMusicPlaybackService;)I
    .registers 3
    .param p0, "service"    # Lcom/pantech/app/music/service/IMusicPlaybackService;

    .prologue
    const/4 v1, -0x1

    .line 174
    if-nez p0, :cond_4

    .line 187
    :goto_3
    return v1

    .line 179
    :cond_4
    :try_start_4
    invoke-interface {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getQueuePosition()I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v1

    goto :goto_3

    .line 181
    :catch_9
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method public static hideInputMethodForEditBox(Landroid/content/Context;Lcom/pantech/app/music/view/SkyDialogFragment;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog"    # Lcom/pantech/app/music/view/SkyDialogFragment;

    .prologue
    .line 136
    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Lcom/pantech/app/music/view/SkyDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {p1}, Lcom/pantech/app/music/view/SkyDialogFragment;->getShowsDialog()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 138
    invoke-virtual {p1}, Lcom/pantech/app/music/view/SkyDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const v3, 0x7f10014a

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/view/SkyEditText;

    .line 139
    .local v0, "editTextForPlayListName":Lcom/pantech/app/music/view/SkyEditText;
    if-eqz v0, :cond_2d

    .line 141
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 144
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 147
    .end local v0    # "editTextForPlayListName":Lcom/pantech/app/music/view/SkyEditText;
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_2d
    return-void
.end method

.method public static isBuffering(Lcom/pantech/app/music/service/IMusicPlaybackService;)Z
    .registers 4
    .param p0, "service"    # Lcom/pantech/app/music/service/IMusicPlaybackService;

    .prologue
    .line 192
    if-eqz p0, :cond_11

    .line 196
    :try_start_2
    invoke-interface {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getPlayState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "buffering"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_d

    move-result v1

    .line 205
    :goto_c
    return v1

    .line 198
    :catch_d
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 205
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_11
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public static isEmptyCursor(Landroid/database/Cursor;)Z
    .registers 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 166
    if-eqz p0, :cond_e

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_10

    .line 167
    :cond_e
    const/4 v0, 0x1

    .line 169
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static isMediascanning(Landroid/content/Context;)Z
    .registers 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 38
    const/4 v7, 0x0

    .line 40
    .local v7, "isScanning":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 41
    .local v0, "res":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "volume"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 43
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2a

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 45
    const-string v1, "external"

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 48
    :cond_2a
    if-eqz v6, :cond_2f

    .line 49
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 51
    :cond_2f
    return v7
.end method

.method public static isMtpConnected(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 239
    const/4 v0, 0x0

    .line 241
    .local v0, "isConnected":Z
    const-string v2, "musicLibraryPreference"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 242
    .local v1, "preference":Landroid/content/SharedPreferences;
    const-string v2, "isMTPConnected"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 244
    return v0
.end method

.method public static isPlayingAudioID(Lcom/pantech/app/music/service/IMusicPlaybackService;J)Z
    .registers 8
    .param p0, "iService"    # Lcom/pantech/app/music/service/IMusicPlaybackService;
    .param p1, "mediaID"    # J

    .prologue
    const/4 v1, 0x0

    .line 210
    if-nez p0, :cond_4

    .line 226
    :cond_3
    :goto_3
    return v1

    .line 215
    :cond_4
    :try_start_4
    invoke-interface {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getAudioId()J
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_e

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_3

    .line 217
    const/4 v1, 0x1

    goto :goto_3

    .line 220
    :catch_e
    move-exception v0

    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method public static isValidCursor(Landroid/database/Cursor;)Z
    .registers 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 158
    if-eqz p0, :cond_8

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 159
    :cond_8
    const/4 v0, 0x0

    .line 161
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static registerMediaScannerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 249
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 250
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.pantech.app.music.action.MEDIASCAN_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v1, "com.pantech.app.music.action.MEDIASCAN_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    if-eqz p0, :cond_14

    .line 254
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    :cond_14
    return-void
.end method

.method public static setHapticFeedBack(Landroid/view/View;I)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # I

    .prologue
    .line 151
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->isHapticFeedbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 155
    :cond_8
    return-void
.end method

.method public static declared-synchronized setMtpConnection(Landroid/content/Context;Z)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fSet"    # Z

    .prologue
    .line 231
    const-class v3, Lcom/pantech/app/music/list/utility/ListUtil;

    monitor-enter v3

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "musicLibraryPreference"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 232
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 233
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "isMTPConnected"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 234
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    .line 235
    monitor-exit v3

    return-void

    .line 231
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preference":Landroid/content/SharedPreferences;
    :catchall_1c
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static showInputMethodForEditBox(Landroid/content/Context;Lcom/pantech/app/music/view/SkyDialogFragment;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dialog"    # Lcom/pantech/app/music/view/SkyDialogFragment;

    .prologue
    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showInputMethodForEditBox dialog:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " shown:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p1, :cond_46

    const-string v2, ""

    :goto_19
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;)V

    .line 114
    if-eqz p1, :cond_45

    invoke-virtual {p1}, Lcom/pantech/app/music/view/SkyDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    if-eqz v2, :cond_45

    invoke-virtual {p1}, Lcom/pantech/app/music/view/SkyDialogFragment;->getShowsDialog()Z

    move-result v2

    if-eqz v2, :cond_45

    .line 116
    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 118
    .local v1, "manager":Landroid/app/KeyguardManager;
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 120
    const-string v2, "Lockscreen Locked"

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 132
    .end local v1    # "manager":Landroid/app/KeyguardManager;
    :cond_45
    :goto_45
    return-void

    .line 112
    :cond_46
    invoke-virtual {p1}, Lcom/pantech/app/music/view/SkyDialogFragment;->getShowsDialog()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_19

    .line 124
    .restart local v1    # "manager":Landroid/app/KeyguardManager;
    :cond_4f
    invoke-virtual {p1}, Lcom/pantech/app/music/view/SkyDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v2

    const v3, 0x7f10014a

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/view/SkyEditText;

    .line 125
    .local v0, "editTextForPlayListName":Lcom/pantech/app/music/view/SkyEditText;
    if-eqz v0, :cond_45

    .line 127
    const-string v2, "restartEdtiModePopup"

    invoke-static {v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 129
    new-instance v2, Lcom/pantech/app/music/list/utility/ListUtil$ShowIME;

    invoke-direct {v2, p0, v0}, Lcom/pantech/app/music/list/utility/ListUtil$ShowIME;-><init>(Landroid/content/Context;Lcom/pantech/app/music/view/SkyEditText;)V

    const-wide/16 v4, 0x320

    invoke-virtual {v0, v2, v4, v5}, Lcom/pantech/app/music/view/SkyEditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_45
.end method

.method public static showToast(Landroid/content/Context;I)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resID"    # I

    .prologue
    .line 67
    if-eqz p0, :cond_12

    .line 69
    const v1, 0x1030128

    .line 70
    .local v1, "theme":I
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 72
    .local v0, "pContext":Landroid/view/ContextThemeWrapper;
    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 74
    .end local v0    # "pContext":Landroid/view/ContextThemeWrapper;
    .end local v1    # "theme":I
    :cond_12
    return-void
.end method

.method public static showToast(Landroid/content/Context;Landroid/widget/Toast;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toast"    # Landroid/widget/Toast;
    .param p2, "resID"    # I

    .prologue
    const/4 v2, 0x0

    .line 78
    if-eqz p0, :cond_14

    .line 80
    const v1, 0x1030128

    .line 81
    .local v1, "theme":I
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 83
    .local v0, "pContext":Landroid/view/ContextThemeWrapper;
    if-nez p1, :cond_15

    .line 84
    invoke-static {v0, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 90
    :goto_11
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 92
    .end local v0    # "pContext":Landroid/view/ContextThemeWrapper;
    .end local v1    # "theme":I
    :cond_14
    return-void

    .line 87
    .restart local v0    # "pContext":Landroid/view/ContextThemeWrapper;
    .restart local v1    # "theme":I
    :cond_15
    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    .line 88
    invoke-static {v0, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    goto :goto_11
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 56
    if-eqz p0, :cond_12

    .line 58
    const v1, 0x1030128

    .line 59
    .local v1, "theme":I
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 61
    .local v0, "pContext":Landroid/view/ContextThemeWrapper;
    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 63
    .end local v0    # "pContext":Landroid/view/ContextThemeWrapper;
    .end local v1    # "theme":I
    :cond_12
    return-void
.end method

.method public static unregisterMediaScannerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 259
    if-eqz p0, :cond_5

    .line 260
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 261
    :cond_5
    return-void
.end method

.method public static verifyStringLength(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0xc8

    .line 273
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_f

    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 278
    .end local p0    # "str":Ljava/lang/String;
    :cond_f
    return-object p0
.end method
