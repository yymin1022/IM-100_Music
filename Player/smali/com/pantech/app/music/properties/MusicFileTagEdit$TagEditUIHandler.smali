.class Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;
.super Landroid/os/Handler;
.source "MusicFileTagEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/properties/MusicFileTagEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TagEditUIHandler"
.end annotation


# static fields
.field public static final MSG_CLOSE_PROGRESSBAR:I = 0x5

.field public static final MSG_END_READ_TAG:I = 0x2

.field public static final MSG_END_WRITE_TAG:I = 0x1

.field public static final MSG_QUIT_WORKER:I = 0x6

.field public static final MSG_SHOW_PROGRESSBAR:I = 0x4

.field public static final MSG_TAG:I = 0x0

.field public static final MSG_UPDATE_VIEW_AND_DATA:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/properties/MusicFileTagEdit;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 666
    iput-object p1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    .line 667
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 668
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 673
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 675
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_da

    .line 739
    :cond_a
    :goto_a
    return-void

    .line 678
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    sparse-switch v0, :sswitch_data_ea

    .line 695
    const-string v0, "VMusicTagEdit"

    const-string v1, "Can not write file"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 681
    :sswitch_18
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    const/16 v1, 0x100

    iget-object v2, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v2}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$900(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicFileTagEditData;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$800(Lcom/pantech/app/music/properties/MusicFileTagEdit;ILcom/pantech/app/music/properties/MusicFileTagEditData;Z)V

    goto :goto_a

    .line 686
    :sswitch_26
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v1}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$900(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicFileTagEditData;

    move-result-object v1

    invoke-static {v0, v2, v1, v3}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$800(Lcom/pantech/app/music/properties/MusicFileTagEdit;ILcom/pantech/app/music/properties/MusicFileTagEditData;Z)V

    goto :goto_a

    .line 690
    :sswitch_32
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$700(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 691
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$700(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    move-result-object v0

    const v1, 0x7f08014a

    invoke-interface {v0, v1}, Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;->onShowToast(I)V

    goto :goto_a

    .line 701
    :pswitch_47
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v2, :cond_70

    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1500(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 703
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    iget-object v1, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v1}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1600(Lcom/pantech/app/music/properties/MusicFileTagEdit;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1700(Lcom/pantech/app/music/properties/MusicFileTagEdit;J)V

    .line 705
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1800(Lcom/pantech/app/music/properties/MusicFileTagEdit;)V

    .line 713
    :cond_6b
    :goto_6b
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->sendEmptyMessage(I)Z

    goto :goto_a

    .line 709
    :cond_70
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$700(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    move-result-object v0

    if-eqz v0, :cond_6b

    .line 710
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$700(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    move-result-object v0

    const v1, 0x7f080149

    invoke-interface {v0, v1}, Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;->onShowToast(I)V

    goto :goto_6b

    .line 717
    :pswitch_85
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$700(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 719
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$700(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;->onPropertyViewUpdate()V

    .line 720
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$700(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;->onServiceDataUpdate()V

    goto/16 :goto_a

    .line 725
    :pswitch_a1
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$700(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 726
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$700(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;->onProgressShow()V

    goto/16 :goto_a

    .line 730
    :pswitch_b4
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$700(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 731
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$700(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/pantech/app/music/properties/MusicPropertiesActivity$OnTagEditCallback;->onProgressClose()V

    goto/16 :goto_a

    .line 735
    :pswitch_c7
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1100(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicFileTagEditHandler;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 736
    iget-object v0, p0, Lcom/pantech/app/music/properties/MusicFileTagEdit$TagEditUIHandler;->this$0:Lcom/pantech/app/music/properties/MusicFileTagEdit;

    invoke-static {v0}, Lcom/pantech/app/music/properties/MusicFileTagEdit;->access$1100(Lcom/pantech/app/music/properties/MusicFileTagEdit;)Lcom/pantech/app/music/properties/MusicFileTagEditHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pantech/app/music/properties/MusicFileTagEditHandler;->stopWorker()V

    goto/16 :goto_a

    .line 675
    :pswitch_data_da
    .packed-switch 0x1
        :pswitch_47
        :pswitch_b
        :pswitch_85
        :pswitch_a1
        :pswitch_b4
        :pswitch_c7
    .end packed-switch

    .line 678
    :sswitch_data_ea
    .sparse-switch
        -0x1 -> :sswitch_32
        0x1 -> :sswitch_26
        0x10 -> :sswitch_26
        0x100 -> :sswitch_18
    .end sparse-switch
.end method
