.class public Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;
.super Ljava/lang/Object;
.source "ListNaviItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NaviInfo"
.end annotation


# instance fields
.field public mArgs:Landroid/os/Bundle;

.field public mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public mItemName:Ljava/lang/String;

.field public mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field public mTabIconResID:I

.field public position:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;I)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resID"    # I
    .param p3, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p4, "pos"    # I

    .prologue
    .line 50
    invoke-static {p3}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;->getClazz(Lcom/pantech/app/music/list/PageInfoType;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;-><init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;Ljava/lang/Class;I)V

    .line 51
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;Ljava/lang/Class;I)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resID"    # I
    .param p3, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p5, "pos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/pantech/app/music/list/PageInfoType;",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p3, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;->mArgs:Landroid/os/Bundle;

    .line 40
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;->mArgs:Landroid/os/Bundle;

    const-string v1, "com.pantech.app.music.extras.listinfo"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 42
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;->mItemName:Ljava/lang/String;

    .line 43
    iput p2, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;->mTabIconResID:I

    .line 44
    iput-object p4, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;->mClazz:Ljava/lang/Class;

    .line 45
    iput p5, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;->position:I

    .line 46
    return-void
.end method

.method private static getClazz(Lcom/pantech/app/music/list/PageInfoType;)Ljava/lang/Class;
    .registers 4
    .param p0, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pantech/app/music/list/PageInfoType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 55
    if-nez p0, :cond_4

    .line 56
    const/4 v0, 0x0

    .line 71
    :goto_3
    return-object v0

    .line 58
    :cond_4
    sget-object v0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3a

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Category \uc124\uc815\uc744 \ud655\uc778\ud558\uc138\uc694. TAB \uc5d0\uc11c \uc9c0\uc6d0\ud558\uc9c0 \uc54a\ub294 fragment \uc785\ub2c8\ub2e4."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :pswitch_30
    const-class v0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;

    goto :goto_3

    .line 68
    :pswitch_33
    const-class v0, Lcom/pantech/app/music/list/fragment/ListFragment;

    goto :goto_3

    .line 71
    :pswitch_36
    const-class v0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;

    goto :goto_3

    .line 58
    nop

    :pswitch_data_3a
    .packed-switch 0x1
        :pswitch_30
        :pswitch_30
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_33
        :pswitch_36
    .end packed-switch
.end method
