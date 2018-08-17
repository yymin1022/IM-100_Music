.class public Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;
.super Ljava/lang/Object;
.source "MusicLife.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/MusicLife;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicLifeItemGroup"
.end annotation


# instance fields
.field public mGroudResID:I

.field public mSubItemlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;)V
    .registers 3
    .param p1, "resID"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, "subItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;->mGroudResID:I

    .line 57
    iput-object p2, p0, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;->mSubItemlist:Ljava/util/ArrayList;

    .line 58
    return-void
.end method


# virtual methods
.method public getTitles(Landroid/content/Context;)[Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    iget-object v3, p0, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;->mSubItemlist:Ljava/util/ArrayList;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;->mSubItemlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3a

    .line 64
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v2, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItemGroup;->mSubItemlist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;

    .line 68
    .local v1, "item":Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;
    iget v3, v1, Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;->mResID:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 71
    .end local v1    # "item":Lcom/pantech/app/music/list/module/MusicLife$MusicLifeItem;
    :cond_2d
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 74
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_39
    return-object v3

    :cond_3a
    const/4 v3, 0x0

    goto :goto_39
.end method
