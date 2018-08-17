.class public Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;
.super Landroid/app/Activity;
.source "AudioEffectControlPanelPicker.java"


# instance fields
.field private mClickedPos:I

.field private mEQDialog:Landroid/app/AlertDialog;

.field private mPanelList:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->mClickedPos:I

    return-void
.end method

.method static synthetic access$000(Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;

    .prologue
    .line 23
    iget v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->mClickedPos:I

    return v0
.end method

.method static synthetic access$002(Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;I)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->mClickedPos:I

    return p1
.end method

.method private showPickerDialog([Ljava/lang/String;ILandroid/database/MatrixCursor;)V
    .registers 7
    .param p1, "list"    # [Ljava/lang/String;
    .param p2, "defpanelIdx"    # I
    .param p3, "c"    # Landroid/database/MatrixCursor;

    .prologue
    .line 125
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    .local v0, "mMenuDialog":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f050026

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 127
    const v1, 0x7f050015

    new-instance v2, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$1;

    invoke-direct {v2, p0, p3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$1;-><init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;Landroid/database/MatrixCursor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 143
    const v1, 0x7f050014

    new-instance v2, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$2;

    invoke-direct {v2, p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$2;-><init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 153
    new-instance v1, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$3;

    invoke-direct {v1, p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$3;-><init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 164
    new-instance v1, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$4;

    invoke-direct {v1, p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker$4;-><init>(Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->mEQDialog:Landroid/app/AlertDialog;

    .line 175
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const-string v17, "AudioEffectControlPanelPicker onCreate"

    invoke-static/range {v17 .. v17}, Lcom/pantech/app/musicfx/utils/MLog;->i(Ljava/lang/String;)V

    .line 36
    const v17, 0x7f030019

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->setContentView(I)V

    .line 38
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v5, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, "_id"

    aput-object v18, v5, v17

    const/16 v17, 0x1

    const-string v18, "title"

    aput-object v18, v5, v17

    const/16 v17, 0x2

    const-string v18, "package"

    aput-object v18, v5, v17

    const/16 v17, 0x3

    const-string v18, "name"

    aput-object v18, v5, v17

    .line 39
    .local v5, "cols":[Ljava/lang/String;
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-direct {v3, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 41
    .local v3, "c":Landroid/database/MatrixCursor;
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 42
    .local v12, "pmgr":Landroid/content/pm/PackageManager;
    new-instance v8, Landroid/content/Intent;

    const-string v17, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .local v8, "i":Landroid/content/Intent;
    const/16 v17, 0x200

    move/from16 v0, v17

    invoke-virtual {v12, v8, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    .line 44
    .local v14, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v17, "audioFxSettingPreference"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 45
    .local v13, "pref":Landroid/content/SharedPreferences;
    const-string v17, "com.pantech.app.musicfx.audiofx.defaultpanelpackage"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 46
    .local v16, "savedDefPackage":Ljava/lang/String;
    const-string v17, "com.pantech.app.musicfx.audiofx.defaultpanelname"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v13, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 48
    .local v15, "savedDefName":Ljava/lang/String;
    const/4 v4, -0x1

    .line 49
    .local v4, "cnt":I
    const/4 v6, 0x0

    .line 51
    .local v6, "defpanelidx":I
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_76
    :goto_76
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_136

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 53
    .local v7, "foo":Landroid/content/pm/ResolveInfo;
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    const-class v18, Lcom/pantech/app/musicfx/audiofx/AudioEffectCompatibility$Redirector;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_76

    .line 56
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    .line 57
    .local v11, "name":Ljava/lang/CharSequence;
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    aput-object v11, v17, v18

    const/16 v18, 0x2

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    const/16 v18, 0x3

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 60
    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_76

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_76

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    move/from16 v17, v0

    if-eqz v17, :cond_76

    .line 65
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "AudioEffectControlPanelPicker default package: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/pantech/app/musicfx/utils/MLog;->w(Ljava/lang/String;)V

    .line 68
    move v6, v4

    goto/16 :goto_76

    .line 72
    .end local v7    # "foo":Landroid/content/pm/ResolveInfo;
    .end local v11    # "name":Ljava/lang/CharSequence;
    :cond_136
    move-object/from16 v0, p0

    iput v6, v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->mClickedPos:I

    .line 75
    if-eqz v3, :cond_1a6

    invoke-virtual {v3}, Landroid/database/MatrixCursor;->getCount()I

    move-result v17

    if-lez v17, :cond_1a6

    .line 77
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->moveToFirst()Z

    .line 79
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->getCount()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->mPanelList:[Ljava/lang/String;

    .line 80
    const/4 v10, 0x0

    .line 84
    .local v10, "j":I
    :cond_156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->mPanelList:[Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "title"

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v17, v10

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->mPanelList:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v10

    if-eqz v17, :cond_186

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->mPanelList:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v10

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_190

    .line 88
    :cond_186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->mPanelList:[Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, " "

    aput-object v18, v17, v10

    .line 91
    :cond_190
    add-int/lit8 v10, v10, 0x1

    .line 93
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->moveToNext()Z

    move-result v17

    if-nez v17, :cond_156

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->mPanelList:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v6, v3}, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->showPickerDialog([Ljava/lang/String;ILandroid/database/MatrixCursor;)V

    .line 101
    .end local v10    # "j":I
    :goto_1a5
    return-void

    .line 99
    :cond_1a6
    invoke-virtual/range {p0 .. p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->finish()V

    goto :goto_1a5
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->mEQDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->mEQDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 117
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->mEQDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 119
    :cond_11
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 120
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/audiofx/AudioEffectControlPanelPicker;->finish()V

    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 110
    return-void
.end method
