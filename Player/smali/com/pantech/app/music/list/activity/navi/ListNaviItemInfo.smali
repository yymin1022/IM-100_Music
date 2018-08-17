.class public Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;
.super Ljava/lang/Object;
.source "ListNaviItemInfo.java"

# interfaces
.implements Lcom/pantech/app/music/utils/LibraryUtils;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$1;,
        Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;
    }
.end annotation


# static fields
.field public static final NAVI_DEFAULT_LIST:[Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public static final NAV_DEFAULT_LIST_TEXT_ID:[I

.field public static final PREFERNCE_KEY_CATEGORY_POS:Ljava/lang/String; = "preference_key_category_pos"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNaviDefaultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNaviList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPageInfo:Lcom/pantech/app/music/list/PageInfoType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x8

    .line 79
    new-array v0, v3, [Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    const/4 v1, 0x0

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput-object v2, v0, v1

    sput-object v0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->NAVI_DEFAULT_LIST:[Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 91
    new-array v0, v3, [I

    fill-array-data v0, :array_36

    sput-object v0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->NAV_DEFAULT_LIST_TEXT_ID:[I

    return-void

    nop

    :array_36
    .array-data 4
        0x7f0801b9
        0x7f080083
        0x7f080017
        0x7f080018
        0x7f080061
        0x7f0800b9
        0x7f08003d
        0x7f08019e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mNaviList:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mNaviDefaultMap:Ljava/util/HashMap;

    .line 111
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 114
    invoke-direct {p0}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->initItemInfo()V

    .line 115
    return-void
.end method

.method public static getPrefCategory(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    const-string v1, "musicLibraryPreference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 176
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string v1, "preference_key_category_pos"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initItemInfo()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 120
    const/4 v5, 0x0

    .line 122
    .local v5, "key":I
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isUplusBoxUse()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 124
    iget-object v6, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mNaviList:Ljava/util/ArrayList;

    new-instance v0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;

    const v1, 0x7f0801b9

    invoke-direct {p0, v1}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020370

    iget-object v3, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/PageInfoType;->clone(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v3

    const-class v4, Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;-><init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;Ljava/lang/Class;I)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mNaviDefaultMap:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    .line 128
    :cond_33
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mNaviList:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;

    const v2, 0x7f080083

    invoke-direct {p0, v2}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02036f

    iget-object v4, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v4, v6}, Lcom/pantech/app/music/list/PageInfoType;->clone(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;-><init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mNaviDefaultMap:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    .line 131
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mNaviList:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;

    const v2, 0x7f080017

    invoke-direct {p0, v2}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02036a

    iget-object v4, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v4, v6}, Lcom/pantech/app/music/list/PageInfoType;->clone(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;-><init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mNaviDefaultMap:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    .line 134
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mNaviList:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;

    const v2, 0x7f080018

    invoke-direct {p0, v2}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02036b

    iget-object v4, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v4, v6}, Lcom/pantech/app/music/list/PageInfoType;->clone(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;-><init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mNaviDefaultMap:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    .line 137
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mNaviList:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;

    const v2, 0x7f080061

    invoke-direct {p0, v2}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02036e

    iget-object v4, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v4, v6}, Lcom/pantech/app/music/list/PageInfoType;->clone(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;-><init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mNaviDefaultMap:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    .line 140
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mNaviList:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;

    const v2, 0x7f0800b9

    invoke-direct {p0, v2}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02036c

    iget-object v4, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v4, v6}, Lcom/pantech/app/music/list/PageInfoType;->clone(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;-><init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mNaviDefaultMap:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    .line 143
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mNaviList:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;

    const v2, 0x7f08003d

    invoke-direct {p0, v2}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02036d

    iget-object v4, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v4, v6}, Lcom/pantech/app/music/list/PageInfoType;->clone(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;-><init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mNaviDefaultMap:Ljava/util/HashMap;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    .line 146
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mNaviList:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;

    const v2, 0x7f08019e

    invoke-direct {p0, v2}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3, v7, v5}, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;-><init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mNaviDefaultMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    .line 148
    return-void
.end method

.method public static setPrefCategory(Landroid/content/Context;I)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # I

    .prologue
    .line 182
    const-string v2, "musicLibraryPreference"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 183
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 184
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v2, "preference_key_category_pos"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 185
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 186
    return-void
.end method


# virtual methods
.method public getItemSize()I
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mNaviList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getNaviInfo(I)Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mNaviList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;

    return-object v0
.end method

.method public getNaviItemList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo$NaviInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mNaviList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPositionOfCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I
    .registers 3
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/navi/ListNaviItemInfo;->mNaviDefaultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
