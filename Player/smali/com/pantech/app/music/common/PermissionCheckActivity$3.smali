.class Lcom/pantech/app/music/common/PermissionCheckActivity$3;
.super Ljava/lang/Object;
.source "PermissionCheckActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 212
    iput-object p1, p0, Lcom/pantech/app/music/common/PermissionCheckActivity$3;->this$0:Lcom/pantech/app/music/common/PermissionCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 215
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 216
    iget-object v0, p0, Lcom/pantech/app/music/common/PermissionCheckActivity$3;->this$0:Lcom/pantech/app/music/common/PermissionCheckActivity;

    invoke-virtual {v0}, Lcom/pantech/app/music/common/PermissionCheckActivity;->finish()V

    .line 217
    return-void
.end method
