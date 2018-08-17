.class public abstract Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService$Stub;
.super Landroid/os/Binder;
.source "IAudioEffectManageService.java"

# interfaces
.implements Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.pantech.app.musicfx.audiofx.IAudioEffectManageService"

.field static final TRANSACTION_getEffectSettingParcel:I = 0xc

.field static final TRANSACTION_getEqualizerBands:I = 0x9

.field static final TRANSACTION_getEqualizerInfo:I = 0xd

.field static final TRANSACTION_isHeadsetConnected:I = 0xa

.field static final TRANSACTION_isSTONEConnected:I = 0xb

.field static final TRANSACTION_releaseEffectDirectly:I = 0x8

.field static final TRANSACTION_setBassBoost:I = 0x4

.field static final TRANSACTION_setEqualizer:I = 0x1

.field static final TRANSACTION_setEqualizerPreview:I = 0x2

.field static final TRANSACTION_setLoudnessMaximizer:I = 0x7

.field static final TRANSACTION_setPresetReverb:I = 0x5

.field static final TRANSACTION_setTrebleEnhance:I = 0x6

.field static final TRANSACTION_setVirtualizer:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.pantech.app.musicfx.audiofx.IAudioEffectManageService"

    invoke-virtual {p0, p0, v0}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.pantech.app.musicfx.audiofx.IAudioEffectManageService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_1ca

    .line 230
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_9
    return v7

    .line 42
    :sswitch_a
    const-string v0, "com.pantech.app.musicfx.audiofx.IAudioEffectManageService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_9

    .line 47
    :sswitch_10
    const-string v0, "com.pantech.app.musicfx.audiofx.IAudioEffectManageService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 53
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 55
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 57
    .local v4, "_arg3":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3b

    move v5, v7

    .local v5, "_arg4":Z
    :goto_2c
    move-object v0, p0

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService$Stub;->setEqualizer(Ljava/lang/String;II[IZ)Z

    move-result v6

    .line 59
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    if-eqz v6, :cond_37

    move v8, v7

    :cond_37
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .end local v5    # "_arg4":Z
    .end local v6    # "_result":Z
    :cond_3b
    move v5, v8

    .line 57
    goto :goto_2c

    .line 65
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[I
    :sswitch_3d
    const-string v0, "com.pantech.app.musicfx.audiofx.IAudioEffectManageService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 71
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 73
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 74
    .restart local v4    # "_arg3":[I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService$Stub;->setEqualizerPreview(Ljava/lang/String;II[I)Z

    move-result v6

    .line 75
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v6, :cond_5c

    move v8, v7

    :cond_5c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 81
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":[I
    .end local v6    # "_result":Z
    :sswitch_60
    const-string v0, "com.pantech.app.musicfx.audiofx.IAudioEffectManageService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 85
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 87
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 89
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8c

    move v4, v7

    .line 91
    .local v4, "_arg3":Z
    :goto_78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 92
    invoke-virtual/range {v0 .. v5}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService$Stub;->setVirtualizer(Ljava/lang/String;IIZI)Z

    move-result v6

    .line 93
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v6, :cond_87

    move v8, v7

    :cond_87
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    .end local v6    # "_result":Z
    :cond_8c
    move v4, v8

    .line 89
    goto :goto_78

    .line 99
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_8e
    const-string v0, "com.pantech.app.musicfx.audiofx.IAudioEffectManageService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 105
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 107
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b5

    move v4, v7

    .line 108
    .restart local v4    # "_arg3":Z
    :goto_a6
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService$Stub;->setBassBoost(Ljava/lang/String;IIZ)Z

    move-result v6

    .line 109
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v6, :cond_b0

    move v8, v7

    :cond_b0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v4    # "_arg3":Z
    .end local v6    # "_result":Z
    :cond_b5
    move v4, v8

    .line 107
    goto :goto_a6

    .line 115
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_b7
    const-string v0, "com.pantech.app.musicfx.audiofx.IAudioEffectManageService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 119
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 121
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 123
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_de

    move v4, v7

    .line 124
    .restart local v4    # "_arg3":Z
    :goto_cf
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService$Stub;->setPresetReverb(Ljava/lang/String;IIZ)Z

    move-result v6

    .line 125
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    if-eqz v6, :cond_d9

    move v8, v7

    :cond_d9
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v4    # "_arg3":Z
    .end local v6    # "_result":Z
    :cond_de
    move v4, v8

    .line 123
    goto :goto_cf

    .line 131
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_e0
    const-string v0, "com.pantech.app.musicfx.audiofx.IAudioEffectManageService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 135
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 137
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 139
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_107

    move v4, v7

    .line 140
    .restart local v4    # "_arg3":Z
    :goto_f8
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService$Stub;->setTrebleEnhance(Ljava/lang/String;IIZ)Z

    move-result v6

    .line 141
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v6, :cond_102

    move v8, v7

    :cond_102
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v4    # "_arg3":Z
    .end local v6    # "_result":Z
    :cond_107
    move v4, v8

    .line 139
    goto :goto_f8

    .line 147
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_109
    const-string v0, "com.pantech.app.musicfx.audiofx.IAudioEffectManageService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 151
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 153
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 155
    .restart local v3    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_130

    move v4, v7

    .line 156
    .restart local v4    # "_arg3":Z
    :goto_121
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService$Stub;->setLoudnessMaximizer(Ljava/lang/String;IIZ)Z

    move-result v6

    .line 157
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v6, :cond_12b

    move v8, v7

    :cond_12b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v4    # "_arg3":Z
    .end local v6    # "_result":Z
    :cond_130
    move v4, v8

    .line 155
    goto :goto_121

    .line 163
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    :sswitch_132
    const-string v0, "com.pantech.app.musicfx.audiofx.IAudioEffectManageService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 167
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_151

    move v2, v7

    .line 168
    .local v2, "_arg1":Z
    :goto_142
    invoke-virtual {p0, v1, v2}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService$Stub;->releaseEffectDirectly(IZ)Z

    move-result v6

    .line 169
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v6, :cond_14c

    move v8, v7

    :cond_14c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .end local v2    # "_arg1":Z
    .end local v6    # "_result":Z
    :cond_151
    move v2, v8

    .line 167
    goto :goto_142

    .line 175
    .end local v1    # "_arg0":I
    :sswitch_153
    const-string v0, "com.pantech.app.musicfx.audiofx.IAudioEffectManageService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 178
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService$Stub;->getEqualizerBands(I)[I

    move-result-object v6

    .line 179
    .local v6, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_9

    .line 185
    .end local v1    # "_arg0":I
    .end local v6    # "_result":[I
    :sswitch_168
    const-string v0, "com.pantech.app.musicfx.audiofx.IAudioEffectManageService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService$Stub;->isHeadsetConnected()Z

    move-result v6

    .line 187
    .local v6, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    if-eqz v6, :cond_177

    move v8, v7

    :cond_177
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 193
    .end local v6    # "_result":Z
    :sswitch_17c
    const-string v0, "com.pantech.app.musicfx.audiofx.IAudioEffectManageService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService$Stub;->isSTONEConnected()Z

    move-result v6

    .line 195
    .restart local v6    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v6, :cond_18b

    move v8, v7

    :cond_18b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 201
    .end local v6    # "_result":Z
    :sswitch_190
    const-string v0, "com.pantech.app.musicfx.audiofx.IAudioEffectManageService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService$Stub;->getEffectSettingParcel(Ljava/lang/String;)Lcom/pantech/app/musicfx/audiofx/SettingParcel;

    move-result-object v6

    .line 205
    .local v6, "_result":Lcom/pantech/app/musicfx/audiofx/SettingParcel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v6, :cond_1aa

    .line 207
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    invoke-virtual {v6, p3, v7}, Lcom/pantech/app/musicfx/audiofx/SettingParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 211
    :cond_1aa
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 217
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_result":Lcom/pantech/app/musicfx/audiofx/SettingParcel;
    :sswitch_1af
    const-string v0, "com.pantech.app.musicfx.audiofx.IAudioEffectManageService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/pantech/app/musicfx/audiofx/IAudioEffectManageService$Stub;->getEqualizerInfo()Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;

    move-result-object v6

    .line 219
    .local v6, "_result":Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v6, :cond_1c5

    .line 221
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    invoke-virtual {v6, p3, v7}, Lcom/pantech/app/musicfx/audiofx/EQInfoParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_9

    .line 225
    :cond_1c5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_9

    .line 38
    :sswitch_data_1ca
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_3d
        0x3 -> :sswitch_60
        0x4 -> :sswitch_8e
        0x5 -> :sswitch_b7
        0x6 -> :sswitch_e0
        0x7 -> :sswitch_109
        0x8 -> :sswitch_132
        0x9 -> :sswitch_153
        0xa -> :sswitch_168
        0xb -> :sswitch_17c
        0xc -> :sswitch_190
        0xd -> :sswitch_1af
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
