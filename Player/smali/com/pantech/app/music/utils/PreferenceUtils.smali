.class public Lcom/pantech/app/music/utils/PreferenceUtils;
.super Ljava/lang/Object;
.source "PreferenceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/utils/PreferenceUtils$1;
    }
.end annotation


# static fields
.field public static final CHANGE_DISPLAY_FILENAME:I = 0x2

.field public static final CHANGE_TAB_CATEGORY:I = 0x1

.field static final DELIMITER:Ljava/lang/String; = ","

.field static final KEY_BUBBLE_TIP:Ljava/lang/String; = "Music_BubbleTip"

.field static final KEY_DISPLAY_FILENAME:Ljava/lang/String; = "list_display_filename"

.field static final KEY_TAB_CURRENT:Ljava/lang/String; = "Music_Tab_Current"

.field static final KEY_TAB_LIST:Ljava/lang/String; = "category_view_items"

.field private static final TAG:Ljava/lang/String; = "PreferenceUtils"

.field private static mChangeDisplayFilenameMaxCount:I

.field private static mChanges:I

.field private static sDisplayAsFilename:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 21
    sput v0, Lcom/pantech/app/music/utils/PreferenceUtils;->mChanges:I

    .line 22
    sput v0, Lcom/pantech/app/music/utils/PreferenceUtils;->mChangeDisplayFilenameMaxCount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    return-void
.end method

.method public static checkChanges(I)Z
    .registers 2
    .param p0, "changes"    # I

    .prologue
    .line 163
    sget v0, Lcom/pantech/app/music/utils/PreferenceUtils;->mChanges:I

    and-int/2addr v0, p0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static checkTabBubbleTip(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 149
    const-string v3, "musicLibraryPreference"

    invoke-virtual {p0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 150
    .local v0, "preference":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Music_BubbleTip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Music_BubbleTip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ALBUM:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3f

    :cond_3e
    move v1, v2

    :cond_3f
    return v1
.end method

.method public static initialize(Landroid/content/Context;)V
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-static {p0}, Lcom/pantech/app/music/utils/PreferenceUtils;->loadDisplayFileName(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/pantech/app/music/utils/PreferenceUtils;->sDisplayAsFilename:Z

    .line 32
    return-void
.end method

.method public static isDisplayAsFilename()Z
    .registers 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/pantech/app/music/utils/PreferenceUtils;->sDisplayAsFilename:Z

    return v0
.end method

.method public static loadBubbleTip(Landroid/content/Context;Lcom/pantech/app/music/library/FragmentInfo$Category;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;

    .prologue
    const/4 v1, 0x0

    .line 136
    sget-object v2, Lcom/pantech/app/music/utils/PreferenceUtils$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    invoke-virtual {p1}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_30

    .line 145
    :goto_c
    return v1

    .line 144
    :pswitch_d
    const-string v2, "musicLibraryPreference"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    .local v0, "preference":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Music_BubbleTip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pantech/app/music/library/FragmentInfo$Category;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_c

    .line 136
    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public static loadCurrentTab(Landroid/content/Context;)Lcom/pantech/app/music/library/FragmentInfo$Category;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 69
    const-string v2, "musicLibraryPreference"

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 70
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string v2, "Music_Tab_Current"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 71
    .local v1, "value":I
    invoke-static {v1}, Lcom/pantech/app/music/library/FragmentInfo;->fromOrdinal(I)Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v2

    return-object v2
.end method

.method public static loadDisplayFileName(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 50
    const-string v1, "musicLibraryPreference"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 51
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string v1, "list_display_filename"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static loadTabCategory(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "forceDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v7}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ALBUM:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v7}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_ARTIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v7}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v7}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "defaultCategory":Ljava/lang/String;
    const-string v6, "IM-A910S"

    invoke-static {}, Lcom/pantech/app/music/common/ModelInfo;->getModelID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_72

    .line 101
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_FOLDER:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v7}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 104
    :cond_72
    const-string v6, "musicLibraryPreference"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 106
    .local v2, "preference":Landroid/content/SharedPreferences;
    const-string v6, "category_view_items"

    invoke-interface {v2, v6, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "szCategoryList":Ljava/lang/String;
    const-string v6, "PreferenceUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTabCategory load:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    if-eqz p1, :cond_9a

    .line 111
    move-object v3, v1

    .line 114
    :cond_9a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v0, "categoryArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_ca

    .line 116
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v5, v3, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .local v5, "tokenizer":Ljava/util/StringTokenizer;
    :cond_ac
    :goto_ac
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_ca

    .line 118
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 119
    .local v4, "token":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_ac

    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_ac

    .line 120
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ac

    .line 124
    .end local v4    # "token":Ljava/lang/String;
    .end local v5    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_ca
    return-object v0
.end method

.method public static resetChanges(I)V
    .registers 3
    .param p0, "changes"    # I

    .prologue
    .line 154
    sget v0, Lcom/pantech/app/music/utils/PreferenceUtils;->mChangeDisplayFilenameMaxCount:I

    if-lez v0, :cond_a

    .line 155
    sget v0, Lcom/pantech/app/music/utils/PreferenceUtils;->mChangeDisplayFilenameMaxCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/pantech/app/music/utils/PreferenceUtils;->mChangeDisplayFilenameMaxCount:I

    .line 157
    :cond_a
    sget v0, Lcom/pantech/app/music/utils/PreferenceUtils;->mChangeDisplayFilenameMaxCount:I

    if-gtz v0, :cond_15

    .line 158
    sget v0, Lcom/pantech/app/music/utils/PreferenceUtils;->mChanges:I

    xor-int/lit8 v1, p0, -0x1

    and-int/2addr v0, v1

    sput v0, Lcom/pantech/app/music/utils/PreferenceUtils;->mChanges:I

    .line 160
    :cond_15
    return-void
.end method

.method public static saveBubbleTip(Landroid/content/Context;Lcom/pantech/app/music/library/FragmentInfo$Category;Z)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;
    .param p2, "show"    # Z

    .prologue
    .line 128
    const-string v2, "musicLibraryPreference"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 129
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 131
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Music_BubbleTip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/pantech/app/music/library/FragmentInfo$Category;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    return-void
.end method

.method public static saveCurrentTab(Landroid/content/Context;Lcom/pantech/app/music/library/FragmentInfo$Category;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "category"    # Lcom/pantech/app/music/library/FragmentInfo$Category;

    .prologue
    .line 59
    const-string v2, "musicLibraryPreference"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 60
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 62
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "PreferenceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveCurrentTab() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v2, "Music_Tab_Current"

    invoke-virtual {p1}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 66
    return-void
.end method

.method public static saveDisplayFileName(Landroid/content/Context;Z)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "set"    # Z

    .prologue
    .line 35
    const-string v2, "musicLibraryPreference"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 36
    .local v1, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 38
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "PreferenceUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveDisplayFileName() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pantech/app/music/utils/MLog;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string v2, "list_display_filename"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 43
    sput-boolean p1, Lcom/pantech/app/music/utils/PreferenceUtils;->sDisplayAsFilename:Z

    .line 45
    sget v2, Lcom/pantech/app/music/utils/PreferenceUtils;->mChanges:I

    or-int/lit8 v2, v2, 0x2

    sput v2, Lcom/pantech/app/music/utils/PreferenceUtils;->mChanges:I

    .line 46
    const/4 v2, 0x3

    sput v2, Lcom/pantech/app/music/utils/PreferenceUtils;->mChangeDisplayFilenameMaxCount:I

    .line 47
    return-void
.end method

.method public static saveTabCategory(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    .local p1, "categoryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v5, "musicLibraryPreference"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 76
    .local v4, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 78
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 80
    .local v1, "categoryID":Ljava/lang/Long;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 83
    .end local v1    # "categoryID":Ljava/lang/Long;
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const-string v6, ","

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 87
    const-string v5, "category_view_items"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 90
    sget v5, Lcom/pantech/app/music/utils/PreferenceUtils;->mChanges:I

    or-int/lit8 v5, v5, 0x1

    sput v5, Lcom/pantech/app/music/utils/PreferenceUtils;->mChanges:I

    .line 91
    return-void
.end method
