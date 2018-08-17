.class synthetic Lcom/pantech/app/music/list/module/PlayInterface$2;
.super Ljava/lang/Object;
.source "PlayInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/PlayInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$pantech$app$music$list$module$PlayInterface$PlayerCallerType:[I

.field static final synthetic $SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 197
    invoke-static {}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->values()[Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/app/music/list/module/PlayInterface$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    :try_start_9
    sget-object v0, Lcom/pantech/app/music/list/module/PlayInterface$2;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_NOWPLAYING:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2b

    .line 64
    :goto_14
    invoke-static {}, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->values()[Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/app/music/list/module/PlayInterface$2;->$SwitchMap$com$pantech$app$music$list$module$PlayInterface$PlayerCallerType:[I

    :try_start_1d
    sget-object v0, Lcom/pantech/app/music/list/module/PlayInterface$2;->$SwitchMap$com$pantech$app$music$list$module$PlayInterface$PlayerCallerType:[I

    sget-object v1, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->LIST:Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;

    invoke-virtual {v1}, Lcom/pantech/app/music/list/module/PlayInterface$PlayerCallerType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_29

    :goto_28
    return-void

    :catch_29
    move-exception v0

    goto :goto_28

    .line 197
    :catch_2b
    move-exception v0

    goto :goto_14
.end method
