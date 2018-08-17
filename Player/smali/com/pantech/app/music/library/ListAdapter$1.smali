.class synthetic Lcom/pantech/app/music/library/ListAdapter$1;
.super Ljava/lang/Object;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/library/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

.field static final synthetic $SwitchMap$com$pantech$app$music$library$IListHolderHelper$ClickBehavior:[I

.field static final synthetic $SwitchMap$com$pantech$app$music$library$IListHolderHelper$ViewType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 709
    invoke-static {}, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->values()[Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/app/music/library/ListAdapter$1;->$SwitchMap$com$pantech$app$music$library$IListHolderHelper$ClickBehavior:[I

    :try_start_9
    sget-object v0, Lcom/pantech/app/music/library/ListAdapter$1;->$SwitchMap$com$pantech$app$music$library$IListHolderHelper$ClickBehavior:[I

    sget-object v1, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_MOVE_DETAIL_WITH_IMAGE:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_b8

    :goto_14
    :try_start_14
    sget-object v0, Lcom/pantech/app/music/library/ListAdapter$1;->$SwitchMap$com$pantech$app$music$library$IListHolderHelper$ClickBehavior:[I

    sget-object v1, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_MOVE_DETAIL_WITH_TITLE:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_b5

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/pantech/app/music/library/ListAdapter$1;->$SwitchMap$com$pantech$app$music$library$IListHolderHelper$ClickBehavior:[I

    sget-object v1, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_PLAY_TRACKS:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_b2

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/pantech/app/music/library/ListAdapter$1;->$SwitchMap$com$pantech$app$music$library$IListHolderHelper$ClickBehavior:[I

    sget-object v1, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_PLAY_ONLY_TRACKS:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_b0

    :goto_35
    :try_start_35
    sget-object v0, Lcom/pantech/app/music/library/ListAdapter$1;->$SwitchMap$com$pantech$app$music$library$IListHolderHelper$ClickBehavior:[I

    sget-object v1, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_PLAY_CUR_ITEM:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_ae

    :goto_40
    :try_start_40
    sget-object v0, Lcom/pantech/app/music/library/ListAdapter$1;->$SwitchMap$com$pantech$app$music$library$IListHolderHelper$ClickBehavior:[I

    sget-object v1, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_PLAY_ALBUM_TRACK:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_ac

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/pantech/app/music/library/ListAdapter$1;->$SwitchMap$com$pantech$app$music$library$IListHolderHelper$ClickBehavior:[I

    sget-object v1, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->CLICK_SEND_ITEM_INFO:Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/IListHolderHelper$ClickBehavior;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_aa

    .line 352
    :goto_56
    invoke-static {}, Lcom/pantech/app/music/library/FragmentInfo$Category;->values()[Lcom/pantech/app/music/library/FragmentInfo$Category;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/app/music/library/ListAdapter$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    :try_start_5f
    sget-object v0, Lcom/pantech/app/music/library/ListAdapter$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_a8

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/pantech/app/music/library/ListAdapter$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_PLAYLIST_TRACK:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_a6

    :goto_75
    :try_start_75
    sget-object v0, Lcom/pantech/app/music/library/ListAdapter$1;->$SwitchMap$com$pantech$app$music$library$FragmentInfo$Category:[I

    sget-object v1, Lcom/pantech/app/music/library/FragmentInfo$Category;->CATEGORY_NOW_PLAYING:Lcom/pantech/app/music/library/FragmentInfo$Category;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/FragmentInfo$Category;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_a4

    .line 94
    :goto_80
    invoke-static {}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->values()[Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/app/music/library/ListAdapter$1;->$SwitchMap$com$pantech$app$music$library$IListHolderHelper$ViewType:[I

    :try_start_89
    sget-object v0, Lcom/pantech/app/music/library/ListAdapter$1;->$SwitchMap$com$pantech$app$music$library$IListHolderHelper$ViewType:[I

    sget-object v1, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_DIVIDER_BUTTON:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_94
    .catch Ljava/lang/NoSuchFieldError; {:try_start_89 .. :try_end_94} :catch_a2

    :goto_94
    :try_start_94
    sget-object v0, Lcom/pantech/app/music/library/ListAdapter$1;->$SwitchMap$com$pantech$app$music$library$IListHolderHelper$ViewType:[I

    sget-object v1, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->VIEW_TYPE_DIVIDER:Lcom/pantech/app/music/library/IListHolderHelper$ViewType;

    invoke-virtual {v1}, Lcom/pantech/app/music/library/IListHolderHelper$ViewType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_94 .. :try_end_9f} :catch_a0

    :goto_9f
    return-void

    :catch_a0
    move-exception v0

    goto :goto_9f

    :catch_a2
    move-exception v0

    goto :goto_94

    .line 352
    :catch_a4
    move-exception v0

    goto :goto_80

    :catch_a6
    move-exception v0

    goto :goto_75

    :catch_a8
    move-exception v0

    goto :goto_6a

    .line 709
    :catch_aa
    move-exception v0

    goto :goto_56

    :catch_ac
    move-exception v0

    goto :goto_4b

    :catch_ae
    move-exception v0

    goto :goto_40

    :catch_b0
    move-exception v0

    goto :goto_35

    :catch_b2
    move-exception v0

    goto/16 :goto_2a

    :catch_b5
    move-exception v0

    goto/16 :goto_1f

    :catch_b8
    move-exception v0

    goto/16 :goto_14
.end method
