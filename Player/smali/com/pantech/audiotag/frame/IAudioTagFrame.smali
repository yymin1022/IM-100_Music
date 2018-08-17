.class public interface abstract Lcom/pantech/audiotag/frame/IAudioTagFrame;
.super Ljava/lang/Object;
.source "IAudioTagFrame.java"


# virtual methods
.method public abstract getFrameData()Lcom/pantech/audiotag/frame/AudioTagFrameData;
.end method

.method public abstract getFrameID()Ljava/lang/String;
.end method

.method public abstract getFrameLength()I
.end method

.method public abstract isLyricsFrame()Z
.end method

.method public abstract isPadding()Z
.end method

.method public abstract isPictureFrame()Z
.end method

.method public abstract isTextFrame()Z
.end method

.method public abstract isValidFrameFlag()Z
.end method

.method public abstract skipPreviousFrame(Ljava/nio/ByteBuffer;)V
.end method
