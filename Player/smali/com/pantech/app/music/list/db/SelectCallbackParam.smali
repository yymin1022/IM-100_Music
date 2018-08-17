.class public Lcom/pantech/app/music/list/db/SelectCallbackParam;
.super Ljava/lang/Object;
.source "SelectCallbackParam.java"


# instance fields
.field public mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public mCursor:Landroid/database/Cursor;

.field public mGridViewHolder:Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;

.field public mIsChecked:Z

.field public mPosition:I

.field public mViewHolder:Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;Landroid/database/Cursor;I)V
    .registers 5
    .param p1, "categoryType"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "holder"    # Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 28
    iput-object p3, p0, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCursor:Landroid/database/Cursor;

    .line 29
    iput p4, p0, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mPosition:I

    .line 30
    iput-object p2, p0, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mViewHolder:Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;Landroid/database/Cursor;I)V
    .registers 5
    .param p1, "categoryType"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "holder"    # Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 36
    iput-object p3, p0, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCursor:Landroid/database/Cursor;

    .line 37
    iput p4, p0, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mPosition:I

    .line 38
    iput-object p2, p0, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mGridViewHolder:Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;

    .line 39
    return-void
.end method


# virtual methods
.method public set(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;Landroid/database/Cursor;I)V
    .registers 5
    .param p1, "categoryType"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "holder"    # Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 43
    iput-object p1, p0, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 44
    iput-object p3, p0, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCursor:Landroid/database/Cursor;

    .line 45
    iput p4, p0, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mPosition:I

    .line 46
    iput-object p2, p0, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mViewHolder:Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$AdapterViewHolder;

    .line 47
    return-void
.end method

.method public set(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;Landroid/database/Cursor;I)V
    .registers 5
    .param p1, "categoryType"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "holder"    # Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 51
    iput-object p1, p0, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 52
    iput-object p3, p0, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCursor:Landroid/database/Cursor;

    .line 53
    iput p4, p0, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mPosition:I

    .line 54
    iput-object p2, p0, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mGridViewHolder:Lcom/pantech/app/music/list/adapter/helper/AdapterHolder$GridAdapterViewHolder;

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/list/db/SelectCallbackParam;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
