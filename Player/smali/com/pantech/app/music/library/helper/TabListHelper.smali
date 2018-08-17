.class public Lcom/pantech/app/music/library/helper/TabListHelper;
.super Ljava/lang/Object;
.source "TabListHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/library/helper/TabListHelper$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TabListHelper"

.field private static final defaultForSelectList:[Lcom/pantech/app/music/library/FragmentInfo$Category;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 21
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/pantech/app/music/library/FragmentInfo$Category;

    const/4 v1, 0x0

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ALBUM:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ARTIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_GENRE:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_FOLDER:Lcom/pantech/app/music/library/FragmentInfo$Category;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/music/library/helper/TabListHelper;->defaultForSelectList:[Lcom/pantech/app/music/library/FragmentInfo$Category;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    return-void
.end method

.method public static getCategoryIconResID(Lcom/pantech/app/music/library/FragmentInfo$Category;)I
    .registers 4
    .param p0, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;

    .prologue
    const v0, 0x7f02004f

    .line 81
    sget-object v1, Lcom/pantech/app/music/library/helper/TabListHelper$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    invoke-virtual {p0}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_20

    .line 93
    :goto_e
    :pswitch_e
    return v0

    .line 85
    :pswitch_f
    const v0, 0x7f020047

    goto :goto_e

    .line 87
    :pswitch_13
    const v0, 0x7f02004e

    goto :goto_e

    .line 89
    :pswitch_17
    const v0, 0x7f02004b

    goto :goto_e

    .line 91
    :pswitch_1b
    const v0, 0x7f02004a

    goto :goto_e

    .line 81
    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_13
        :pswitch_17
        :pswitch_1b
    .end packed-switch
.end method

.method public static getTabListAll(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/library/FragmentInfo$Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    const/4 v6, 0x0

    invoke-static {p0, v6}, Lcom/pantech/app/music/utils/PreferenceUtils;->loadTabCategory(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 108
    .local v4, "selectedArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v5, "tabArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/library/FragmentInfo$Category;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 117
    .local v0, "allHash":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/pantech/app/music/library/FragmentInfo$Category;>;"
    sget-object v6, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v6, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ALBUM:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v6, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ARTIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v6, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v6, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_FOLDER:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v6, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_GENRE:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v0, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_31
    :goto_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 125
    .local v2, "categoryID":Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/pantech/app/music/library/FragmentInfo;->fromOrdinal(I)Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v1

    .line 126
    .local v1, "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    sget-object v6, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_NONE:Lcom/pantech/app/music/library/FragmentInfo$Category;

    if-eq v1, v6, :cond_31

    .line 128
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_31

    .line 131
    .end local v1    # "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    .end local v2    # "categoryID":Ljava/lang/Long;
    :cond_50
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_54
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_64

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantech/app/music/library/FragmentInfo$Category;

    .line 132
    .restart local v1    # "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_54

    .line 135
    .end local v1    # "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    :cond_64
    return-object v5
.end method

.method public static getTabListEnable(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/library/FragmentInfo$Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/pantech/app/music/utils/PreferenceUtils;->loadTabCategory(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 67
    .local v3, "selectedArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_11

    .line 68
    const/4 v5, 0x1

    invoke-static {p0, v5}, Lcom/pantech/app/music/utils/PreferenceUtils;->loadTabCategory(Landroid/content/Context;Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 70
    :cond_11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v4, "tabArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/library/FragmentInfo$Category;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 72
    .local v1, "categoryID":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/pantech/app/music/library/FragmentInfo;->fromOrdinal(I)Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v0

    .line 73
    .local v0, "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    sget-object v5, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_NONE:Lcom/pantech/app/music/library/FragmentInfo$Category;

    if-eq v0, v5, :cond_1a

    .line 75
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 77
    .end local v0    # "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    .end local v1    # "categoryID":Ljava/lang/Long;
    :cond_36
    return-object v4
.end method

.method public static getTabListForSelect()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/library/FragmentInfo$Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v4, "tabArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/pantech/app/music/library/FragmentInfo$Category;>;"
    sget-object v0, Lcom/pantech/app/music/library/helper/TabListHelper;->defaultForSelectList:[Lcom/pantech/app/music/library/FragmentInfo$Category;

    .local v0, "arr$":[Lcom/pantech/app/music/library/FragmentInfo$Category;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_9
    if-ge v2, v3, :cond_13

    aget-object v1, v0, v2

    .line 100
    .local v1, "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 103
    .end local v1    # "category":Lcom/pantech/app/music/library/FragmentInfo$Category;
    :cond_13
    return-object v4
.end method

.method public static showTabSelectDialog(Landroid/app/Activity;)Lcom/pantech/app/music/library/ListDialog;
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 41
    const-string v4, "TabListHelper"

    const-string v5, "showTabSelectDialog()"

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    new-instance v3, Lcom/pantech/app/music/library/FragmentInfo;

    sget-object v4, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_TAB_LIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

    const v5, 0x7f08007b

    invoke-direct {v3, v4, v5}, Lcom/pantech/app/music/library/FragmentInfo;-><init>(Lcom/pantech/app/music/library/FragmentInfo$Category;I)V

    .line 47
    .local v3, "fragmentInfo":Lcom/pantech/app/music/library/FragmentInfo;
    const/16 v4, 0x15

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/library/FragmentInfo;->addOptions(I)V

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "bundle.key.fragment"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 55
    .local v2, "fm":Landroid/app/FragmentManager;
    new-instance v1, Lcom/pantech/app/music/library/ListDialog;

    invoke-direct {v1}, Lcom/pantech/app/music/library/ListDialog;-><init>()V

    .line 57
    .local v1, "dialogFragment":Lcom/pantech/app/music/library/ListDialog;
    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/pantech/app/music/library/ListDialog;->addOptions(I)V

    .line 58
    invoke-virtual {v1, v0}, Lcom/pantech/app/music/library/ListDialog;->setArguments(Landroid/os/Bundle;)V

    .line 60
    const-string v4, "fragment_dialog_test"

    invoke-virtual {v1, v2, v4}, Lcom/pantech/app/music/library/ListDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 62
    return-object v1
.end method
