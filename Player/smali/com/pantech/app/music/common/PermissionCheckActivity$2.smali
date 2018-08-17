.class Lcom/pantech/app/music/common/PermissionCheckActivity$2;
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
    .line 221
    iput-object p1, p0, Lcom/pantech/app/music/common/PermissionCheckActivity$2;->this$0:Lcom/pantech/app/music/common/PermissionCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 224
    const-string v1, "MusicPermissionCheckActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Go to Settings : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/pantech/app/music/common/PermissionCheckActivity;->access$000()[Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/pantech/app/music/common/PermissionCheckActivity;->access$100()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pantech/app/music/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/common/PermissionCheckActivity$2;->this$0:Lcom/pantech/app/music/common/PermissionCheckActivity;

    invoke-virtual {v3}, Lcom/pantech/app/music/common/PermissionCheckActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 226
    .local v0, "myAppSettings":Landroid/content/Intent;
    iget-object v1, p0, Lcom/pantech/app/music/common/PermissionCheckActivity$2;->this$0:Lcom/pantech/app/music/common/PermissionCheckActivity;

    invoke-static {}, Lcom/pantech/app/music/common/PermissionCheckActivity;->access$200()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/pantech/app/music/common/PermissionCheckActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 227
    return-void
.end method
