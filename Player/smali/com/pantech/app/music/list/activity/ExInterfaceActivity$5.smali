.class Lcom/pantech/app/music/list/activity/ExInterfaceActivity$5;
.super Ljava/lang/Object;
.source "ExInterfaceActivity.java"

# interfaces
.implements Lcom/pantech/app/music/utils/ListUtils$OnDialogQuestionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->askPopupList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/pantech/app/music/view/SkyMusicPopupList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity;)V
    .registers 2

    .prologue
    .line 530
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$5;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDialogNoSelected(Landroid/content/DialogInterface;ILandroid/view/View;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "dialog_id"    # I
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 555
    packed-switch p2, :pswitch_data_a

    .line 561
    :goto_3
    return-void

    .line 558
    :pswitch_4
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$5;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->finish()V

    goto :goto_3

    .line 555
    :pswitch_data_a
    .packed-switch 0x136
        :pswitch_4
    .end packed-switch
.end method

.method public onDialogYesSelected(Landroid/content/DialogInterface;ILandroid/view/View;)V
    .registers 14
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "dialog_id"    # I
    .param p3, "v"    # Landroid/view/View;

    .prologue
    .line 534
    packed-switch p2, :pswitch_data_2a

    .line 550
    :goto_3
    return-void

    .line 537
    :pswitch_4
    new-instance v0, Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->NORMAL:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    sget-object v3, Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;->NONE:Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;

    const/4 v4, 0x0

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/PageInfoType;-><init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;Lcom/pantech/app/music/utils/LibraryUtils$PickingSelectModeType;ILjava/lang/String;)V

    .line 539
    .local v0, "tmpPageInfo":Lcom/pantech/app/music/list/PageInfoType;
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$5;->this$0:Lcom/pantech/app/music/list/activity/ExInterfaceActivity;

    iget-object v1, v1, Lcom/pantech/app/music/list/activity/ExInterfaceActivity;->mIPlayer:Lcom/pantech/app/music/list/module/PlayInterface;

    const/4 v3, 0x0

    const/4 v4, 0x0

    sget-object v5, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->EXINTERFACE:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const v8, 0x10008000

    new-instance v9, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$5$1;

    invoke-direct {v9, p0}, Lcom/pantech/app/music/list/activity/ExInterfaceActivity$5$1;-><init>(Lcom/pantech/app/music/list/activity/ExInterfaceActivity$5;)V

    move-object v2, v0

    invoke-virtual/range {v1 .. v9}, Lcom/pantech/app/music/list/module/PlayInterface;->playSong(Lcom/pantech/app/music/list/PageInfoType;Landroid/database/Cursor;Ljava/lang/Object;Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;ZIILcom/pantech/app/music/list/module/PlayInterface$PlayCompleteListener;)V

    goto :goto_3

    .line 534
    nop

    :pswitch_data_2a
    .packed-switch 0x136
        :pswitch_4
    .end packed-switch
.end method
