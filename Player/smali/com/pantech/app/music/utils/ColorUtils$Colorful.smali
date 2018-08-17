.class public Lcom/pantech/app/music/utils/ColorUtils$Colorful;
.super Ljava/lang/Object;
.source "ColorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/utils/ColorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Colorful"
.end annotation


# instance fields
.field blendingcolor:I

.field extractedcolor:I

.field maincolor:I

.field private opaqueSubcolor:I

.field pointcolor:I

.field pointcolor2:I

.field subcolor:I


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .param p1, "color"    # I

    .prologue
    const/4 v0, -0x1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput v0, p0, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->extractedcolor:I

    .line 169
    iput v0, p0, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->maincolor:I

    .line 170
    iput v0, p0, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->subcolor:I

    .line 171
    iput v0, p0, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->pointcolor:I

    .line 172
    iput v0, p0, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->pointcolor2:I

    .line 173
    iput v0, p0, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->blendingcolor:I

    .line 174
    iput v0, p0, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->opaqueSubcolor:I

    .line 177
    iput p1, p0, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->extractedcolor:I

    .line 178
    return-void
.end method


# virtual methods
.method public getBlendingcolor()I
    .registers 2

    .prologue
    .line 213
    iget v0, p0, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->blendingcolor:I

    return v0
.end method

.method public getExtractedcolor()I
    .registers 2

    .prologue
    .line 221
    iget v0, p0, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->extractedcolor:I

    return v0
.end method

.method public getMaincolor()I
    .registers 2

    .prologue
    .line 181
    iget v0, p0, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->maincolor:I

    return v0
.end method

.method public getOpaqueSubcolor()I
    .registers 2

    .prologue
    .line 233
    iget v0, p0, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->opaqueSubcolor:I

    return v0
.end method

.method public getPointcolor()I
    .registers 2

    .prologue
    .line 197
    iget v0, p0, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->pointcolor:I

    return v0
.end method

.method public getPointcolor2()I
    .registers 2

    .prologue
    .line 205
    iget v0, p0, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->pointcolor2:I

    return v0
.end method

.method public getSubcolor()I
    .registers 2

    .prologue
    .line 189
    iget v0, p0, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->subcolor:I

    return v0
.end method

.method public setBlendingcolor(I)V
    .registers 2
    .param p1, "blendingcolor"    # I

    .prologue
    .line 217
    iput p1, p0, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->blendingcolor:I

    .line 218
    return-void
.end method

.method public setExtractedcolor(I)V
    .registers 2
    .param p1, "extractedcolor"    # I

    .prologue
    .line 225
    iput p1, p0, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->extractedcolor:I

    .line 226
    return-void
.end method

.method public setMaincolor(I)V
    .registers 2
    .param p1, "maincolor"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->maincolor:I

    .line 186
    return-void
.end method

.method public setOpaqueSubcolor(I)V
    .registers 2
    .param p1, "opaqueSubcolor"    # I

    .prologue
    .line 229
    iput p1, p0, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->opaqueSubcolor:I

    .line 230
    return-void
.end method

.method public setPointcolor(I)V
    .registers 2
    .param p1, "pointcolor"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->pointcolor:I

    .line 202
    return-void
.end method

.method public setPointcolor2(I)V
    .registers 2
    .param p1, "pointcolor2"    # I

    .prologue
    .line 209
    iput p1, p0, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->pointcolor2:I

    .line 210
    return-void
.end method

.method public setSubcolor(I)V
    .registers 2
    .param p1, "subcolor"    # I

    .prologue
    .line 193
    iput p1, p0, Lcom/pantech/app/music/utils/ColorUtils$Colorful;->subcolor:I

    .line 194
    return-void
.end method
