.class public Lcom/lgupluse/marketCheck/ExternalLinkedCheck;
.super Ljava/lang/Object;
.source "ExternalLinkedCheck.java"


# static fields
.field private static final NEW_PACKAGENAME:Ljava/lang/String; = "com.lguplus.appstore"

.field public static final NEW_VERSION_INSTALLED:I = 0x2

.field public static final NOT_INSTALLED:I = 0x0

.field public static final OLD_VERSION_INSTALLED:I = 0x1

.field private static final PRE_PACKAGENAME:Ljava/lang/String; = "android.lgt.appstore"


# instance fields
.field private _isActivity:Z

.field private _targetActivity:Landroid/app/Activity;

.field private marketVersion:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isActivity"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->_targetActivity:Landroid/app/Activity;

    .line 45
    iput-boolean p2, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->_isActivity:Z

    .line 46
    invoke-direct {p0}, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->marketVersionCheck()I

    move-result v0

    iput v0, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->marketVersion:I

    .line 47
    const-string v0, "marketVersion"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "marketVersion :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->marketVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method private marketVersionCheck()I
    .registers 7

    .prologue
    .line 351
    const/4 v2, 0x0

    .line 353
    .local v2, "maketVersion":I
    iget-object v4, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->_targetActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 354
    .local v0, "appinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_14

    .line 366
    :goto_13
    return v2

    .line 355
    :cond_14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 356
    .local v3, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "android.lgt.appstore"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 357
    const/4 v2, 0x1

    .line 358
    goto :goto_13

    .line 359
    :cond_26
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.lguplus.appstore"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 360
    const/4 v2, 0x2

    .line 361
    goto :goto_13

    .line 363
    :cond_32
    const/4 v2, 0x0

    .line 354
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method


# virtual methods
.method public detail(Ljava/lang/String;IZ)V
    .registers 9
    .param p1, "pid"    # Ljava/lang/String;
    .param p2, "checkValue"    # I
    .param p3, "isActivityFinish"    # Z

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "intent":Landroid/content/Intent;
    iget v2, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->marketVersion:I

    packed-switch v2, :pswitch_data_68

    .line 131
    :goto_6
    if-eqz v0, :cond_16

    .line 132
    iget-boolean v2, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->_isActivity:Z

    if-nez v2, :cond_11

    .line 133
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 135
    :cond_11
    iget-object v2, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->_targetActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 138
    :cond_16
    if-eqz p3, :cond_1d

    .line 139
    iget-object v2, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->_targetActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 141
    :cond_1d
    return-void

    .line 119
    :pswitch_1e
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "android.lgt.appstore"

    const-string v3, "android.lgt.appstore.Store"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const-string v2, "payload"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PID="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 124
    :pswitch_3f
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ozstore://STORE/PID="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "uriData":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "ozstore.external.linked"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 126
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_6

    .line 117
    nop

    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_3f
    .end packed-switch
.end method

.method public detail_gift(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "giftUrl"    # Ljava/lang/String;
    .param p2, "checkValue"    # I
    .param p3, "isActivityFinish"    # Z

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "intent":Landroid/content/Intent;
    iget v2, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->marketVersion:I

    packed-switch v2, :pswitch_data_58

    .line 172
    :goto_6
    if-eqz v0, :cond_16

    .line 173
    iget-boolean v2, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->_isActivity:Z

    if-nez v2, :cond_11

    .line 174
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 176
    :cond_11
    iget-object v2, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->_targetActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 179
    :cond_16
    if-eqz p3, :cond_1d

    .line 180
    iget-object v2, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->_targetActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 182
    :cond_1d
    return-void

    .line 160
    :pswitch_1e
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 161
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "android.lgt.appstore"

    const-string v3, "android.lgt.appstore.Store"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    const-string v2, "payload"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 165
    :pswitch_30
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ozstore://STORE/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "uriData":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "ozstore.external.linked"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_6

    .line 158
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_30
    .end packed-switch
.end method

.method public getMarketVersion()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->marketVersion:I

    return v0
.end method

.method public home(Z)V
    .registers 7
    .param p1, "isActivityFinish"    # Z

    .prologue
    const/high16 v4, 0x10000000

    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "intent":Landroid/content/Intent;
    iget v2, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->marketVersion:I

    packed-switch v2, :pswitch_data_4a

    .line 248
    :goto_8
    if-eqz v0, :cond_16

    .line 249
    iget-boolean v2, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->_isActivity:Z

    if-nez v2, :cond_11

    .line 250
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 252
    :cond_11
    iget-object v2, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->_targetActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 255
    :cond_16
    if-eqz p1, :cond_1d

    .line 256
    iget-object v2, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->_targetActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 259
    :cond_1d
    return-void

    .line 234
    :pswitch_1e
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 235
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "android.lgt.appstore"

    const-string v3, "android.lgt.appstore.StoreMain"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 237
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_8

    .line 241
    :pswitch_38
    const-string v1, "ozstore://HOME"

    .line 242
    .local v1, "uriData":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "ozstore.external.linked"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_8

    .line 232
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_38
    .end packed-switch
.end method

.method public liveUpdate_appUpdate(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZIZ)V
    .registers 15
    .param p1, "pid"    # Ljava/lang/String;
    .param p2, "versionName"    # Ljava/lang/String;
    .param p3, "versionCode"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "isProgressBarShow"    # Z
    .param p6, "checkValue"    # I
    .param p7, "isAuto"    # Z

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v4, "ozstore.external.linked"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 278
    .restart local v0    # "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 279
    .local v1, "intentName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 280
    .local v2, "isProgressValue":Ljava/lang/String;
    if-eqz p7, :cond_8a

    .line 281
    const-string v1, "LIVEUPDATE_AUTO"

    .line 282
    if-eqz p5, :cond_87

    .line 283
    const-string v2, "Y"

    .line 295
    :goto_12
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ozstore://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "uri":Ljava/lang/String;
    const-string v4, "liveUpdate"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "uri :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 302
    iget-boolean v4, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->_isActivity:Z

    if-nez v4, :cond_81

    .line 303
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 305
    :cond_81
    iget-object v4, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->_targetActivity:Landroid/app/Activity;

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 307
    return-void

    .line 285
    .end local v3    # "uri":Ljava/lang/String;
    :cond_87
    const-string v2, "N"

    goto :goto_12

    .line 288
    :cond_8a
    const-string v1, "LIVEUPDATE_MANUAL"

    .line 289
    if-eqz p5, :cond_91

    .line 290
    const-string v2, "Y"

    goto :goto_12

    .line 292
    :cond_91
    const-string v2, "N"

    goto/16 :goto_12
.end method

.method public liveUpdate_detail(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZI)V
    .registers 14
    .param p1, "pid"    # Ljava/lang/String;
    .param p2, "versionName"    # Ljava/lang/String;
    .param p3, "versionCode"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "isProgressBarShow"    # Z
    .param p6, "checkValue"    # I

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, "intent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v4, "ozstore.external.linked"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 323
    .restart local v0    # "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 324
    .local v1, "intentName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 326
    .local v2, "isProgressValue":Ljava/lang/String;
    const-string v1, "LIVEUPDATE_DETAIL"

    .line 327
    if-eqz p5, :cond_85

    .line 328
    const-string v2, "Y"

    .line 333
    :goto_10
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ozstore://"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "uri":Ljava/lang/String;
    const-string v4, "liveUpdate"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "detail : uri :"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 340
    iget-boolean v4, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->_isActivity:Z

    if-nez v4, :cond_7f

    .line 341
    const/high16 v4, 0x10000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 343
    :cond_7f
    iget-object v4, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->_targetActivity:Landroid/app/Activity;

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 346
    return-void

    .line 330
    .end local v3    # "uri":Ljava/lang/String;
    :cond_85
    const-string v2, "N"

    goto :goto_10
.end method

.method public search(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "searchWord"    # Ljava/lang/String;
    .param p2, "checkValue"    # I
    .param p3, "isActivityFinish"    # Z

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    iget v2, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->marketVersion:I

    packed-switch v2, :pswitch_data_5e

    .line 90
    :goto_6
    if-eqz v0, :cond_16

    .line 91
    iget-boolean v2, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->_isActivity:Z

    if-nez v2, :cond_11

    .line 92
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 94
    :cond_11
    iget-object v2, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->_targetActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 97
    :cond_16
    if-eqz p3, :cond_1d

    .line 98
    iget-object v2, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->_targetActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 100
    :cond_1d
    return-void

    .line 77
    :pswitch_1e
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "android.lgt.appstore"

    const-string v3, "android.lgt.appstore.SearchResultList"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v2, "Recognition"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    const-string v2, "SearchWord"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 83
    :pswitch_36
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ozstore://SEARCH/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "uriData":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "ozstore.external.linked"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_6

    .line 75
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_36
    .end packed-switch
.end method

.method public update(Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "pid"    # Ljava/lang/String;
    .param p2, "checkValue"    # I
    .param p3, "isActivityFinish"    # Z

    .prologue
    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "intent":Landroid/content/Intent;
    iget v2, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->marketVersion:I

    packed-switch v2, :pswitch_data_58

    .line 212
    :goto_6
    if-eqz v0, :cond_16

    .line 213
    iget-boolean v2, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->_isActivity:Z

    if-nez v2, :cond_11

    .line 214
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 216
    :cond_11
    iget-object v2, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->_targetActivity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 219
    :cond_16
    if-eqz p3, :cond_1d

    .line 220
    iget-object v2, p0, Lcom/lgupluse/marketCheck/ExternalLinkedCheck;->_targetActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 222
    :cond_1d
    return-void

    .line 200
    :pswitch_1e
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 201
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "android.lgt.appstore"

    const-string v3, "android.lgt.appstore.ExternalUpdate"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v2, "PID"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 205
    :pswitch_30
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ozstore://UPDATE/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "uriData":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v2, "ozstore.external.linked"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_6

    .line 198
    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_30
    .end packed-switch
.end method
