.class public Lcom/pantech/app/music/utils/ListUtils;
.super Ljava/lang/Object;
.source "ListUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/utils/ListUtils$OnDialogYesNoCallback;,
        Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;,
        Lcom/pantech/app/music/utils/ListUtils$onDialogInformationOneBtnCallback;,
        Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;,
        Lcom/pantech/app/music/utils/ListUtils$OnDialogQuestionCallback;
    }
.end annotation


# static fields
.field public static final POPUP_DIALOG_INDUCE:I = -0x2

.field public static final POPUP_DIALOG_TIP:I = -0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static ProgressLoadingDialogStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/pantech/app/music/view/SkyProgressDialog;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "isCancelable"    # Z
    .param p4, "tip"    # Ljava/lang/String;

    .prologue
    .line 383
    new-instance v0, Lcom/pantech/app/music/view/SkyProgressDialog;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/view/SkyProgressDialog;-><init>(Landroid/content/Context;)V

    .line 385
    .local v0, "progressLoading":Lcom/pantech/app/music/view/SkyProgressDialog;
    invoke-virtual {v0, p3}, Lcom/pantech/app/music/view/SkyProgressDialog;->setCancelable(Z)V

    .line 386
    invoke-virtual {v0, p1}, Lcom/pantech/app/music/view/SkyProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 387
    invoke-virtual {v0, p2}, Lcom/pantech/app/music/view/SkyProgressDialog;->setBodyMessage(Ljava/lang/String;)V

    .line 388
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 390
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSpecificDialog()Z

    move-result v1

    if-eqz v1, :cond_21

    if-eqz p4, :cond_21

    .line 392
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyProgressDialog;->setIcon(I)V

    .line 393
    invoke-virtual {v0, p4}, Lcom/pantech/app/music/view/SkyProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 396
    :cond_21
    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyProgressDialog;->show()V

    .line 398
    return-object v0
.end method

.method public static ProgressSavingDialogStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/pantech/app/music/view/SkySavingDialog;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "isCancelable"    # Z
    .param p4, "tip"    # Ljava/lang/String;

    .prologue
    .line 352
    new-instance v0, Lcom/pantech/app/music/view/SkySavingDialog;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/view/SkySavingDialog;-><init>(Landroid/content/Context;)V

    .line 354
    .local v0, "savingDialog":Lcom/pantech/app/music/view/SkySavingDialog;
    invoke-virtual {v0, p3}, Lcom/pantech/app/music/view/SkySavingDialog;->setCancelable(Z)V

    .line 355
    invoke-virtual {v0, p1}, Lcom/pantech/app/music/view/SkySavingDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 356
    invoke-virtual {v0, p2}, Lcom/pantech/app/music/view/SkySavingDialog;->setBodyMessage(Ljava/lang/String;)V

    .line 357
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkySavingDialog;->setCanceledOnTouchOutside(Z)V

    .line 359
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSpecificDialog()Z

    move-result v1

    if-eqz v1, :cond_21

    if-eqz p4, :cond_21

    .line 361
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkySavingDialog;->setIcon(I)V

    .line 362
    invoke-virtual {v0, p4}, Lcom/pantech/app/music/view/SkySavingDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 365
    :cond_21
    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkySavingDialog;->show()V

    .line 367
    return-object v0
.end method

.method public static registerBufferingListener(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 582
    const-string v1, "registerBufferingListener()"

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 584
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 585
    .local v0, "playerFilter":Landroid/content/IntentFilter;
    const-string v1, "com.pantech.app.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 587
    if-eqz p0, :cond_14

    .line 588
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 589
    :cond_14
    return-void
.end method

.method public static registerCloudListener(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 601
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 602
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isUplusBoxUse()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 604
    const-string v1, "lg.uplusbox.intent.action.RESPONSE_COMMON_SESSION_ID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 605
    const-string v1, "lg.uplusbox.intent.action.COMMON_SESSION_ID_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 608
    :cond_15
    if-eqz p0, :cond_1a

    .line 609
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 610
    :cond_1a
    return-void
.end method

.method public static registerPlayStatusReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 541
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 542
    .local v0, "playerFilter":Landroid/content/IntentFilter;
    const-string v1, "com.pantech.app.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 543
    const-string v1, "com.pantech.app.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 544
    const-string v1, "com.pantech.app.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 545
    const-string v1, "com.pantech.app.music.playbackallremoved"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 547
    if-eqz p0, :cond_1e

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 548
    :cond_1e
    return-void
.end method

.method public static registerStatusListener(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 557
    const-string v1, "registerStatusListener()"

    invoke-static {v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 559
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 560
    .local v0, "playerFilter":Landroid/content/IntentFilter;
    const-string v1, "com.pantech.app.music.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 561
    const-string v1, "com.pantech.app.music.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    const-string v1, "com.pantech.app.music.safebox.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    const-string v1, "com.pantech.app.music.playbackallremoved"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 564
    const-string v1, "com.pantech.app.music.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 566
    if-eqz p0, :cond_28

    .line 567
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 568
    :cond_28
    return-void
.end method

.method public static showSkyAskPopupList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/pantech/app/music/utils/ListUtils$OnDialogQuestionCallback;Ljava/lang/String;Z)Lcom/pantech/app/music/view/SkyMusicPopupList;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "popupListId"    # I
    .param p4, "callback"    # Lcom/pantech/app/music/utils/ListUtils$OnDialogQuestionCallback;
    .param p5, "tip"    # Ljava/lang/String;
    .param p6, "induce"    # Z

    .prologue
    const/4 v4, -0x2

    .line 71
    const/4 p6, 0x0

    .line 72
    new-instance v0, Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/view/SkyMusicPopupList;-><init>(Landroid/content/Context;)V

    .line 74
    .local v0, "popupList":Lcom/pantech/app/music/view/SkyMusicPopupList;
    invoke-virtual {v0, p1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setTitle(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v0, p2}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setMessage(Ljava/lang/String;)V

    .line 77
    const/4 v1, -0x1

    const v2, 0x7f08009e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/pantech/app/music/utils/ListUtils$1;

    invoke-direct {v3, p4, p3, v0}, Lcom/pantech/app/music/utils/ListUtils$1;-><init>(Lcom/pantech/app/music/utils/ListUtils$OnDialogQuestionCallback;ILcom/pantech/app/music/view/SkyMusicPopupList;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 86
    const v1, 0x7f08005d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/pantech/app/music/utils/ListUtils$2;

    invoke-direct {v2, p4, p3, v0}, Lcom/pantech/app/music/utils/ListUtils$2;-><init>(Lcom/pantech/app/music/utils/ListUtils$OnDialogQuestionCallback;ILcom/pantech/app/music/view/SkyMusicPopupList;)V

    invoke-virtual {v0, v4, v1, v2}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 97
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSpecificDialog()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 99
    if-eqz p6, :cond_37

    .line 100
    invoke-virtual {v0, v4}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setIcon(I)V

    .line 102
    :cond_37
    if-eqz p5, :cond_40

    .line 104
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setIcon(I)V

    .line 105
    invoke-virtual {v0, p5}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setTitle(Ljava/lang/CharSequence;)V

    .line 109
    :cond_40
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setCanceledOnTouchOutside(Z)V

    .line 111
    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyMusicPopupList;->show()V

    .line 113
    return-object v0
.end method

.method public static showSkyChkBoxPopupList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;Ljava/lang/String;Z)Lcom/pantech/app/music/view/SkyMusicPopupList;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "chkboxMessage"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;
    .param p4, "tip"    # Ljava/lang/String;
    .param p5, "induce"    # Z

    .prologue
    .line 417
    const/4 p5, 0x0

    .line 418
    new-instance v4, Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/view/SkyMusicPopupList;-><init>(Landroid/content/Context;)V

    .line 420
    .local v4, "popupList":Lcom/pantech/app/music/view/SkyMusicPopupList;
    const v6, 0x7f08003e

    invoke-virtual {v4, v6}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setTitle(I)V

    .line 422
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 423
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f030092

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 424
    .local v3, "popupLayout":Landroid/widget/LinearLayout;
    const v6, 0x7f10014b

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 428
    .local v5, "popupMessageView":Landroid/widget/TextView;
    const v6, 0x7f10014d

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 429
    .local v1, "popupCheckBoxText":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    invoke-virtual {v4, v3}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setView(Landroid/view/View;)V

    .line 434
    const/4 v6, -0x1

    const v7, 0x7f08001b

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/pantech/app/music/utils/ListUtils$9;

    invoke-direct {v8, p3}, Lcom/pantech/app/music/utils/ListUtils$9;-><init>(Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;)V

    invoke-virtual {v4, v6, v7, v8}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 443
    const/4 v6, -0x2

    const v7, 0x7f0800af

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/pantech/app/music/utils/ListUtils$10;

    invoke-direct {v8, p3}, Lcom/pantech/app/music/utils/ListUtils$10;-><init>(Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;)V

    invoke-virtual {v4, v6, v7, v8}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 453
    const v6, 0x7f10014c

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 455
    .local v2, "popupCheckBoxView":Landroid/widget/CheckBox;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 457
    new-instance v6, Lcom/pantech/app/music/utils/ListUtils$11;

    invoke-direct {v6, p3}, Lcom/pantech/app/music/utils/ListUtils$11;-><init>(Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;)V

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    new-instance v6, Lcom/pantech/app/music/utils/ListUtils$12;

    invoke-direct {v6, p3}, Lcom/pantech/app/music/utils/ListUtils$12;-><init>(Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;)V

    invoke-virtual {v4, v6}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 482
    new-instance v6, Lcom/pantech/app/music/utils/ListUtils$13;

    invoke-direct {v6, p3}, Lcom/pantech/app/music/utils/ListUtils$13;-><init>(Lcom/pantech/app/music/utils/ListUtils$OnDialogTwoButtonOneCheckBoxCallback;)V

    invoke-virtual {v4, v6}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 493
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setCanceledOnTouchOutside(Z)V

    .line 495
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSpecificDialog()Z

    move-result v6

    if-eqz v6, :cond_93

    if-eqz p4, :cond_93

    .line 497
    if-eqz p5, :cond_8c

    .line 498
    const/4 v6, -0x2

    invoke-virtual {v4, v6}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setIcon(I)V

    .line 500
    :cond_8c
    const/4 v6, -0x3

    invoke-virtual {v4, v6}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setIcon(I)V

    .line 501
    invoke-virtual {v4, p4}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setTitle(Ljava/lang/CharSequence;)V

    .line 504
    :cond_93
    invoke-virtual {v4}, Lcom/pantech/app/music/view/SkyMusicPopupList;->show()V

    .line 506
    return-object v4
.end method

.method public static showSkyEditPopupList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/view/View$OnClickListener;Ljava/lang/String;ZZ)Lcom/pantech/app/music/view/SkyMusicPopupList;
    .registers 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "hint"    # Ljava/lang/String;
    .param p3, "defaultText"    # Ljava/lang/String;
    .param p4, "maxLength"    # I
    .param p5, "callback"    # Landroid/view/View$OnClickListener;
    .param p6, "tip"    # Ljava/lang/String;
    .param p7, "induce"    # Z
    .param p8, "isEmojiDisable"    # Z

    .prologue
    .line 264
    const/16 p7, 0x0

    .line 265
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 266
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f030091

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 267
    .local v6, "mView":Landroid/view/View;
    const v8, 0x7f10014a

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .local v2, "editTextForPlayListName":Landroid/widget/EditText;
    move-object v5, p0

    .line 268
    check-cast v5, Landroid/app/Activity;

    .line 270
    .local v5, "mActivity":Landroid/app/Activity;
    new-instance v7, Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-direct {v7, p0}, Lcom/pantech/app/music/view/SkyMusicPopupList;-><init>(Landroid/content/Context;)V

    .line 273
    .local v7, "popupList":Lcom/pantech/app/music/view/SkyMusicPopupList;
    const v8, 0x7f080090

    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ac

    .line 275
    invoke-virtual {v2, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :goto_2f
    if-eqz p3, :cond_34

    .line 284
    invoke-virtual {v2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_34
    const/4 v8, 0x1

    new-array v3, v8, [Landroid/text/InputFilter;

    .line 288
    .local v3, "filterArr":[Landroid/text/InputFilter;
    const/4 v8, 0x0

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    move/from16 v0, p4

    invoke-direct {v9, v0}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v3, v8

    .line 290
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 291
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 292
    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 293
    const/high16 v8, 0x80000

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setInputType(I)V

    .line 294
    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 295
    if-eqz p8, :cond_5b

    .line 296
    const-string v8, "com.pantech.skyime.noEmoji"

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 298
    :cond_5b
    const/4 v8, -0x1

    const v9, 0x7f08001b

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/pantech/app/music/utils/ListUtils$6;

    move-object/from16 v0, p5

    invoke-direct {v10, v0, v2}, Lcom/pantech/app/music/utils/ListUtils$6;-><init>(Landroid/view/View$OnClickListener;Landroid/widget/EditText;)V

    invoke-virtual {v7, v8, v9, v10}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 309
    const/4 v8, -0x2

    const v9, 0x7f0800af

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/pantech/app/music/utils/ListUtils$7;

    invoke-direct {v10}, Lcom/pantech/app/music/utils/ListUtils$7;-><init>()V

    invoke-virtual {v7, v8, v9, v10}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 319
    invoke-virtual {v7, p1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setTitle(Ljava/lang/CharSequence;)V

    .line 321
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSpecificDialog()Z

    move-result v8

    if-eqz v8, :cond_97

    if-eqz p6, :cond_97

    .line 323
    if-eqz p7, :cond_8e

    .line 324
    const/4 v8, -0x2

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setIcon(I)V

    .line 326
    :cond_8e
    const/4 v8, -0x3

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setIcon(I)V

    .line 327
    move-object/from16 v0, p6

    invoke-virtual {v7, v0}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setTitle(Ljava/lang/CharSequence;)V

    .line 330
    :cond_97
    invoke-virtual {v7, v6}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setView(Landroid/view/View;)V

    .line 331
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setCanceledOnTouchOutside(Z)V

    .line 332
    invoke-virtual {v7}, Lcom/pantech/app/music/view/SkyMusicPopupList;->show()V

    .line 334
    new-instance v8, Lcom/pantech/app/music/utils/ListUtils$8;

    invoke-direct {v8, v5, v2}, Lcom/pantech/app/music/utils/ListUtils$8;-><init>(Landroid/app/Activity;Landroid/widget/EditText;)V

    const-wide/16 v10, 0x12c

    invoke-virtual {v2, v8, v10, v11}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 346
    return-object v7

    .line 279
    .end local v3    # "filterArr":[Landroid/text/InputFilter;
    :cond_ac
    invoke-virtual {v2, p2}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method

.method public static showSkyInformOneButtonPopupList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;Ljava/lang/String;)Lcom/pantech/app/music/view/SkyMusicPopupList;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "bodyMessage"    # Ljava/lang/String;
    .param p3, "btnText"    # Ljava/lang/String;
    .param p4, "popupListId"    # I
    .param p5, "callback"    # Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;
    .param p6, "tip"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x3

    .line 118
    new-instance v0, Lcom/pantech/app/music/view/SkyMusicPopupList;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/view/SkyMusicPopupList;-><init>(Landroid/content/Context;)V

    .line 120
    .local v0, "popupList":Lcom/pantech/app/music/view/SkyMusicPopupList;
    const/4 v1, 0x0

    .line 122
    .local v1, "titleStr":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 123
    move-object v1, p1

    .line 127
    :goto_10
    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setTitle(Ljava/lang/CharSequence;)V

    .line 128
    invoke-virtual {v0, p2}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setMessage(Ljava/lang/String;)V

    .line 130
    new-instance v2, Lcom/pantech/app/music/utils/ListUtils$3;

    invoke-direct {v2, v0, p5, p4}, Lcom/pantech/app/music/utils/ListUtils$3;-><init>(Lcom/pantech/app/music/view/SkyMusicPopupList;Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;I)V

    invoke-virtual {v0, v3, p3, v2}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 143
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setCanceledOnTouchOutside(Z)V

    .line 145
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSpecificDialog()Z

    move-result v2

    if-eqz v2, :cond_30

    if-eqz p6, :cond_30

    .line 147
    invoke-virtual {v0, v3}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setIcon(I)V

    .line 148
    invoke-virtual {v0, p6}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    :cond_30
    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyMusicPopupList;->show()V

    .line 153
    return-object v0

    .line 125
    :cond_34
    const v2, 0x7f08003e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_10
.end method

.method public static showSkyInformPopupList(Landroid/content/Context;Ljava/lang/String;IILcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;Ljava/lang/String;)Lcom/pantech/app/music/view/SkyMusicPopupList;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "popupListId"    # I
    .param p3, "sec"    # I
    .param p4, "callback"    # Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;
    .param p5, "tip"    # Ljava/lang/String;

    .prologue
    .line 159
    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/pantech/app/music/utils/ListUtils;->showSkyInformPopupList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;Ljava/lang/String;)Lcom/pantech/app/music/view/SkyMusicPopupList;

    move-result-object v0

    return-object v0
.end method

.method public static showSkyInformPopupList(Landroid/content/Context;Ljava/lang/String;IILcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;ZLjava/lang/String;)Lcom/pantech/app/music/view/SkyMusicPopupList;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "popupListId"    # I
    .param p3, "sec"    # I
    .param p4, "callback"    # Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;
    .param p5, "setSound"    # Z
    .param p6, "tip"    # Ljava/lang/String;

    .prologue
    .line 221
    new-instance v0, Lcom/pantech/app/music/view/SkyMusicPopupNoButton;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/view/SkyMusicPopupNoButton;-><init>(Landroid/content/Context;)V

    .line 223
    .local v0, "popupList":Lcom/pantech/app/music/view/SkyMusicPopupList;
    const v1, 0x7f08003e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {v0, p1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setMessage(Ljava/lang/String;)V

    .line 226
    new-instance v1, Lcom/pantech/app/music/utils/ListUtils$5;

    invoke-direct {v1, p4, p2}, Lcom/pantech/app/music/utils/ListUtils$5;-><init>(Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;I)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 236
    if-eqz p3, :cond_21

    .line 238
    mul-int/lit16 v1, p3, 0x3e8

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setDispTime(I)V

    .line 241
    :cond_21
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setCanceledOnTouchOutside(Z)V

    .line 243
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSpecificDialog()Z

    move-result v1

    if-eqz v1, :cond_34

    if-eqz p6, :cond_34

    .line 245
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setIcon(I)V

    .line 246
    invoke-virtual {v0, p6}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setTitle(Ljava/lang/CharSequence;)V

    .line 249
    :cond_34
    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyMusicPopupList;->show()V

    .line 251
    if-eqz p3, :cond_3d

    .line 254
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setCancelable(Z)V

    .line 257
    :cond_3d
    return-object v0
.end method

.method public static showSkyInformPopupList(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;Ljava/lang/String;)Lcom/pantech/app/music/view/SkyMusicPopupList;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "szTitle"    # Ljava/lang/String;
    .param p2, "szMessage"    # Ljava/lang/String;
    .param p3, "popupListId"    # I
    .param p4, "sec"    # I
    .param p5, "callback"    # Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;
    .param p6, "tip"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v0, Lcom/pantech/app/music/view/SkyMusicPopupNoButton;

    invoke-direct {v0, p0}, Lcom/pantech/app/music/view/SkyMusicPopupNoButton;-><init>(Landroid/content/Context;)V

    .line 170
    .local v0, "popupList":Lcom/pantech/app/music/view/SkyMusicPopupList;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 172
    const v1, 0x7f08003e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    :goto_15
    invoke-virtual {v0, p2}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setMessage(Ljava/lang/String;)V

    .line 181
    new-instance v1, Lcom/pantech/app/music/utils/ListUtils$4;

    invoke-direct {v1, p5, p3}, Lcom/pantech/app/music/utils/ListUtils$4;-><init>(Lcom/pantech/app/music/utils/ListUtils$OnDialogInformationCallback;I)V

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 191
    if-eqz p4, :cond_27

    .line 193
    mul-int/lit16 v1, p4, 0x3e8

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setDispTime(I)V

    .line 196
    :cond_27
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setCanceledOnTouchOutside(Z)V

    .line 198
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSpecificDialog()Z

    move-result v1

    if-eqz v1, :cond_3a

    if-eqz p6, :cond_3a

    .line 200
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setIcon(I)V

    .line 201
    invoke-virtual {v0, p6}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setTitle(Ljava/lang/CharSequence;)V

    .line 204
    :cond_3a
    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyMusicPopupList;->show()V

    .line 206
    if-eqz p4, :cond_43

    .line 209
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setCancelable(Z)V

    .line 212
    :cond_43
    return-object v0

    .line 176
    :cond_44
    invoke-virtual {v0, p1}, Lcom/pantech/app/music/view/SkyMusicPopupList;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_15
.end method

.method public static unregisterBufferingListener(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 593
    const-string v0, "unregisterBufferingListener()"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 595
    if-eqz p0, :cond_a

    .line 596
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 597
    :cond_a
    return-void
.end method

.method public static unregisterCloudListener(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 614
    if-eqz p0, :cond_5

    .line 615
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 616
    :cond_5
    return-void
.end method

.method public static unregisterPlayStatusReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 552
    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 553
    :cond_5
    return-void
.end method

.method public static unregisterStatusListener(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 573
    const-string v0, "unregisterStatusListener()"

    invoke-static {v0}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;)V

    .line 575
    if-eqz p0, :cond_a

    .line 576
    invoke-virtual {p0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 577
    :cond_a
    return-void
.end method


# virtual methods
.method public divideKoreanType(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .param p1, "szVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Character;",
            ">;>;"
        }
    .end annotation

    .prologue
    const v10, 0xac00

    .line 511
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 513
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Character;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_59

    .line 515
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 517
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Character;>;"
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 519
    .local v0, "cVal":C
    if-le v0, v10, :cond_56

    .line 521
    sub-int v8, v0, v10

    int-to-char v7, v8

    .line 523
    .local v7, "uniVal":C
    rem-int/lit8 v8, v7, 0x1c

    div-int/lit8 v8, v8, 0x1c

    sub-int v8, v7, v8

    div-int/lit8 v8, v8, 0x15

    add-int/lit16 v8, v8, 0x1100

    int-to-char v1, v8

    .line 524
    .local v1, "cho":C
    rem-int/lit8 v8, v7, 0x1c

    div-int/lit8 v8, v8, 0x1c

    sub-int v8, v7, v8

    rem-int/lit8 v8, v8, 0x15

    add-int/lit16 v8, v8, 0x1161

    int-to-char v4, v8

    .line 525
    .local v4, "jung":C
    rem-int/lit8 v8, v7, 0x1c

    add-int/lit16 v8, v8, 0x11a7

    int-to-char v3, v8

    .line 527
    .local v3, "jong":C
    const-string v8, "cho"

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    const-string v8, "jung"

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    const-string v8, "jong"

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    .end local v1    # "cho":C
    .end local v3    # "jong":C
    .end local v4    # "jung":C
    .end local v7    # "uniVal":C
    :cond_56
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 536
    .end local v0    # "cVal":C
    .end local v6    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Character;>;"
    :cond_59
    return-object v5
.end method
