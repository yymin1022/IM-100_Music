.class public interface abstract Lcom/pantech/app/music/list/component/view/IMusicCheckable;
.super Ljava/lang/Object;
.source "IMusicCheckable.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;
    }
.end annotation


# virtual methods
.method public abstract getPartialChecked()Z
.end method

.method public abstract setOnCheckedChangeListener(Lcom/pantech/app/music/list/component/view/IMusicCheckable$OnCheckedChangeListener;)V
.end method

.method public abstract setPartialChecked(Z)V
.end method
