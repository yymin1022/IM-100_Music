.class public Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;
.super Ljava/lang/Object;
.source "ModelInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/common/ModelInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ModelInfoType"
.end annotation


# instance fields
.field private mAllowLogLevel:I

.field private final mBitmapCacheMemorySize:I

.field private mCustomDBType:I

.field private mFunction:J

.field public final mIsRelease:Z

.field private final mLCDFactor:I

.field public final mModelID:Lcom/pantech/app/music/common/ModelInfo$ModelType;

.field private final mModelName:Ljava/lang/String;

.field private final mNavigationKeyType:I

.field private final mThemeType:I

.field private final mVendor:I


# direct methods
.method public constructor <init>(ILcom/pantech/app/music/common/ModelInfo$ModelType;Ljava/lang/String;IIIIJ)V
    .registers 12
    .param p1, "vendor"    # I
    .param p2, "modelID"    # Lcom/pantech/app/music/common/ModelInfo$ModelType;
    .param p3, "modelName"    # Ljava/lang/String;
    .param p4, "dbType"    # I
    .param p5, "themeType"    # I
    .param p6, "lcd_factor"    # I
    .param p7, "naviBarType"    # I
    .param p8, "funtion"    # J

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mFunction:J

    .line 162
    iput p1, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mVendor:I

    .line 163
    iput-object p2, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mModelID:Lcom/pantech/app/music/common/ModelInfo$ModelType;

    .line 165
    iput p4, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mCustomDBType:I

    .line 166
    iput-object p3, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mModelName:Ljava/lang/String;

    .line 168
    packed-switch p6, :pswitch_data_36

    .line 181
    const/high16 v0, 0x1800000

    iput v0, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mBitmapCacheMemorySize:I

    .line 185
    :goto_16
    iput p5, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mThemeType:I

    .line 186
    iput p6, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mLCDFactor:I

    .line 188
    iput p7, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mNavigationKeyType:I

    .line 190
    iput-wide p8, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mFunction:J

    .line 193
    invoke-static {p2}, Lcom/pantech/app/music/common/ModelInfo$ModelType;->getLogLevel(Lcom/pantech/app/music/common/ModelInfo$ModelType;)I

    move-result v0

    iput v0, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mAllowLogLevel:I

    .line 195
    invoke-static {p2}, Lcom/pantech/app/music/common/ModelInfo$ModelType;->isReleaseModel(Lcom/pantech/app/music/common/ModelInfo$ModelType;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mIsRelease:Z

    .line 196
    return-void

    .line 172
    :pswitch_2b
    const/high16 v0, 0x2400000

    iput v0, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mBitmapCacheMemorySize:I

    goto :goto_16

    .line 177
    :pswitch_30
    const/high16 v0, 0x3000000

    iput v0, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mBitmapCacheMemorySize:I

    goto :goto_16

    .line 168
    nop

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_2b
        :pswitch_30
        :pswitch_30
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    .prologue
    .line 142
    iget v0, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mVendor:I

    return v0
.end method

.method static synthetic access$100(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    .prologue
    .line 142
    iget v0, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mCustomDBType:I

    return v0
.end method

.method static synthetic access$200(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    .prologue
    .line 142
    iget v0, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mAllowLogLevel:I

    return v0
.end method

.method static synthetic access$300(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    .prologue
    .line 142
    iget v0, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mThemeType:I

    return v0
.end method

.method static synthetic access$400(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    .prologue
    .line 142
    iget v0, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mNavigationKeyType:I

    return v0
.end method

.method static synthetic access$500(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)J
    .registers 3
    .param p0, "x0"    # Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    .prologue
    .line 142
    iget-wide v0, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mFunction:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mModelName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    .prologue
    .line 142
    iget v0, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mLCDFactor:I

    return v0
.end method

.method static synthetic access$800(Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;)I
    .registers 2
    .param p0, "x0"    # Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;

    .prologue
    .line 142
    iget v0, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mBitmapCacheMemorySize:I

    return v0
.end method


# virtual methods
.method public changeLogLevel(I)V
    .registers 2
    .param p1, "logLevel"    # I

    .prologue
    .line 200
    iput p1, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mAllowLogLevel:I

    .line 201
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "model:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mModelName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mBitmapCacheMemorySize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mBitmapCacheMemorySize:I

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "kb logLevel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mAllowLogLevel:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCustomDB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mCustomDBType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFunction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mFunction:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toBinaryString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mThemeType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pantech/app/music/common/ModelInfo$ModelInfoType;->mThemeType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
