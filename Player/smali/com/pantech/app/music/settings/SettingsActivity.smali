.class public Lcom/pantech/app/music/settings/SettingsActivity;
.super Lcom/pantech/app/music/settings/AppCompatPreferenceActivity;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/pantech/app/music/library/ListDialog$NoticeDialogListener;


# static fields
.field private static final REQUEST_CODE_PERMISSION:I = 0x2710

.field private static final TAG:Ljava/lang/String; = "MusicSettings"


# instance fields
.field mAudioEffect:Landroid/preference/Preference;

.field mAutoStop:Landroid/preference/Preference;

.field private mAutoStopControl:Lcom/pantech/app/music/assist/MusicAutoStopControl;

.field mDialog:Landroid/app/AlertDialog;

.field mLastClickedTime:J

.field mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

.field mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

.field mToast:Landroid/widget/Toast;

.field mViewCategoryItem:Landroid/preference/Preference;

.field sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/pantech/app/music/settings/AppCompatPreferenceActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/music/settings/SettingsActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/settings/SettingsActivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->startAudioEffectPanel()V

    return-void
.end method

.method static synthetic access$100(Lcom/pantech/app/music/settings/SettingsActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/pantech/app/music/settings/SettingsActivity;

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->setCategoryViewItemDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/pantech/app/music/settings/SettingsActivity;)Lcom/pantech/app/music/assist/MusicAutoStopControl;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/settings/SettingsActivity;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mAutoStopControl:Lcom/pantech/app/music/assist/MusicAutoStopControl;

    return-object v0
.end method

.method private checkHifiAudio()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 443
    iget-object v2, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v2, :cond_32

    .line 445
    :try_start_5
    iget-object v2, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/list/module/CommonThreadHandler;->getIsHifiAudio(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isUseHifiAudio()Z

    move-result v2

    if-eqz v2, :cond_32

    iget-object v2, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v2}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getIsBTConnection()Z

    move-result v2

    if-nez v2, :cond_32

    .line 446
    const v2, 0x7f080132

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/pantech/app/music/settings/SettingsActivity;->showMsgOnToast(Ljava/lang/String;)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_31} :catch_33

    .line 447
    const/4 v1, 0x1

    .line 455
    :cond_32
    :goto_32
    return v1

    .line 449
    :catch_33
    move-exception v0

    .line 450
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_32
.end method

.method public static getAudioSessionID(Lcom/pantech/app/music/service/IMusicPlaybackService;)I
    .registers 5
    .param p0, "service"    # Lcom/pantech/app/music/service/IMusicPlaybackService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 428
    if-nez p0, :cond_4

    .line 439
    :goto_3
    return v1

    .line 430
    :cond_4
    const-string v2, "MusicSettings"

    const-string v3, "getAudioSessionID() "

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    :try_start_b
    invoke-interface {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getAudioSessionId()I
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_e} :catch_10

    move-result v1

    goto :goto_3

    .line 435
    :catch_10
    move-exception v0

    .line 436
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3
.end method

.method private getCategoryViewItem()V
    .registers 10

    .prologue
    .line 414
    const-string v6, "category_view_items"

    invoke-virtual {p0, v6}, Lcom/pantech/app/music/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 415
    .local v4, "preference":Landroid/preference/Preference;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/pantech/app/music/library/helper/TabListHelper;->getTabListEnable(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    .line 418
    .local v5, "titleArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/library/FragmentInfo$Category;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 419
    .local v1, "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/pantech/app/music/library/FragmentInfo$Category;->toString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    .line 421
    .end local v1    # "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    :cond_42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "categoryViewItems":Ljava/lang/String;
    const-string v6, "MusicSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCategoryViewItem() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    invoke-virtual {v4, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 425
    return-void
.end method

.method private setCategoryViewItemDialog()V
    .registers 4

    .prologue
    .line 386
    const-string v1, "MusicSettings"

    const-string v2, "setCategoryViewItemDialog()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-static {p0}, Lcom/pantech/app/music/library/helper/TabListHelper;->showTabSelectDialog(Landroid/app/Activity;)Lcom/pantech/app/music/library/ListDialog;

    move-result-object v0

    .line 411
    .local v0, "dialogFragment":Lcom/pantech/app/music/library/ListDialog;
    return-void
.end method

.method private setupActionBar()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 311
    invoke-virtual {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 312
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_4b

    .line 313
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 314
    .local v1, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0102

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 315
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 319
    invoke-virtual {v0, v4}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0800a8

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f080092

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 322
    .end local v1    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    :cond_4b
    return-void
.end method

.method private setupStatusBar()V
    .registers 4

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0102

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 326
    return-void
.end method

.method private showMsgOnToast(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 329
    const-string v0, "MusicSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showMsgOnToast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_21

    .line 332
    iget-object v0, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 335
    :cond_21
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/pantech/app/music/common/MusicUtils;->makeTextToast(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mToast:Landroid/widget/Toast;

    .line 336
    iget-object v0, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_38

    .line 337
    iget-object v0, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 340
    :cond_38
    return-void
.end method

.method private startAudioEffectPanel()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->checkHifiAudio()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 382
    :cond_6
    :goto_6
    return-void

    .line 347
    :cond_7
    iget-object v2, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-static {v2}, Lcom/pantech/app/music/settings/SettingsActivity;->getAudioSessionID(Lcom/pantech/app/music/service/IMusicPlaybackService;)I

    move-result v2

    if-ltz v2, :cond_6

    .line 348
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL_OEM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 350
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "android.media.extra.AUDIO_SESSION"

    iget-object v3, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    invoke-interface {v3}, Lcom/pantech/app/music/service/IMusicPlaybackService;->getAudioSessionId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 353
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/pantech/app/music/settings/SettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_6

    .line 355
    :cond_31
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 356
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f08007c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08019d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f08001b

    new-instance v4, Lcom/pantech/app/music/settings/SettingsActivity$5;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/settings/SettingsActivity$5;-><init>(Lcom/pantech/app/music/settings/SettingsActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/pantech/app/music/settings/SettingsActivity$4;

    invoke-direct {v3, p0}, Lcom/pantech/app/music/settings/SettingsActivity$4;-><init>(Lcom/pantech/app/music/settings/SettingsActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 378
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mDialog:Landroid/app/AlertDialog;

    .line 379
    iget-object v2, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_6
.end method


# virtual methods
.method getHeadersLayout()Landroid/view/View;
    .registers 6

    .prologue
    .line 163
    const-string v1, "headers"

    .line 165
    .local v1, "viewIdName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "id"

    const-string v4, "android"

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 166
    .local v0, "resId":I
    invoke-virtual {p0, v0}, Lcom/pantech/app/music/settings/SettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 284
    const-string v0, "MusicSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult() request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    invoke-super {p0, p1, p2, p3}, Lcom/pantech/app/music/settings/AppCompatPreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 286
    sparse-switch p1, :sswitch_data_4a

    .line 305
    :goto_28
    return-void

    .line 288
    :sswitch_29
    invoke-direct {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->checkHifiAudio()Z

    goto :goto_28

    .line 293
    :sswitch_2d
    const/4 v0, -0x1

    if-eq p2, v0, :cond_34

    const/16 v0, 0x64

    if-ne p2, v0, :cond_3f

    .line 295
    :cond_34
    invoke-virtual {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->finish()V

    .line 296
    invoke-virtual {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_28

    .line 300
    :cond_3f
    const v0, 0x7f08010c

    invoke-static {p0, v0}, Lcom/pantech/app/music/common/MusicUtils;->showToast(Landroid/content/Context;I)V

    .line 301
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V

    goto :goto_28

    .line 286
    nop

    :sswitch_data_4a
    .sparse-switch
        0x1 -> :sswitch_29
        0x2710 -> :sswitch_2d
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 81
    invoke-super {p0, p1}, Lcom/pantech/app/music/settings/AppCompatPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const-string v1, "MusicSettings"

    const-string v2, "onCreate  "

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/16 v1, 0x2710

    invoke-static {p0, v1}, Lcom/pantech/app/music/utils/ActivityUtils;->makeRequestPermissionDialog(Landroid/app/Activity;I)Z

    move-result v1

    sput-boolean v1, Lcom/pantech/app/music/utils/ActivityUtils;->mHasPermission:Z

    .line 86
    sget-boolean v1, Lcom/pantech/app/music/utils/ActivityUtils;->mHasPermission:Z

    if-eqz v1, :cond_77

    .line 87
    invoke-static {p0, p0}, Lcom/pantech/app/music/common/MusicUtils;->bindToService(Landroid/app/Activity;Landroid/content/ServiceConnection;)Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    .line 96
    invoke-virtual {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->getHeadersLayout()Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "headersLayout":Landroid/view/View;
    if-eqz v0, :cond_7f

    .line 98
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 102
    :goto_26
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/settings/SettingsActivity;->setVolumeControlStream(I)V

    .line 104
    invoke-direct {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->setupStatusBar()V

    .line 105
    invoke-direct {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->setupActionBar()V

    .line 108
    const v1, 0x7f060002

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/settings/SettingsActivity;->addPreferencesFromResource(I)V

    .line 109
    invoke-direct {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->getCategoryViewItem()V

    .line 112
    new-instance v1, Lcom/pantech/app/music/assist/MusicAutoStopControl;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/assist/MusicAutoStopControl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mAutoStopControl:Lcom/pantech/app/music/assist/MusicAutoStopControl;

    .line 114
    const-string v1, "audio_effect"

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mAudioEffect:Landroid/preference/Preference;

    .line 115
    iget-object v1, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mAudioEffect:Landroid/preference/Preference;

    new-instance v2, Lcom/pantech/app/music/settings/SettingsActivity$1;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/settings/SettingsActivity$1;-><init>(Lcom/pantech/app/music/settings/SettingsActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 132
    const-string v1, "category_view_items"

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mViewCategoryItem:Landroid/preference/Preference;

    .line 133
    iget-object v1, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mViewCategoryItem:Landroid/preference/Preference;

    new-instance v2, Lcom/pantech/app/music/settings/SettingsActivity$2;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/settings/SettingsActivity$2;-><init>(Lcom/pantech/app/music/settings/SettingsActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 146
    const-string v1, "auto_stop"

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mAutoStop:Landroid/preference/Preference;

    .line 147
    iget-object v1, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mAutoStop:Landroid/preference/Preference;

    new-instance v2, Lcom/pantech/app/music/settings/SettingsActivity$3;

    invoke-direct {v2, p0}, Lcom/pantech/app/music/settings/SettingsActivity$3;-><init>(Lcom/pantech/app/music/settings/SettingsActivity;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 160
    .end local v0    # "headersLayout":Landroid/view/View;
    :goto_76
    return-void

    .line 89
    :cond_77
    const-string v1, "MusicSettings"

    const-string v2, "no permission!!!"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_76

    .line 100
    .restart local v0    # "headersLayout":Landroid/view/View;
    :cond_7f
    const-string v1, "MusicSettings"

    const-string v2, "headers layout -> null"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugW(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 199
    const-string v0, "MusicSettings"

    const-string v1, "onDestroy  "

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mServiceToken:Lcom/pantech/app/music/common/MusicUtils$ServiceToken;

    invoke-static {v0}, Lcom/pantech/app/music/common/MusicUtils;->unbindFromService(Lcom/pantech/app/music/common/MusicUtils$ServiceToken;)V

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 203
    iget-object v0, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_27

    .line 204
    iget-object v0, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 205
    const-string v0, "MusicSettings"

    const-string v1, "onDestroy() mDialog isShowing"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 209
    :cond_27
    invoke-super {p0}, Lcom/pantech/app/music/settings/AppCompatPreferenceActivity;->onDestroy()V

    .line 210
    return-void
.end method

.method public onDialogNegativeClick(Landroid/app/DialogFragment;)V
    .registers 2
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .prologue
    .line 509
    return-void
.end method

.method public onDialogPositiveClick(Landroid/app/DialogFragment;)V
    .registers 6
    .param p1, "dialog"    # Landroid/app/DialogFragment;

    .prologue
    .line 497
    move-object v0, p1

    check-cast v0, Lcom/pantech/app/music/library/ListDialog;

    .line 499
    .local v0, "dialogFragment":Lcom/pantech/app/music/library/ListDialog;
    const-string v1, "MusicSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDialogPositiveClick dialogFragment.getGroupList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/pantech/app/music/library/ListDialog;->getGroupList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->debugE(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {v0}, Lcom/pantech/app/music/library/ListDialog;->getGroupList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/pantech/app/music/utils/PreferenceUtils;->saveTabCategory(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 503
    invoke-direct {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->getCategoryViewItem()V

    .line 504
    return-void
.end method

.method public onItemSelected(JLcom/pantech/app/music/library/FragmentInfo$Category;)V
    .registers 4
    .param p1, "itemID"    # J
    .param p3, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;

    .prologue
    .line 514
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 259
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 265
    invoke-super {p0, p1}, Lcom/pantech/app/music/settings/AppCompatPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_b
    return v0

    .line 261
    :pswitch_c
    invoke-virtual {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->finish()V

    .line 262
    const/4 v0, 0x1

    goto :goto_b

    .line 259
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 185
    const-string v1, "MusicSettings"

    const-string v2, "onPause  "

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 188
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_1c

    .line 189
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/settings/SettingsActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 190
    iget-object v1, p0, Lcom/pantech/app/music/settings/SettingsActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1c

    .line 191
    iget-object v1, p0, Lcom/pantech/app/music/settings/SettingsActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 194
    :cond_1c
    invoke-super {p0}, Lcom/pantech/app/music/settings/AppCompatPreferenceActivity;->onPause()V

    .line 195
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 171
    const-string v1, "MusicSettings"

    const-string v2, "onResume  "

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 174
    .local v0, "preferenceScreen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_1c

    .line 175
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/music/settings/SettingsActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 176
    iget-object v1, p0, Lcom/pantech/app/music/settings/SettingsActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1c

    .line 177
    iget-object v1, p0, Lcom/pantech/app/music/settings/SettingsActivity;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 180
    :cond_1c
    invoke-super {p0}, Lcom/pantech/app/music/settings/AppCompatPreferenceActivity;->onResume()V

    .line 181
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 271
    const-string v0, "MusicSettings"

    const-string v1, "onServiceConnected  "

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {p2}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 273
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 278
    const-string v0, "MusicSettings"

    const-string v1, "onServiceDisconnected  "

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mService:Lcom/pantech/app/music/service/IMusicPlaybackService;

    .line 280
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 10
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 214
    const-string v3, "MusicSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSharedPreferenceChanged  key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_c8

    :cond_21
    :goto_21
    packed-switch v3, :pswitch_data_d6

    .line 255
    :goto_24
    return-void

    .line 218
    :sswitch_25
    const-string v5, "list_display_filename"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    move v3, v4

    goto :goto_21

    :sswitch_2f
    const-string v5, "headset_plug_auto_play"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v3, 0x1

    goto :goto_21

    :sswitch_39
    const-string v5, "connect_data_notification"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    const/4 v3, 0x2

    goto :goto_21

    .line 220
    :pswitch_43
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 221
    .local v0, "bChangedValue":Z
    const-string v3, "MusicSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSharedPreferenceChanged  KEY_VIEW_LIST_FILENAME = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/pantech/app/music/utils/PreferenceUtils;->saveDisplayFileName(Landroid/content/Context;Z)V

    .line 226
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.pantech.app.music.action.LISTCHANGETITLE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v2, "changeTitleToList":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/pantech/app/music/settings/SettingsActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.pantech.app.music.changetitle"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v1, "changeTitle":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/pantech/app/music/settings/SettingsActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_24

    .line 234
    .end local v0    # "bChangedValue":Z
    .end local v1    # "changeTitle":Landroid/content/Intent;
    .end local v2    # "changeTitleToList":Landroid/content/Intent;
    :pswitch_7b
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 235
    .restart local v0    # "bChangedValue":Z
    const-string v3, "MusicSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSharedPreferenceChanged  KEY_AUTO_PLAY = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "headset_plug_auto_play"

    invoke-static {v3, v4, v0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_24

    .line 247
    .end local v0    # "bChangedValue":Z
    :pswitch_a1
    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 248
    .restart local v0    # "bChangedValue":Z
    const-string v3, "MusicSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSharedPreferenceChanged  KEY_NETWORK_NOTI = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/pantech/app/music/settings/SettingsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connect_data_notification"

    invoke-static {v3, v4, v0}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->setPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_24

    .line 218
    :sswitch_data_c8
    .sparse-switch
        -0x5169fcb5 -> :sswitch_39
        0x4f6741b0 -> :sswitch_2f
        0x786d6665 -> :sswitch_25
    .end sparse-switch

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_43
        :pswitch_7b
        :pswitch_a1
    .end packed-switch
.end method

.method preventDoubleClick(J)Z
    .registers 10
    .param p1, "lastClickedTime"    # J

    .prologue
    .line 489
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    const-wide/16 v4, 0x3e8

    cmp-long v1, v2, v4

    if-gez v1, :cond_13

    const/4 v0, 0x1

    .line 490
    .local v0, "bResult":Z
    :goto_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/pantech/app/music/settings/SettingsActivity;->mLastClickedTime:J

    .line 491
    return v0

    .line 489
    .end local v0    # "bResult":Z
    :cond_13
    const/4 v0, 0x0

    goto :goto_c
.end method
