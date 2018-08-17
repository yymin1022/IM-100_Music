.class public Lcom/pantech/app/music/properties/MusicPropertiesAdapter;
.super Landroid/widget/CursorAdapter;
.source "MusicPropertiesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantech/app/music/properties/MusicPropertiesAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicPropertiesAdapter"


# instance fields
.field private mColumnItems:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 28
    const-string v0, "MusicPropertiesAdapter"

    const-string v1, "MusicPropertiesAdapter"

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/properties/MusicPropertiesAdapter;->initialize(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "autoRequery"    # Z

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 34
    const-string v0, "MusicPropertiesAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MusicPropertiesAdapter :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/pantech/app/music/properties/MusicPropertiesAdapter;->initialize(Landroid/content/Context;)V

    .line 36
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x0

    .line 46
    const-string v4, "MusicPropertiesAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bindView  VIEW_TYPE_GROUP  view:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    .line 48
    check-cast v0, Landroid/view/ViewGroup;

    .line 50
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pantech/app/music/properties/MusicPropertiesAdapter$ViewHolder;

    .line 51
    .local v3, "vh":Lcom/pantech/app/music/properties/MusicPropertiesAdapter$ViewHolder;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 53
    iget-object v4, p0, Lcom/pantech/app/music/properties/MusicPropertiesAdapter;->mColumnItems:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "szTitle":Ljava/lang/String;
    iget-object v4, p0, Lcom/pantech/app/music/properties/MusicPropertiesAdapter;->mColumnItems:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "szSubTitle":Ljava/lang/String;
    iget-object v4, v3, Lcom/pantech/app/music/properties/MusicPropertiesAdapter$ViewHolder;->mainText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v4, v3, Lcom/pantech/app/music/properties/MusicPropertiesAdapter$ViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 59
    iget-object v4, v3, Lcom/pantech/app/music/properties/MusicPropertiesAdapter$ViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method public initialize(Landroid/content/Context;)V
    .registers 4
    .param p1, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pantech/app/music/properties/MusicPropertiesAdapter;->mColumnItems:[Ljava/lang/String;

    .line 40
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, "group":Landroid/view/ViewGroup;
    if-eqz p1, :cond_57

    .line 70
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 71
    .local v2, "vi":Landroid/view/LayoutInflater;
    const v4, 0x7f03006b

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .end local v0    # "group":Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 73
    .restart local v0    # "group":Landroid/view/ViewGroup;
    const-string v3, "MusicPropertiesAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreatedView  VIEW_TYPE_GROUP  view:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pantech/app/music/utils/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v1, Lcom/pantech/app/music/properties/MusicPropertiesAdapter$ViewHolder;

    invoke-direct {v1, p0}, Lcom/pantech/app/music/properties/MusicPropertiesAdapter$ViewHolder;-><init>(Lcom/pantech/app/music/properties/MusicPropertiesAdapter;)V

    .line 76
    .local v1, "vh":Lcom/pantech/app/music/properties/MusicPropertiesAdapter$ViewHolder;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 78
    const v3, 0x7f1000f3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/pantech/app/music/properties/MusicPropertiesAdapter$ViewHolder;->mainText:Landroid/widget/TextView;

    .line 79
    iget-object v3, v1, Lcom/pantech/app/music/properties/MusicPropertiesAdapter$ViewHolder;->mainText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    const v3, 0x7f1000f4

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/pantech/app/music/properties/MusicPropertiesAdapter$ViewHolder;->subText:Landroid/widget/TextView;

    .line 82
    iget-object v3, v1, Lcom/pantech/app/music/properties/MusicPropertiesAdapter$ViewHolder;->subText:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    move-object v3, v0

    .line 87
    .end local v1    # "vh":Lcom/pantech/app/music/properties/MusicPropertiesAdapter$ViewHolder;
    .end local v2    # "vi":Landroid/view/LayoutInflater;
    :cond_57
    return-object v3
.end method
