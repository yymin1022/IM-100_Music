.class Lcom/pantech/app/music/common/PermissionCheckActivity$1;
.super Ljava/lang/Object;
.source "PermissionCheckActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/common/PermissionCheckActivity;->setLayout_ActivityMode(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/common/PermissionCheckActivity;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/common/PermissionCheckActivity;)V
    .registers 2

    .prologue
    .line 230
    iput-object p1, p0, Lcom/pantech/app/music/common/PermissionCheckActivity$1;->this$0:Lcom/pantech/app/music/common/PermissionCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 233
    packed-switch p2, :pswitch_data_10

    .line 239
    const/4 v0, 0x0

    :goto_4
    return v0

    .line 235
    :pswitch_5
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 236
    iget-object v0, p0, Lcom/pantech/app/music/common/PermissionCheckActivity$1;->this$0:Lcom/pantech/app/music/common/PermissionCheckActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/common/PermissionCheckActivity;->finish()V

    .line 237
    const/4 v0, 0x1

    goto :goto_4

    .line 233
    nop

    :pswitch_data_10
    .packed-switch 0x4
        :pswitch_5
    .end packed-switch
.end method
