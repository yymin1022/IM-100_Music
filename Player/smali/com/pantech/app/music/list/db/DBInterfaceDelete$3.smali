.class Lcom/pantech/app/music/list/db/DBInterfaceDelete$3;
.super Ljava/lang/Object;
.source "DBInterfaceDelete.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/db/DBInterfaceDelete;->deleteGroupOnly(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Z)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/db/DBInterfaceDelete;

.field final synthetic val$notify_uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/db/DBInterfaceDelete;Landroid/net/Uri;)V
    .registers 3

    .prologue
    .line 745
    iput-object p1, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete$3;->this$0:Lcom/pantech/app/music/list/db/DBInterfaceDelete;

    iput-object p2, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete$3;->val$notify_uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 748
    iget-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete$3;->this$0:Lcom/pantech/app/music/list/db/DBInterfaceDelete;

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->mResolver:Landroid/content/ContentResolver;

    if-eqz v0, :cond_30

    .line 750
    const-string v0, "DBInterfaceCommon"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyChange success ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete$3;->val$notify_uri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    iget-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete$3;->this$0:Lcom/pantech/app/music/list/db/DBInterfaceDelete;

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete$3;->val$notify_uri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 753
    :cond_30
    return-void
.end method
