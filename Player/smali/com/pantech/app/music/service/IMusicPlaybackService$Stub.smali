.class public abstract Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMusicPlaybackService.java"

# interfaces
.implements Lcom/pantech/app/music/service/IMusicPlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantech/app/music/service/IMusicPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/service/IMusicPlaybackService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.pantech.app.music.service.IMusicPlaybackService"

.field static final TRANSACTION_duration:I = 0xa

.field static final TRANSACTION_enqueue:I = 0x12

.field static final TRANSACTION_getAlbumId:I = 0x10

.field static final TRANSACTION_getAlbumName:I = 0xe

.field static final TRANSACTION_getArtistId:I = 0x11

.field static final TRANSACTION_getArtistName:I = 0xf

.field static final TRANSACTION_getAudioId:I = 0x1a

.field static final TRANSACTION_getAudioSessionId:I = 0x27

.field static final TRANSACTION_getDataPath:I = 0x19

.field static final TRANSACTION_getIsBTConnection:I = 0x2c

.field static final TRANSACTION_getLastConnection:I = 0x2d

.field static final TRANSACTION_getMediaMountedCount:I = 0x1d

.field static final TRANSACTION_getPath:I = 0x18

.field static final TRANSACTION_getPlayState:I = 0x1e

.field static final TRANSACTION_getQueue:I = 0x14

.field static final TRANSACTION_getQueueAt:I = 0x15

.field static final TRANSACTION_getQueueLength:I = 0x29

.field static final TRANSACTION_getQueuePosition:I = 0x3

.field static final TRANSACTION_getRating:I = 0x22

.field static final TRANSACTION_getRepeatMode:I = 0x23

.field static final TRANSACTION_getShuffleMode:I = 0x24

.field static final TRANSACTION_getTrackName:I = 0xd

.field static final TRANSACTION_isCallState:I = 0x26

.field static final TRANSACTION_isPlaying:I = 0x4

.field static final TRANSACTION_next:I = 0x9

.field static final TRANSACTION_open:I = 0x2

.field static final TRANSACTION_openFile:I = 0x1

.field static final TRANSACTION_pause:I = 0x6

.field static final TRANSACTION_play:I = 0x7

.field static final TRANSACTION_position:I = 0xb

.field static final TRANSACTION_prev:I = 0x8

.field static final TRANSACTION_rearrangeQueue:I = 0x17

.field static final TRANSACTION_refreshQueue:I = 0x25

.field static final TRANSACTION_removeQueues:I = 0x13

.field static final TRANSACTION_removeTrack:I = 0x1c

.field static final TRANSACTION_removeTracks:I = 0x1b

.field static final TRANSACTION_seek:I = 0xc

.field static final TRANSACTION_setFileTagChange:I = 0x2a

.field static final TRANSACTION_setMusicButtonReceiver:I = 0x2b

.field static final TRANSACTION_setQueuePosition:I = 0x16

.field static final TRANSACTION_setWidgetThemeType:I = 0x28

.field static final TRANSACTION_stop:I = 0x5

.field static final TRANSACTION_toggleRating:I = 0x1f

.field static final TRANSACTION_toggleRepeat:I = 0x20

.field static final TRANSACTION_toggleShuffle:I = 0x21


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p0, p0, v0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/pantech/app/music/service/IMusicPlaybackService;
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
    const-string v1, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/pantech/app/music/service/IMusicPlaybackService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/pantech/app/music/service/IMusicPlaybackService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 17
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
    .line 38
    sparse-switch p1, :sswitch_data_37e

    .line 440
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_7
    return v0

    .line 42
    :sswitch_8
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_7

    .line 47
    :sswitch_f
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->openFile(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    const/4 v0, 0x1

    goto :goto_7

    .line 56
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_20
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 60
    .local v2, "_arg0":[Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 61
    .local v4, "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->open([Lcom/pantech/app/music/list/MusicItemInfo;I)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    const/4 v0, 0x1

    goto :goto_7

    .line 67
    .end local v2    # "_arg0":[Lcom/pantech/app/music/list/MusicItemInfo;
    .end local v4    # "_arg1":I
    :sswitch_39
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->getQueuePosition()I

    move-result v10

    .line 69
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    const/4 v0, 0x1

    goto :goto_7

    .line 75
    .end local v10    # "_result":I
    :sswitch_4a
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->isPlaying()Z

    move-result v10

    .line 77
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    if-eqz v10, :cond_5e

    const/4 v0, 0x1

    :goto_59
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    const/4 v0, 0x1

    goto :goto_7

    .line 78
    :cond_5e
    const/4 v0, 0x0

    goto :goto_59

    .line 83
    .end local v10    # "_result":Z
    :sswitch_60
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->stop()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    const/4 v0, 0x1

    goto :goto_7

    .line 90
    :sswitch_6d
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->pause()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    const/4 v0, 0x1

    goto :goto_7

    .line 97
    :sswitch_7a
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->play()V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    const/4 v0, 0x1

    goto :goto_7

    .line 104
    :sswitch_87
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a0

    const/4 v2, 0x1

    .line 108
    .local v2, "_arg0":Z
    :goto_93
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 109
    .local v8, "_arg1":J
    invoke-virtual {p0, v2, v8, v9}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->prev(ZJ)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 106
    .end local v2    # "_arg0":Z
    .end local v8    # "_arg1":J
    :cond_a0
    const/4 v2, 0x0

    goto :goto_93

    .line 115
    :sswitch_a2
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_bb

    const/4 v2, 0x1

    .line 119
    .restart local v2    # "_arg0":Z
    :goto_ae
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 120
    .restart local v8    # "_arg1":J
    invoke-virtual {p0, v2, v8, v9}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->next(ZJ)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 117
    .end local v2    # "_arg0":Z
    .end local v8    # "_arg1":J
    :cond_bb
    const/4 v2, 0x0

    goto :goto_ae

    .line 126
    :sswitch_bd
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->duration()J

    move-result-wide v10

    .line 128
    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 130
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 134
    .end local v10    # "_result":J
    :sswitch_cf
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->position()J

    move-result-wide v10

    .line 136
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 138
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 142
    .end local v10    # "_result":J
    :sswitch_e1
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 145
    .local v2, "_arg0":J
    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->seek(J)J

    move-result-wide v10

    .line 146
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 148
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 152
    .end local v2    # "_arg0":J
    .end local v10    # "_result":J
    :sswitch_f7
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v10

    .line 154
    .local v10, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 160
    .end local v10    # "_result":Ljava/lang/String;
    :sswitch_109
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v10

    .line 162
    .restart local v10    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 168
    .end local v10    # "_result":Ljava/lang/String;
    :sswitch_11b
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v10

    .line 170
    .restart local v10    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 176
    .end local v10    # "_result":Ljava/lang/String;
    :sswitch_12d
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->getAlbumId()J

    move-result-wide v10

    .line 178
    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 180
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 184
    .end local v10    # "_result":J
    :sswitch_13f
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->getArtistId()J

    move-result-wide v10

    .line 186
    .restart local v10    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 188
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 192
    .end local v10    # "_result":J
    :sswitch_151
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 196
    .local v2, "_arg0":[Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16e

    const/4 v4, 0x1

    .line 197
    .local v4, "_arg1":Z
    :goto_165
    invoke-virtual {p0, v2, v4}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->enqueue([Lcom/pantech/app/music/list/MusicItemInfo;Z)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 196
    .end local v4    # "_arg1":Z
    :cond_16e
    const/4 v4, 0x0

    goto :goto_165

    .line 203
    .end local v2    # "_arg0":[Lcom/pantech/app/music/list/MusicItemInfo;
    :sswitch_170
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    .line 206
    .local v2, "_arg0":[J
    invoke-virtual {p0, v2}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->removeQueues([J)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 212
    .end local v2    # "_arg0":[J
    :sswitch_182
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->getQueue()[Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v10

    .line 214
    .local v10, "_result":[Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    const/4 v0, 0x1

    invoke-virtual {p3, v10, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 216
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 220
    .end local v10    # "_result":[Lcom/pantech/app/music/list/MusicItemInfo;
    :sswitch_195
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 223
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->getQueueAt(I)Lcom/pantech/app/music/list/MusicItemInfo;

    move-result-object v10

    .line 224
    .local v10, "_result":Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v10, :cond_1b2

    .line 226
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Lcom/pantech/app/music/list/MusicItemInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 232
    :goto_1af
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 230
    :cond_1b2
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1af

    .line 236
    .end local v2    # "_arg0":I
    .end local v10    # "_result":Lcom/pantech/app/music/list/MusicItemInfo;
    :sswitch_1b7
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 240
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 241
    .restart local v8    # "_arg1":J
    invoke-virtual {p0, v2, v8, v9}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->setQueuePosition(IJ)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 247
    .end local v2    # "_arg0":I
    .end local v8    # "_arg1":J
    :sswitch_1cd
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    sget-object v0, Lcom/pantech/app/music/list/MusicItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/pantech/app/music/list/MusicItemInfo;

    .line 250
    .local v2, "_arg0":[Lcom/pantech/app/music/list/MusicItemInfo;
    invoke-virtual {p0, v2}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->rearrangeQueue([Lcom/pantech/app/music/list/MusicItemInfo;)V

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 256
    .end local v2    # "_arg0":[Lcom/pantech/app/music/list/MusicItemInfo;
    :sswitch_1e3
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 258
    .local v10, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 260
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 264
    .end local v10    # "_result":Ljava/lang/String;
    :sswitch_1f5
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->getDataPath()Ljava/lang/String;

    move-result-object v10

    .line 266
    .restart local v10    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 272
    .end local v10    # "_result":Ljava/lang/String;
    :sswitch_207
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->getAudioId()J

    move-result-wide v10

    .line 274
    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 276
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 280
    .end local v10    # "_result":J
    :sswitch_219
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 284
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 285
    .local v4, "_arg1":I
    invoke-virtual {p0, v2, v4}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->removeTracks(II)I

    move-result v10

    .line 286
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 292
    .end local v2    # "_arg0":I
    .end local v4    # "_arg1":I
    .end local v10    # "_result":I
    :sswitch_233
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 295
    .local v2, "_arg0":J
    invoke-virtual {p0, v2, v3}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->removeTrack(J)I

    move-result v10

    .line 296
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 302
    .end local v2    # "_arg0":J
    .end local v10    # "_result":I
    :sswitch_249
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->getMediaMountedCount()I

    move-result v10

    .line 304
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 310
    .end local v10    # "_result":I
    :sswitch_25b
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->getPlayState()Ljava/lang/String;

    move-result-object v10

    .line 312
    .local v10, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 314
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 318
    .end local v10    # "_result":Ljava/lang/String;
    :sswitch_26d
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->toggleRating()V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 321
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 325
    :sswitch_27b
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->toggleRepeat()V

    .line 327
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 332
    :sswitch_289
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->toggleShuffle()V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 339
    :sswitch_297
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->getRating()J

    move-result-wide v10

    .line 341
    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 343
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 347
    .end local v10    # "_result":J
    :sswitch_2a9
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->getRepeatMode()I

    move-result v10

    .line 349
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 355
    .end local v10    # "_result":I
    :sswitch_2bb
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->getShuffleMode()I

    move-result v10

    .line 357
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 363
    .end local v10    # "_result":I
    :sswitch_2cd
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->refreshQueue()V

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 370
    :sswitch_2db
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->isCallState()Z

    move-result v10

    .line 372
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    if-eqz v10, :cond_2f0

    const/4 v0, 0x1

    :goto_2ea
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 373
    :cond_2f0
    const/4 v0, 0x0

    goto :goto_2ea

    .line 378
    .end local v10    # "_result":Z
    :sswitch_2f2
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->getAudioSessionId()I

    move-result v10

    .line 380
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 386
    .end local v10    # "_result":I
    :sswitch_304
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 389
    .local v2, "_arg0":I
    invoke-virtual {p0, v2}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->setWidgetThemeType(I)V

    .line 390
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 395
    .end local v2    # "_arg0":I
    :sswitch_316
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->getQueueLength()I

    move-result v10

    .line 397
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 403
    .end local v10    # "_result":I
    :sswitch_328
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 407
    .local v2, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 409
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 411
    .local v5, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, "_arg3":Ljava/lang/String;
    move-object v1, p0

    .line 412
    invoke-virtual/range {v1 .. v6}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->setFileTagChange(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 418
    .end local v2    # "_arg0":J
    .end local v4    # "_arg1":Ljava/lang/String;
    .end local v5    # "_arg2":Ljava/lang/String;
    .end local v6    # "_arg3":Ljava/lang/String;
    :sswitch_347
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->setMusicButtonReceiver()V

    .line 420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 425
    :sswitch_355
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->getIsBTConnection()Z

    move-result v10

    .line 427
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    if-eqz v10, :cond_36a

    const/4 v0, 0x1

    :goto_364
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 428
    :cond_36a
    const/4 v0, 0x0

    goto :goto_364

    .line 433
    .end local v10    # "_result":Z
    :sswitch_36c
    const-string v0, "com.pantech.app.music.service.IMusicPlaybackService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/pantech/app/music/service/IMusicPlaybackService$Stub;->getLastConnection()I

    move-result v10

    .line 435
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 437
    const/4 v0, 0x1

    goto/16 :goto_7

    .line 38
    :sswitch_data_37e
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_20
        0x3 -> :sswitch_39
        0x4 -> :sswitch_4a
        0x5 -> :sswitch_60
        0x6 -> :sswitch_6d
        0x7 -> :sswitch_7a
        0x8 -> :sswitch_87
        0x9 -> :sswitch_a2
        0xa -> :sswitch_bd
        0xb -> :sswitch_cf
        0xc -> :sswitch_e1
        0xd -> :sswitch_f7
        0xe -> :sswitch_109
        0xf -> :sswitch_11b
        0x10 -> :sswitch_12d
        0x11 -> :sswitch_13f
        0x12 -> :sswitch_151
        0x13 -> :sswitch_170
        0x14 -> :sswitch_182
        0x15 -> :sswitch_195
        0x16 -> :sswitch_1b7
        0x17 -> :sswitch_1cd
        0x18 -> :sswitch_1e3
        0x19 -> :sswitch_1f5
        0x1a -> :sswitch_207
        0x1b -> :sswitch_219
        0x1c -> :sswitch_233
        0x1d -> :sswitch_249
        0x1e -> :sswitch_25b
        0x1f -> :sswitch_26d
        0x20 -> :sswitch_27b
        0x21 -> :sswitch_289
        0x22 -> :sswitch_297
        0x23 -> :sswitch_2a9
        0x24 -> :sswitch_2bb
        0x25 -> :sswitch_2cd
        0x26 -> :sswitch_2db
        0x27 -> :sswitch_2f2
        0x28 -> :sswitch_304
        0x29 -> :sswitch_316
        0x2a -> :sswitch_328
        0x2b -> :sswitch_347
        0x2c -> :sswitch_355
        0x2d -> :sswitch_36c
        0x5f4e5446 -> :sswitch_8
    .end sparse-switch
.end method
