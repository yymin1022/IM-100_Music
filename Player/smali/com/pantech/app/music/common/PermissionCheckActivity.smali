.class public Lcom/pantech/app/music/common/PermissionCheckActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PermissionCheckActivity.java"


# static fields
.field private static final ACTIVITY_MODE:[Ljava/lang/String;

.field private static final FROM_ACTIVITY:I = 0x2

.field private static final FROM_SERVICE:I = 0x0

.field private static final FROM_STARTER_ACTIVITY:I = 0x1

.field private static final MODE_PERMISSION_REQUEST_FOR_APP:I = 0x0

.field private static final MODE_PERMISSION_REQUEST_FOR_FUNC:I = 0x1

.field private static final MODE_PERMISSION_REQUEST_FOR_WIDGET:I = 0x2

.field private static final MODE_PERMISSION_SET_FOR_APP:I = 0x3

.field private static final MODE_PERMISSION_SET_FOR_FUNC:I = 0x4

.field private static final MODE_PERMISSION_SET_FOR_WIDGET:I = 0x6

.field private static PERMISSION_REQ_CODE:I = 0x0

.field private static REQUEST_APP_SETTINGS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MusicPermissionCheckActivity"

.field private static mActivityMode:I

.field private static mToast:Landroid/widget/Toast;


# instance fields
.field mDialog:Landroid/app/AlertDialog;

.field private mFromService:I

.field mRequestPermission:Ljava/lang/String;

.field private mRequestPermissionCode:I

.field requestPermissionArr:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 28
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MODE_PERMISSION_REQUEST_FOR_APP"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MODE_PERMISSION_REQUEST_FOR_FUNC"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MODE_PERMISSION_REQUEST_FOR_WIDGET"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "MODE_PERMISSION_SET_FOR_APP"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "MODE_PERMISSION_SET_FOR_FUNC"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "MODE_PERMISSION_SET_FOR_WIDGET"

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/music/common/PermissionCheckActivity;->ACTIVITY_MODE:[Ljava/lang/String;

    .line 34
    const/16 v0, 0x3e5

    sput v0, Lcom/pantech/app/music/common/PermissionCheckActivity;->PERMISSION_REQ_CODE:I

    .line 35
    const/16 v0, 0x3e7

    sput v0, Lcom/pantech/app/music/common/PermissionCheckActivity;->REQUEST_APP_SETTINGS:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/pantech/app/music/common/PermissionCheckActivity;->ACTIVITY_MODE:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()I
    .registers 1

    .prologue
    .line 18
    sget v0, Lcom/pantech/app/music/common/PermissionCheckActivity;->mActivityMode:I

    return v0
.end method

.method static synthetic access$200()I
    .registers 1

    .prologue
    .line 18
    sget v0, Lcom/pantech/app/music/common/PermissionCheckActivity;->REQUEST_APP_SETTINGS:I

    return v0
.end method

.method private checkActivityMode()I
    .registers 5

    .prologue
    .line 172
    const/4 v0, 0x1

    .line 174
    .local v0, "activityMode":I
    iget v1, p0, Lcom/pantech/app/music/common/PermissionCheckActivity;->mFromService:I

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/pantech/app/music/common/PermissionCheckActivity;->mFromService:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_32

    .line 175
    :cond_a
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/common/PermissionCheckActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 176
    const/4 v0, 0x1

    .line 188
    :cond_13
    :goto_13
    const-string v1, "MusicPermissionCheckActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkActivityMode() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/pantech/app/music/common/PermissionCheckActivity;->ACTIVITY_MODE:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return v0

    .line 178
    :cond_30
    const/4 v0, 0x4

    goto :goto_13

    .line 180
    :cond_32
    iget v1, p0, Lcom/pantech/app/music/common/PermissionCheckActivity;->mFromService:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 181
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/common/PermissionCheckActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 182
    const/4 v0, 0x0

    goto :goto_13

    .line 184
    :cond_41
    const/4 v0, 0x3

    goto :goto_13
.end method

.method private setLayout_ActivityMode(I)V
    .registers 10
    .param p1, "activityMode"    # I

    .prologue
    const v7, 0x7f080109

    const/4 v6, 0x3

    .line 193
    const-string v2, "MusicPermissionCheckActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLayout_ActivityMode() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/common/PermissionCheckActivity;->ACTIVITY_MODE:[Ljava/lang/String;

    sget v5, Lcom/pantech/app/music/common/PermissionCheckActivity;->mActivityMode:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    if-eqz p1, :cond_27

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2f

    .line 197
    :cond_27
    iget-object v2, p0, Lcom/pantech/app/music/common/PermissionCheckActivity;->requestPermissionArr:[Ljava/lang/String;

    iget v3, p0, Lcom/pantech/app/music/common/PermissionCheckActivity;->mRequestPermissionCode:I

    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/common/PermissionCheckActivity;->requestPermissions([Ljava/lang/String;I)V

    .line 246
    :cond_2e
    :goto_2e
    return-void

    .line 199
    :cond_2f
    if-eq p1, v6, :cond_34

    const/4 v2, 0x4

    if-ne p1, v2, :cond_2e

    .line 201
    :cond_34
    if-ne p1, v6, :cond_98

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f080107

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/common/PermissionCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v7}, Lcom/pantech/app/music/common/PermissionCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, "dialogMsg":Ljava/lang/String;
    :goto_58
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 209
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0800a8

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/common/PermissionCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0800af

    new-instance v4, Lcom/pantech/app/music/common/PermissionCheckActivity$3;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/common/PermissionCheckActivity$3;-><init>(Lcom/pantech/app/music/common/PermissionCheckActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080092

    new-instance v4, Lcom/pantech/app/music/common/PermissionCheckActivity$2;

    invoke-direct {v4, p0}, Lcom/pantech/app/music/common/PermissionCheckActivity$2;-><init>(Lcom/pantech/app/music/common/PermissionCheckActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/pantech/app/music/common/PermissionCheckActivity$1;

    invoke-direct {v3, p0}, Lcom/pantech/app/music/common/PermissionCheckActivity$1;-><init>(Lcom/pantech/app/music/common/PermissionCheckActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/common/PermissionCheckActivity;->mDialog:Landroid/app/AlertDialog;

    .line 244
    iget-object v2, p0, Lcom/pantech/app/music/common/PermissionCheckActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_2e

    .line 205
    .end local v0    # "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "dialogMsg":Ljava/lang/String;
    :cond_98
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f080108

    invoke-virtual {p0, v3}, Lcom/pantech/app/music/common/PermissionCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v7}, Lcom/pantech/app/music/common/PermissionCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "dialogMsg":Ljava/lang/String;
    goto :goto_58
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    .line 120
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/common/PermissionCheckActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, "checkPrecondition":I
    const-string v2, "MusicPermissionCheckActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult()  mActivityMode : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/pantech/app/music/common/PermissionCheckActivity;->ACTIVITY_MODE:[Ljava/lang/String;

    sget v4, Lcom/pantech/app/music/common/PermissionCheckActivity;->mActivityMode:I

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", checkPrecondition : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_4e

    const-string v1, "PERMISSION_GRANTED"

    :goto_29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    sget v1, Lcom/pantech/app/music/common/PermissionCheckActivity;->REQUEST_APP_SETTINGS:I

    if-ne p1, v1, :cond_4a

    .line 125
    if-nez v0, :cond_51

    .line 126
    sget v1, Lcom/pantech/app/music/common/PermissionCheckActivity;->mActivityMode:I

    if-eq v1, v5, :cond_42

    sget v1, Lcom/pantech/app/music/common/PermissionCheckActivity;->mActivityMode:I

    if-ne v1, v6, :cond_4a

    .line 127
    :cond_42
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/common/PermissionCheckActivity;->setResult(I)V

    .line 128
    invoke-virtual {p0}, Lcom/pantech/app/music/common/PermissionCheckActivity;->finish()V

    .line 142
    :cond_4a
    :goto_4a
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 143
    return-void

    .line 122
    :cond_4e
    const-string v1, "PERMISSION_DENIED"

    goto :goto_29

    .line 131
    :cond_51
    const-string v1, "MusicPermissionCheckActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult() PERMISSION_DENIED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/pantech/app/music/common/PermissionCheckActivity;->ACTIVITY_MODE:[Ljava/lang/String;

    sget v4, Lcom/pantech/app/music/common/PermissionCheckActivity;->mActivityMode:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    sget v1, Lcom/pantech/app/music/common/PermissionCheckActivity;->mActivityMode:I

    if-ne v1, v5, :cond_7b

    .line 134
    sput v5, Lcom/pantech/app/music/common/PermissionCheckActivity;->mActivityMode:I

    .line 138
    :cond_75
    :goto_75
    sget v1, Lcom/pantech/app/music/common/PermissionCheckActivity;->mActivityMode:I

    invoke-direct {p0, v1}, Lcom/pantech/app/music/common/PermissionCheckActivity;->setLayout_ActivityMode(I)V

    goto :goto_4a

    .line 135
    :cond_7b
    sget v1, Lcom/pantech/app/music/common/PermissionCheckActivity;->mActivityMode:I

    if-ne v1, v6, :cond_75

    .line 136
    sput v6, Lcom/pantech/app/music/common/PermissionCheckActivity;->mActivityMode:I

    goto :goto_75
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 48
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/pantech/app/music/common/PermissionCheckActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 51
    .local v0, "actionI":Landroid/content/Intent;
    const-string v2, "RequestPermission"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/pantech/app/music/common/PermissionCheckActivity;->mRequestPermission:Ljava/lang/String;

    .line 52
    iget-object v2, p0, Lcom/pantech/app/music/common/PermissionCheckActivity;->mRequestPermission:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_83

    .line 53
    new-array v2, v6, [Ljava/lang/String;

    iput-object v2, p0, Lcom/pantech/app/music/common/PermissionCheckActivity;->requestPermissionArr:[Ljava/lang/String;

    .line 54
    iget-object v2, p0, Lcom/pantech/app/music/common/PermissionCheckActivity;->requestPermissionArr:[Ljava/lang/String;

    iget-object v3, p0, Lcom/pantech/app/music/common/PermissionCheckActivity;->mRequestPermission:Ljava/lang/String;

    aput-object v3, v2, v5

    .line 59
    const-string v2, "RequestCode"

    sget v3, Lcom/pantech/app/music/common/PermissionCheckActivity;->PERMISSION_REQ_CODE:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/music/common/PermissionCheckActivity;->mRequestPermissionCode:I

    .line 60
    const-string v2, "FromService"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/pantech/app/music/common/PermissionCheckActivity;->mFromService:I

    .line 61
    const-string v2, "MusicPermissionCheckActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate()  mFromService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/pantech/app/music/common/PermissionCheckActivity;->mFromService:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRequestPermission = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/pantech/app/music/common/PermissionCheckActivity;->mRequestPermission:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/pantech/app/music/common/PermissionCheckActivity;->checkActivityMode()I

    move-result v2

    sput v2, Lcom/pantech/app/music/common/PermissionCheckActivity;->mActivityMode:I

    .line 65
    invoke-virtual {p0}, Lcom/pantech/app/music/common/PermissionCheckActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 66
    .local v1, "actionbar":Landroid/support/v7/app/ActionBar;
    if-eqz v1, :cond_77

    .line 67
    invoke-virtual {v1, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 68
    invoke-virtual {v1, v6}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 69
    const v2, 0x7f0800a8

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/common/PermissionCheckActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    :cond_77
    const v2, 0x7f030021

    invoke-virtual {p0, v2}, Lcom/pantech/app/music/common/PermissionCheckActivity;->setContentView(I)V

    .line 73
    sget v2, Lcom/pantech/app/music/common/PermissionCheckActivity;->mActivityMode:I

    invoke-direct {p0, v2}, Lcom/pantech/app/music/common/PermissionCheckActivity;->setLayout_ActivityMode(I)V

    .line 74
    .end local v1    # "actionbar":Landroid/support/v7/app/ActionBar;
    :goto_82
    return-void

    .line 56
    :cond_83
    const-string v2, "MusicPermissionCheckActivity"

    const-string v3, "onCreate() Error - null permission"

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 78
    const-string v0, "MusicPermissionCheckActivity"

    const-string v1, "onDestroy()  "

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/pantech/app/music/common/PermissionCheckActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1f

    .line 81
    iget-object v0, p0, Lcom/pantech/app/music/common/PermissionCheckActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 82
    const-string v0, "MusicPermissionCheckActivity"

    const-string v1, "onDestroy() mDialog isShowing"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/pantech/app/music/common/PermissionCheckActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 86
    :cond_1f
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 87
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 9
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v4, 0x0

    .line 92
    array-length v1, p3

    if-nez v1, :cond_5

    .line 116
    :goto_4
    return-void

    .line 96
    :cond_5
    aget v0, p3, v4

    .line 98
    .local v0, "checkPrecondition":I
    const-string v1, "MusicPermissionCheckActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRequestPermissionsResult() mRequestPermissionCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/pantech/app/music/common/PermissionCheckActivity;->mRequestPermissionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", grantResults = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget v1, p0, Lcom/pantech/app/music/common/PermissionCheckActivity;->mRequestPermissionCode:I

    if-ne p1, v1, :cond_42

    .line 101
    if-nez v0, :cond_46

    .line 102
    const-string v1, "MusicPermissionCheckActivity"

    const-string v2, "onRequestPermissionsResult() PERMISSION_GRANTED"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/pantech/app/music/common/PermissionCheckActivity;->setResult(I)V

    .line 104
    invoke-virtual {p0}, Lcom/pantech/app/music/common/PermissionCheckActivity;->finish()V

    .line 115
    :cond_42
    :goto_42
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_4

    .line 106
    :cond_46
    const-string v1, "MusicPermissionCheckActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRequestPermissionsResult() PERMISSION_DENIED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/pantech/app/music/common/PermissionCheckActivity;->ACTIVITY_MODE:[Ljava/lang/String;

    sget v4, Lcom/pantech/app/music/common/PermissionCheckActivity;->mActivityMode:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget v1, Lcom/pantech/app/music/common/PermissionCheckActivity;->mActivityMode:I

    if-nez v1, :cond_71

    .line 108
    const/4 v1, 0x3

    sput v1, Lcom/pantech/app/music/common/PermissionCheckActivity;->mActivityMode:I

    .line 112
    :cond_6b
    :goto_6b
    sget v1, Lcom/pantech/app/music/common/PermissionCheckActivity;->mActivityMode:I

    invoke-direct {p0, v1}, Lcom/pantech/app/music/common/PermissionCheckActivity;->setLayout_ActivityMode(I)V

    goto :goto_42

    .line 109
    :cond_71
    sget v1, Lcom/pantech/app/music/common/PermissionCheckActivity;->mActivityMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6b

    .line 110
    const/4 v1, 0x4

    sput v1, Lcom/pantech/app/music/common/PermissionCheckActivity;->mActivityMode:I

    goto :goto_6b
.end method
