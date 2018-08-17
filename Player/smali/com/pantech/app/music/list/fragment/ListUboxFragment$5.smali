.class synthetic Lcom/pantech/app/music/list/fragment/ListUboxFragment$5;
.super Ljava/lang/Object;
.source "ListUboxFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/fragment/ListUboxFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 158
    invoke-static {}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->values()[Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$5;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    :try_start_9
    sget-object v0, Lcom/pantech/app/music/list/fragment/ListUboxFragment$5;->$SwitchMap$com$pantech$app$music$utils$LibraryUtils$CategoryType:[I

    sget-object v1, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v1}, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method
