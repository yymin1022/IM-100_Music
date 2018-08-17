.class Lcom/pantech/app/music/list/db/DBInterfaceDelete$2;
.super Ljava/lang/Object;
.source "DBInterfaceDelete.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/db/DBInterfaceDelete;->deleteSongsPartial(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/util/Collection;Ljava/util/ArrayList;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/db/DBInterfaceDelete;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/db/DBInterfaceDelete;)V
    .registers 2

    .prologue
    .line 475
    iput-object p1, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete$2;->this$0:Lcom/pantech/app/music/list/db/DBInterfaceDelete;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 480
    iget-object v0, p0, Lcom/pantech/app/music/list/db/DBInterfaceDelete$2;->this$0:Lcom/pantech/app/music/list/db/DBInterfaceDelete;

    iget-object v0, v0, Lcom/pantech/app/music/list/db/DBInterfaceDelete;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/pantech/app/music/list/module/QuerySimilartySort;->SimilarityUri:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 481
    return-void
.end method
