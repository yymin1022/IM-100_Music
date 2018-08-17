.class Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;
.super Ljava/lang/Object;
.source "MusicPropertiesActivity.java"

# interfaces
.implements Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/properties/MusicPropertiesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/properties/MusicPropertiesActivity;)V
    .registers 2

    .prologue
    .line 320
    iput-object p1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressClose()V
    .registers 3

    .prologue
    .line 378
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->access$300(Lcom/pantech/app/music/properties/MusicPropertiesActivity;)Lcom/pantech/app/music/view/SkyProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->access$300(Lcom/pantech/app/music/properties/MusicPropertiesActivity;)Lcom/pantech/app/music/view/SkyProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 379
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->access$300(Lcom/pantech/app/music/properties/MusicPropertiesActivity;)Lcom/pantech/app/music/view/SkyProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyProgressDialog;->dismiss()V

    .line 381
    :cond_1d
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->access$302(Lcom/pantech/app/music/properties/MusicPropertiesActivity;Lcom/pantech/app/music/view/SkyProgressDialog;)Lcom/pantech/app/music/view/SkyProgressDialog;

    .line 382
    return-void
.end method

.method public onProgressShow()V
    .registers 7

    .prologue
    .line 368
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->access$300(Lcom/pantech/app/music/properties/MusicPropertiesActivity;)Lcom/pantech/app/music/view/SkyProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->access$300(Lcom/pantech/app/music/properties/MusicPropertiesActivity;)Lcom/pantech/app/music/view/SkyProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 369
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->access$300(Lcom/pantech/app/music/properties/MusicPropertiesActivity;)Lcom/pantech/app/music/view/SkyProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/view/SkyProgressDialog;->dismiss()V

    .line 371
    :cond_1d
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    iget-object v2, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    const v3, 0x7f08018c

    invoke-virtual {v2, v3}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    const v4, 0x7f080185

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/pantech/app/music/utils/ListUtils;->ProgressLoadingDialogStart(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lcom/pantech/app/music/view/SkyProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->access$302(Lcom/pantech/app/music/properties/MusicPropertiesActivity;Lcom/pantech/app/music/view/SkyProgressDialog;)Lcom/pantech/app/music/view/SkyProgressDialog;

    .line 373
    return-void
.end method

.method public onPropertyViewUpdate()V
    .registers 5

    .prologue
    .line 324
    const-string v0, "VMusicTagEdit"

    const-string v1, "updatePropertyView()"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    iget-object v0, v0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mProperties:Lcom/pantech/app/music/properties/MusicProperties;

    if-eqz v0, :cond_33

    .line 329
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    iget-object v0, v0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mProperties:Lcom/pantech/app/music/properties/MusicProperties;

    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    iget-wide v2, v1, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mMusicID:J

    invoke-virtual {v0, v2, v3}, Lcom/pantech/app/music/properties/MusicProperties;->setIndexProperty(J)V

    .line 331
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    iget-object v0, v0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mAdapter:Lcom/pantech/app/music/properties/MusicPropertiesAdapter;

    if-eqz v0, :cond_2d

    .line 332
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    iget-object v0, v0, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mAdapter:Lcom/pantech/app/music/properties/MusicPropertiesAdapter;

    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    iget-object v1, v1, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mProperties:Lcom/pantech/app/music/properties/MusicProperties;

    invoke-virtual {v1}, Lcom/pantech/app/music/properties/MusicProperties;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/properties/MusicPropertiesAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 335
    :cond_2d
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->access$000(Lcom/pantech/app/music/properties/MusicPropertiesActivity;)V

    .line 341
    :goto_32
    return-void

    .line 339
    :cond_33
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    const v1, 0x7f080157

    invoke-static {v0, v1}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->access$100(Lcom/pantech/app/music/properties/MusicPropertiesActivity;I)V

    goto :goto_32
.end method

.method public onServiceDataUpdate()V
    .registers 8

    .prologue
    .line 346
    const-string v1, "VMusicTagEdit"

    const-string v2, "updateServiceData()"

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    invoke-static {v1}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->access$200(Lcom/pantech/app/music/properties/MusicPropertiesActivity;)Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 352
    :try_start_f
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    invoke-static {v1}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->access$200(Lcom/pantech/app/music/properties/MusicPropertiesActivity;)Lcom/pantech/app/music/service/IMusicPlaybackService;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    iget-wide v2, v2, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->mMusicID:J

    sget-object v4, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->TITLE:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v4}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getProperty()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ALBUM:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v5}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getProperty()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->ARTIST:Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;

    invoke-virtual {v6}, Lcom/pantech/app/music/properties/MusicProperties$PropertyIndex;->getProperty()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/pantech/app/music/service/IMusicPlaybackService;->setFileTagChange(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_2e} :catch_2f

    .line 363
    :cond_2e
    :goto_2e
    return-void

    .line 357
    :catch_2f
    move-exception v0

    .line 359
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 360
    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    const v2, 0x7f080157

    invoke-static {v1, v2}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->access$100(Lcom/pantech/app/music/properties/MusicPropertiesActivity;I)V

    goto :goto_2e
.end method

.method public onShowToast(I)V
    .registers 3
    .param p1, "msgID"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    invoke-static {v0, p1}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->access$100(Lcom/pantech/app/music/properties/MusicPropertiesActivity;I)V

    .line 388
    return-void
.end method

.method public onShowToast(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 393
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesActivity$2;->this$0:Lcom/pantech/app/music/properties/MusicPropertiesActivity;

    invoke-static {v0, p1}, Lcom/pantech/app/music/properties/MusicPropertiesActivity;->access$400(Lcom/pantech/app/music/properties/MusicPropertiesActivity;Ljava/lang/String;)V

    .line 394
    return-void
.end method
