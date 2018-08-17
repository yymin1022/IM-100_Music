.class Lcom/pantech/app/music/list/module/MusicLife$1;
.super Ljava/lang/Object;
.source "MusicLife.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pantech/app/music/list/module/MusicLife;->call()Lcom/pantech/app/music/list/module/PlayInterface$PlayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/pantech/app/music/list/MusicItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pantech/app/music/list/module/MusicLife;


# direct methods
.method constructor <init>(Lcom/pantech/app/music/list/module/MusicLife;)V
    .registers 2

    .prologue
    .line 251
    iput-object p1, p0, Lcom/pantech/app/music/list/module/MusicLife$1;->this$0:Lcom/pantech/app/music/list/module/MusicLife;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/pantech/app/music/list/MusicItemInfo;Lcom/pantech/app/music/list/MusicItemInfo;)I
    .registers 6
    .param p1, "lhs"    # Lcom/pantech/app/music/list/MusicItemInfo;
    .param p2, "rhs"    # Lcom/pantech/app/music/list/MusicItemInfo;

    .prologue
    .line 258
    iget-object v2, p1, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "lhsCollationKey":Ljava/lang/String;
    iget-object v2, p2, Lcom/pantech/app/music/list/MusicItemInfo;->szTitle:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/pantech/app/music/list/adapter/helper/IndexSeparatorHelper;->getCollationKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "rhsCollationKey":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 251
    check-cast p1, Lcom/pantech/app/music/list/MusicItemInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/pantech/app/music/list/MusicItemInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/pantech/app/music/list/module/MusicLife$1;->compare(Lcom/pantech/app/music/list/MusicItemInfo;Lcom/pantech/app/music/list/MusicItemInfo;)I

    move-result v0

    return v0
.end method
