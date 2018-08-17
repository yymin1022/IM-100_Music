.class Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected$1;
.super Ljava/lang/Object;
.source "PlayInterface.java"

# interfaces
.implements Lcom/pantech/app/music/list/db/SelectManager$MakeSelectListTemplate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected;

.field final synthetic val$playItemlist:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected;Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    .line 396
    iput-object p1, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected$1;->this$0:Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected;

    iput-object p2, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected$1;->val$playItemlist:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;)V
    .registers 4
    .param p1, "contentSelectInfo"    # Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;

    .prologue
    .line 401
    iget-object v0, p0, Lcom/pantech/app/music/list/module/PlayInterface$MakePlayInfoForSelected$1;->val$playItemlist:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/pantech/app/music/list/db/SelectManager$ContentSelectInfo;->mCntInfo:Lcom/pantech/app/music/list/MusicItemInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    return-void
.end method
