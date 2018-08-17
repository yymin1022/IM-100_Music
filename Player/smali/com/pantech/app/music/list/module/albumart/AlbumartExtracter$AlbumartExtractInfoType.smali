.class public Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;
.super Ljava/lang/Object;
.source "AlbumartExtracter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumartExtractInfoType"
.end annotation


# instance fields
.field public mAlbumartCallback:Lcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;

.field public mAlbumartColorCallback:Lcom/pantech/app/music/list/module/albumart/IAlbumartColorExtractCallback;

.field public mAlbumartMostColor:I

.field public mAlbumartSize:Lcom/pantech/app/music/albumart/AlbumArtCache$Size;

.field public mBitmap:Landroid/graphics/Bitmap;

.field public mBitmaps:[Landroid/graphics/Bitmap;

.field public mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

.field public mCurrentFragment:Z

.field public mGroupID:J

.field public mKey:Ljava/lang/String;

.field mResultInfo:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;

.field public mTargetAlbumView:Landroid/view/View;

.field public mTargetMulitAlbumView:Landroid/widget/ImageView;

.field public mUrl:Ljava/lang/String;

.field public mUseDefaultAlbumartCache:Z

.field public mViewHolder:Landroid/support/v7/widget/RecyclerView$ViewHolder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLandroid/view/View;Landroid/widget/ImageView;ZLcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;)V
    .registers 8
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "id"    # J
    .param p4, "imgView"    # Landroid/view/View;
    .param p5, "targetMulitAlbumView"    # Landroid/widget/ImageView;
    .param p6, "current"    # Z
    .param p7, "callback"    # Lcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p4, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mTargetAlbumView:Landroid/view/View;

    .line 110
    iput-object p5, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mTargetMulitAlbumView:Landroid/widget/ImageView;

    .line 112
    iput-object p1, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 114
    iput-wide p2, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mGroupID:J

    .line 116
    iput-boolean p6, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mCurrentFragment:Z

    .line 118
    iput-object p7, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mAlbumartCallback:Lcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLandroid/view/View;ZLcom/pantech/app/music/list/module/albumart/IAlbumartColorExtractCallback;)V
    .registers 7
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "id"    # J
    .param p4, "imgView"    # Landroid/view/View;
    .param p5, "current"    # Z
    .param p6, "callback"    # Lcom/pantech/app/music/list/module/albumart/IAlbumartColorExtractCallback;

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput-object p4, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mTargetAlbumView:Landroid/view/View;

    .line 200
    iput-object p1, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 202
    iput-wide p2, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mGroupID:J

    .line 204
    iput-boolean p5, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mCurrentFragment:Z

    .line 206
    iput-object p6, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mAlbumartColorCallback:Lcom/pantech/app/music/list/module/albumart/IAlbumartColorExtractCallback;

    .line 207
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;JLcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;)V
    .registers 7
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "id"    # J
    .param p4, "callback"    # Lcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object v0, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mTargetAlbumView:Landroid/view/View;

    .line 157
    iput-object v0, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mTargetMulitAlbumView:Landroid/widget/ImageView;

    .line 159
    iput-object p1, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 161
    iput-wide p2, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mGroupID:J

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mCurrentFragment:Z

    .line 165
    iput-object p4, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mAlbumartCallback:Lcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;

    .line 166
    return-void
.end method

.method public constructor <init>(Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;ZLcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;)V
    .registers 9
    .param p1, "category"    # Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "imgView"    # Landroid/view/View;
    .param p5, "current"    # Z
    .param p6, "callback"    # Lcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p4, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mTargetAlbumView:Landroid/view/View;

    .line 137
    iput-object p1, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 139
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mGroupID:J

    .line 140
    iput-object p2, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mKey:Ljava/lang/String;

    .line 141
    iput-object p3, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mUrl:Ljava/lang/String;

    .line 143
    iput-boolean p5, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mCurrentFragment:Z

    .line 145
    iput-object p6, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mAlbumartCallback:Lcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mTargetAlbumView:Landroid/view/View;

    .line 177
    sget-object v0, Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;->CATEGORY_UBOX:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    iput-object v0, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mCategory:Lcom/pantech/app/music/utils/LibraryUtils$CategoryType;

    .line 179
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mGroupID:J

    .line 180
    iput-object p1, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mKey:Ljava/lang/String;

    .line 181
    iput-object p2, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mUrl:Ljava/lang/String;

    .line 183
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mCurrentFragment:Z

    .line 185
    iput-object p3, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mAlbumartCallback:Lcom/pantech/app/music/list/module/albumart/IAlbumartExtractCallback;

    .line 186
    return-void
.end method


# virtual methods
.method public getResultInfo()Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;
    .registers 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mResultInfo:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;

    return-object v0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mBitmap:Landroid/graphics/Bitmap;

    .line 221
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 222
    iget-object v0, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mBitmaps:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 223
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "normal"    # Landroid/graphics/Bitmap;
    .param p2, "big"    # Landroid/graphics/Bitmap;
    .param p3, "big_cloned"    # Landroid/graphics/Bitmap;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mBitmap:Landroid/graphics/Bitmap;

    .line 212
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 213
    iget-object v0, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mBitmaps:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 214
    iget-object v0, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mBitmaps:[Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 215
    iget-object v0, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mBitmaps:[Landroid/graphics/Bitmap;

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 216
    return-void
.end method

.method public setBitmaps([Landroid/graphics/Bitmap;)V
    .registers 2
    .param p1, "bitmap"    # [Landroid/graphics/Bitmap;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 228
    return-void
.end method

.method public setResultInfo(Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;)V
    .registers 2
    .param p1, "result"    # Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$AlbumartExtractInfoType;->mResultInfo:Lcom/pantech/app/music/list/module/albumart/AlbumartExtracter$ResultInfo;

    .line 232
    return-void
.end method
