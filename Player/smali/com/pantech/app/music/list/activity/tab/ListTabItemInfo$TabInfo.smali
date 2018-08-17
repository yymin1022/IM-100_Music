.class public Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;
.super Ljava/lang/Object;
.source "ListTabItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabInfo"
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

.field public mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field public mTabIconResID:I

.field public mTabName:Ljava/lang/String;

.field public mTabPosition:I


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/pantech/app/music/library/FragmentInfo;)V
    .registers 6
    .param p1, "position"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/pantech/app/music/library/FragmentInfo;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;->mArgs:Landroid/os/Bundle;

    .line 58
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;->mArgs:Landroid/os/Bundle;

    const-string v1, "bundle.key.fragment"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    iput-object p2, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;->mTabName:Ljava/lang/String;

    .line 60
    iput p1, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;->mTabPosition:I

    .line 61
    const-class v0, Lcom/pantech/app/music/library/ListFragment;

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;->mClazz:Ljava/lang/Class;

    .line 62
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;I)V
    .registers 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resID"    # I
    .param p3, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p4, "position"    # I

    .prologue
    .line 53
    invoke-static {p3}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;->getClazz(Lcom/pantech/app/music/list/PageInfoType;)Ljava/lang/Class;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;-><init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;Ljava/lang/Class;I)V

    .line 54
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;Ljava/lang/Class;I)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resID"    # I
    .param p3, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;
    .param p5, "position"    # I
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
    .line 39
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p3, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;->mArgs:Landroid/os/Bundle;

    .line 43
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;->mArgs:Landroid/os/Bundle;

    const-string v1, "com.pantech.app.music.extras.listinfo"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;->mTabName:Ljava/lang/String;

    .line 46
    iput p5, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;->mTabPosition:I

    .line 47
    iput p2, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;->mTabIconResID:I

    .line 48
    iput-object p4, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;->mClazz:Ljava/lang/Class;

    .line 49
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
    .line 66
    sget-object v0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$1;->$SwitchMap$com$pantech$app$music$list$adapter$IAdapterCommon$AdapterType:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/list/PageInfoType;->getAdapterType()Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pantech/app/music/list/adapter/IAdapterCommon$AdapterType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_44

    .line 87
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

    .line 70
    :pswitch_2c
    const-class v0, Lcom/pantech/app/music/list/fragment/ExpandableListFragment;

    .line 84
    :goto_2e
    return-object v0

    .line 73
    :pswitch_2f
    invoke-virtual {p0}, Lcom/pantech/app/music/list/PageInfoType;->getCategoryType()Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    if-ne v0, v1, :cond_3a

    .line 74
    const-class v0, Lcom/pantech/app/music/library/ListFragment;

    goto :goto_2e

    .line 76
    :cond_3a
    const-class v0, Lcom/pantech/app/music/list/fragment/ListFragment;

    goto :goto_2e

    .line 81
    :pswitch_3d
    const-class v0, Lcom/pantech/app/music/list/fragment/ListFragment;

    goto :goto_2e

    .line 84
    :pswitch_40
    const-class v0, Lcom/pantech/app/music/list/fragment/GroupGridFragment;

    goto :goto_2e

    .line 66
    nop

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2c
        :pswitch_2f
        :pswitch_3d
        :pswitch_3d
        :pswitch_3d
        :pswitch_40
    .end packed-switch
.end method
