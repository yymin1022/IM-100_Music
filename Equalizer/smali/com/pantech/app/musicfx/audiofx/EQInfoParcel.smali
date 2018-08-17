.class public Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;
.super Ljava/lang/Object;
.source "EQInfoParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBandLevelRange:[S

.field public mCenterFreq:[I

.field public mNumberOfBands:S

.field public mNumberOfPresets:I

.field public mPresetText:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    new-instance v0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel$1;

    invoke-direct {v0}, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel$1;-><init>()V

    sput-object v0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p0, p1}, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->readFromParcel(Landroid/os/Parcel;)V

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/pantech/app/musicfx/audiofx/EQInfoParcel$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/pantech/app/musicfx/audiofx/EQInfoParcel$1;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getBandLevelRange()[S
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    return-object v0
.end method

.method public getCenterFreq()[I
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    return-object v0
.end method

.method public getNumberOfBands()S
    .registers 2

    .prologue
    .line 103
    iget-short v0, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfBands:S

    return v0
.end method

.method public getNumberOfPresets()I
    .registers 2

    .prologue
    .line 139
    iget v0, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfPresets:I

    return v0
.end method

.method public getPresetText()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 71
    .local v0, "temp":[I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfBands:S

    .line 73
    const-string v1, "readFromParcel"

    invoke-static {v1}, Lcom/pantech/app/musicfx/utils/MLog;->e(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 76
    invoke-static {v0}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->convertShortArray([I)[S

    move-result-object v1

    iput-object v1, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    .line 78
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readIntArray([I)V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfPresets:I

    .line 80
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public setBandLevelRange([S)V
    .registers 2
    .param p1, "mBandLevelRange"    # [S

    .prologue
    .line 121
    iput-object p1, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    .line 122
    return-void
.end method

.method public setCenterFreq([I)V
    .registers 2
    .param p1, "mCenterFreq"    # [I

    .prologue
    .line 133
    iput-object p1, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    .line 134
    return-void
.end method

.method public setNumberOfBands(S)V
    .registers 2
    .param p1, "mNumberOfBands"    # S

    .prologue
    .line 109
    iput-short p1, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfBands:S

    .line 110
    return-void
.end method

.method public setNumberOfPresets(I)V
    .registers 2
    .param p1, "mNumberOfPresets"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfPresets:I

    .line 146
    return-void
.end method

.method public setPresetText([Ljava/lang/String;)V
    .registers 2
    .param p1, "mPresetText"    # [Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    .line 158
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[mNumberOfBands="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-short v3, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfBands:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "szMessage":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    if-eqz v2, :cond_53

    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    array-length v2, v2

    if-ge v0, v2, :cond_53

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[Freq["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 91
    :cond_53
    const/4 v0, 0x0

    :goto_54
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    if-eqz v2, :cond_8b

    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    array-length v2, v2

    if-ge v0, v2, :cond_8b

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[BandLevelRange["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    aget-short v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    .line 94
    :cond_8b
    const/4 v0, 0x0

    :goto_8c
    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    if-eqz v2, :cond_c3

    iget-object v2, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_c3

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "[Preset["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    .line 97
    :cond_c3
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 50
    iget-short v1, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfBands:S

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mBandLevelRange:[S

    invoke-static {v1}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->convertIntArray([S)[I

    move-result-object v0

    .line 53
    .local v0, "temp":[I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 55
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mCenterFreq:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 56
    iget v1, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mNumberOfPresets:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object v1, p0, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->mPresetText:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->writeToParcel(Landroid/os/Parcel;)V

    .line 64
    return-void
.end method
