.class public Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;
.super Landroid/os/Handler;
.source "ListUboxFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/fragment/ListUboxFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CloudListHandler"
.end annotation


# static fields
.field public static final EVENT_COUNTDOWN_LATCH_RELEASE:I = 0x65

.field public static final EVENT_ONLINE_HANDLER_BASE:I = 0x0

.field public static final EVENT_PARSE_COMPLETE_UPLUS_MUSIC_CONTENTS:I = 0x3

.field public static final EVENT_QUERY_COMPLETE_UPLUS_GET_MUSIC_CONTENTS:I = 0x2

.field public static final EVENT_QUERY_COMPLETE_UPLUS_SESSIONID:I = 0x1

.field public static final EVENT_QUERY_ERROR_PROCESS:I = 0x64

.field public static final EVENT_QUERY_REQUEST_RAPID_UPLUS_MUSIC:I = 0x6

.field public static final EVENT_QUERY_REQUEST_UPLUS_MUSIC:I = 0x4

.field public static final EVENT_QUERY_STATUS_RESET_CLOUD_MUSIC:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;


# direct methods
.method public constructor <init>(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V
    .registers 2

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1443
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1445
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    iget-object v1, v1, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUboxHandler:Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_15

    .line 1519
    :cond_14
    :goto_14
    :sswitch_14
    return-void

    .line 1448
    :cond_15
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_ce

    goto :goto_14

    .line 1482
    :sswitch_1b
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-virtual {v0, v3}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->visibleNoContentsPage(Z)V

    .line 1484
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/pantech/multimedia/data/FeedData;

    .local v6, "data":Lcom/pantech/multimedia/data/FeedData;
    move-object v0, v6

    .line 1486
    check-cast v0, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;

    invoke-virtual {v0}, Lcom/pantech/multimedia/data/vendor/UPlusFeedData;->getCurrentDT()Ljava/lang/String;

    move-result-object v10

    .line 1488
    .local v10, "tempCurrentDT":Ljava/lang/String;
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "uplus_sessionid_pref"

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1489
    .local v8, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 1490
    .local v7, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v0, "key_uplus_current_dt"

    invoke-interface {v7, v0, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1491
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1493
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-static {v0, v6}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$1300(Lcom/pantech/app/music/list/fragment/ListUboxFragment;Lcom/pantech/multimedia/data/FeedData;)V

    goto :goto_14

    .line 1453
    .end local v6    # "data":Lcom/pantech/multimedia/data/FeedData;
    .end local v7    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v8    # "prefs":Landroid/content/SharedPreferences;
    .end local v10    # "tempCurrentDT":Ljava/lang/String;
    :sswitch_49
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/pantech/multimedia/common/Util;->chkNetworkEnable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6b

    .line 1454
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-static {v0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$900(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V

    .line 1455
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    const v4, 0x7f080135

    invoke-virtual {v1, v4}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v4, v2

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$1000(Lcom/pantech/app/music/list/fragment/ListUboxFragment;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;I)V

    goto :goto_14

    .line 1459
    :cond_6b
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    iget-object v1, v1, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->mUplusSessionID:Ljava/lang/String;

    if-eqz v1, :cond_14

    .line 1465
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-static {v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$000(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    .line 1466
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    iget-object v2, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-static {v2}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$1100(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)I

    move-result v2

    const/16 v4, 0x65

    if-ne v2, v4, :cond_87

    move v3, v0

    :cond_87
    invoke-static {v1, v3}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$002(Lcom/pantech/app/music/list/fragment/ListUboxFragment;I)I

    .line 1467
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-static {v0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$1200(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V

    goto :goto_14

    .line 1473
    :sswitch_90
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1474
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-static {v1}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$500(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V

    .line 1475
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-static {v1, v3}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$700(Lcom/pantech/app/music/list/fragment/ListUboxFragment;I)V

    .line 1476
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-virtual {v1, v0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->queryList(I)V

    goto/16 :goto_14

    .line 1503
    :sswitch_aa
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-static {v0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$1400(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)I

    move-result v9

    .line 1504
    .local v9, "reset_status":I
    if-eqz v9, :cond_14

    .line 1505
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-static {v0, v3}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$700(Lcom/pantech/app/music/list/fragment/ListUboxFragment;I)V

    goto/16 :goto_14

    .line 1511
    .end local v9    # "reset_status":I
    :sswitch_b9
    iget-object v0, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-static {v0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$1500(Lcom/pantech/app/music/list/fragment/ListUboxFragment;)V

    goto/16 :goto_14

    .line 1516
    :sswitch_c0
    iget-object v1, p0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$CloudListHandler;->this$0:Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/pantech/app/music/list/fragment/ListUboxFragment;->access$1600(Lcom/pantech/app/music/list/fragment/ListUboxFragment;ILjava/lang/String;)V

    goto/16 :goto_14

    .line 1448
    nop

    :sswitch_data_ce
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_1b
        0x3 -> :sswitch_90
        0x4 -> :sswitch_49
        0x5 -> :sswitch_aa
        0x6 -> :sswitch_b9
        0x64 -> :sswitch_c0
    .end sparse-switch
.end method
