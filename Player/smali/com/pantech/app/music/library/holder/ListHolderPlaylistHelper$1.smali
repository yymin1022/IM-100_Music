.class synthetic Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper$1;
.super Ljava/lang/Object;
.source "ListHolderPlaylistHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 42
    invoke-static {}, Lcom/pantech/app/music/library/FragmentInfo$Category;->values()[Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    :try_start_9
    sget-object v0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_RECENTLY_ADDED:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_3c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_MOST_PLAYED:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_3a

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_FAVORITE:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_38

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/pantech/app/music/library/holder/ListHolderPlaylistHelper$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_36

    :goto_35
    return-void

    :catch_36
    move-exception v0

    goto :goto_35

    :catch_38
    move-exception v0

    goto :goto_2a

    :catch_3a
    move-exception v0

    goto :goto_1f

    :catch_3c
    move-exception v0

    goto :goto_14
.end method
