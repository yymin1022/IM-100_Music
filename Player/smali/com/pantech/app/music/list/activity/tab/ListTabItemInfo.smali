.class public Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;
.super Ljava/lang/Object;
.source "ListTabItemInfo.java"

# interfaces
.implements Lcom/pantech/app/music/utils/LibraryUtils;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$1;,
        Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;
    }
.end annotation


# static fields
.field static final DELIMETER:Ljava/lang/String; = ","

.field static final PREFERNCE_KEY_CATEGORY_LIST:Ljava/lang/String; = "tabCategoryList"

.field static final PREFERNCE_KEY_CATEGORY_SIZE:Ljava/lang/String; = "tabCategorySize"

.field static final TAB_CATEGORY_DEFAULT_LIST:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ListTabItemInfo"

.field static mCategoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mContext:Landroid/content/Context;

.field mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

.field private mTabList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTabPosition:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->TAB_CATEGORY_DEFAULT_LIST:Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mCategoryList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pantech/app/music/list/PageInfoType;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pageInfo"    # Lcom/pantech/app/music/list/PageInfoType;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabPosition:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabList:Ljava/util/ArrayList;

    .line 100
    iput-object p1, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    .line 104
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isCategory(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 105
    invoke-direct {p0}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->initializeTabForUBOXPicker()V

    .line 115
    :goto_2c
    return-void

    .line 108
    :cond_2d
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;->SELECTABLE_PICKER:Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;

    invoke-virtual {v0, v1}, Lcom/pantech/app/music/list/PageInfoType;->isEditMode(Lcom/pantech/app/music/utils/LibraryUtils$ListModeType;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 109
    invoke-direct {p0}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->initializeTabForPicker()V

    goto :goto_2c

    .line 113
    :cond_3b
    invoke-direct {p0}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->initializeTab()V

    goto :goto_2c
.end method

.method public static getCategoryPosition(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    sget-object v6, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_85

    .line 170
    const-string v6, "musicLibraryPreference"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 171
    .local v1, "preference":Landroid/content/SharedPreferences;
    const-string v6, "tabCategorySize"

    const/4 v7, 0x7

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 173
    .local v2, "size":I
    if-lez v2, :cond_85

    .line 175
    const-string v6, "tabCategoryList"

    sget-object v7, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->TAB_CATEGORY_DEFAULT_LIST:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    .local v3, "szCategoryList":Ljava/lang/String;
    const-string v6, "VMusicPageApapterTag"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "szCategoryList:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_85

    .line 181
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v5, v3, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v5, "tokenizer":Ljava/util/StringTokenizer;
    :cond_45
    :goto_45
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_85

    .line 185
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 187
    .local v4, "token":Ljava/lang/String;
    const-string v6, "VMusicPageApapterTag"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "token:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_45

    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 191
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 193
    .local v0, "categoryOrdinal":I
    sget-object v6, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mCategoryList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    .line 200
    .end local v0    # "categoryOrdinal":I
    .end local v1    # "preference":Landroid/content/SharedPreferences;
    .end local v2    # "size":I
    .end local v3    # "szCategoryList":Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    .end local v5    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_85
    sget-object v6, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mCategoryList:Ljava/util/ArrayList;

    return-object v6
.end method

.method public static getPrefCategoryPositionSize(Landroid/content/Context;)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    const-string v1, "musicLibraryPreference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 207
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string v1, "tabCategorySize"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getPrefCategoryPositionText(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    const-string v1, "musicLibraryPreference"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 214
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string v1, "tabCategoryList"

    sget-object v2, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->TAB_CATEGORY_DEFAULT_LIST:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getString(I)Ljava/lang/String;
    .registers 3
    .param p1, "id"    # I

    .prologue
    .line 236
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initializeTab()V
    .registers 13

    .prologue
    const v11, 0x7f02036e

    .line 241
    const/4 v5, 0x0

    .line 242
    .local v5, "position":I
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 243
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabPosition:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 245
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->getCategoryPosition(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_143

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 247
    .local v9, "ordinal":I
    invoke-static {v9}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->fromOrdinal(I)Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v6

    .line 248
    .local v6, "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    const-string v0, "VMusicPageApapterTag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initialize TAB category:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    sget-object v0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$1;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    invoke-virtual {v6}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_144

    goto :goto_18

    .line 257
    :pswitch_5a
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isUplusBoxUse()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 259
    iget-object v10, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabList:Ljava/util/ArrayList;

    new-instance v0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;

    const v1, 0x7f0801b9

    invoke-direct {p0, v1}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020370

    iget-object v3, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/PageInfoType;->clone(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v3

    const-class v4, Lcom/pantech/app/music/list/fragment/ListUboxFragment;

    invoke-direct/range {v0 .. v5}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;-><init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;Ljava/lang/Class;I)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabPosition:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    add-int/lit8 v5, v5, 0x1

    goto :goto_18

    .line 266
    :pswitch_8c
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabList:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;

    const v2, 0x7f08003d

    invoke-direct {p0, v2}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02036d

    iget-object v4, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v10, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v4, v10}, Lcom/pantech/app/music/list/PageInfoType;->clone(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;-><init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabPosition:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_GENRE:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    add-int/lit8 v5, v5, 0x1

    .line 269
    goto/16 :goto_18

    .line 272
    :pswitch_b7
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKYCustomDB()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 274
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabList:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;

    const v2, 0x7f0800b9

    invoke-direct {p0, v2}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f02036c

    iget-object v4, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v10, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v4, v10}, Lcom/pantech/app/music/list/PageInfoType;->clone(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;-><init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabPosition:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_18

    .line 281
    :pswitch_e8
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabList:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;

    const v2, 0x7f080061

    invoke-direct {p0, v2}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/PageInfoType;->clone(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v3

    invoke-direct {v1, v2, v11, v3, v5}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;-><init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabPosition:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    add-int/lit8 v5, v5, 0x1

    .line 284
    goto/16 :goto_18

    .line 287
    :pswitch_110
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mContext:Landroid/content/Context;

    const-string v1, "devNowPlayingTab"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/pantech/app/music/list/utility/MusicLibraryUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    .line 288
    .local v7, "enableNowplayingTab":Z
    if-eqz v7, :cond_18

    .line 290
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabList:Ljava/util/ArrayList;

    new-instance v1, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;

    const v2, 0x7f08005f

    invoke-direct {p0, v2}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v4, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v3, v4}, Lcom/pantech/app/music/list/PageInfoType;->clone(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v3

    invoke-direct {v1, v2, v11, v3, v5}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;-><init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabPosition:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_18

    .line 296
    .end local v6    # "category":Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .end local v7    # "enableNowplayingTab":Z
    .end local v9    # "ordinal":I
    :cond_143
    return-void

    .line 254
    :pswitch_data_144
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_8c
        :pswitch_b7
        :pswitch_e8
        :pswitch_110
    .end packed-switch
.end method

.method private initializeTabForPicker()V
    .registers 8

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 304
    .local v0, "position":I
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 305
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabPosition:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 307
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabList:Ljava/util/ArrayList;

    new-instance v2, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;

    const v3, 0x7f080083

    invoke-direct {p0, v3}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02036f

    iget-object v5, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v5, v6}, Lcom/pantech/app/music/list/PageInfoType;->clone(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;-><init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabPosition:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_SONG:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    add-int/lit8 v0, v0, 0x1

    .line 311
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabList:Ljava/util/ArrayList;

    new-instance v2, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;

    const v3, 0x7f080017

    invoke-direct {p0, v3}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02036a

    iget-object v5, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v5, v6}, Lcom/pantech/app/music/list/PageInfoType;->clone(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;-><init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabPosition:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ALBUM:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    add-int/lit8 v0, v0, 0x1

    .line 315
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabList:Ljava/util/ArrayList;

    new-instance v2, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;

    const v3, 0x7f080018

    invoke-direct {p0, v3}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02036b

    iget-object v5, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v5, v6}, Lcom/pantech/app/music/list/PageInfoType;->clone(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;-><init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabPosition:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_ARTIST:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    add-int/lit8 v0, v0, 0x1

    .line 319
    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->isSKYCustomDB()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 321
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabList:Ljava/util/ArrayList;

    new-instance v2, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;

    const v3, 0x7f0800b9

    invoke-direct {p0, v3}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f02036c

    iget-object v5, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v5, v6}, Lcom/pantech/app/music/list/PageInfoType;->clone(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;-><init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabPosition:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_FOLDER:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    add-int/lit8 v0, v0, 0x1

    .line 325
    :cond_b5
    return-void
.end method

.method private initializeTabForUBOXPicker()V
    .registers 8

    .prologue
    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "position":I
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 331
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabPosition:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 333
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabList:Ljava/util/ArrayList;

    new-instance v2, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;

    const v3, 0x7f0801b9

    invoke-direct {p0, v3}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020370

    iget-object v5, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mPageInfo:Lcom/pantech/app/music/list/PageInfoType;

    sget-object v6, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v5, v6}, Lcom/pantech/app/music/list/PageInfoType;->clone(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)Lcom/pantech/app/music/list/PageInfoType;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;-><init>(Ljava/lang/String;ILcom/pantech/app/music/list/PageInfoType;I)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabPosition:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    return-void
.end method

.method public static setCategoryPosition(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "categoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v5, "musicLibraryPreference"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 141
    .local v4, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 143
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "tabCategorySize"

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 149
    .local v1, "categoryOrdinal":Ljava/lang/Integer;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 153
    .end local v1    # "categoryOrdinal":Ljava/lang/Integer;
    :cond_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const-string v6, ","

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 155
    const-string v5, "ListTabItemInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCategoryPosition() size:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", save:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v5, "tabCategoryList"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 160
    sget-object v5, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 161
    sget-object v5, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mCategoryList:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 162
    return-void
.end method


# virtual methods
.method public getItemSize()I
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabInfo(I)Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo$TabInfo;

    return-object v0
.end method

.method public getTabPosition(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;)I
    .registers 4
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .prologue
    .line 224
    iget-object v1, p0, Lcom/pantech/app/music/list/activity/tab/ListTabItemInfo;->mTabPosition:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 226
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_c

    const/4 v1, -0x1

    :goto_b
    return v1

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_b
.end method
