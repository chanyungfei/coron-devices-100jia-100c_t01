.class public Lcom/baidu/themeanimation/element/TimeElement;
.super Lcom/baidu/themeanimation/element/VisibleElement;
.source "TimeElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TimeElement"


# instance fields
.field private mSrc:Ljava/lang/String;

.field private mTimeElementView:Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/VisibleElement;-><init>()V

    .line 97
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-static {p0}, Lcom/baidu/themeanimation/element/TimeElement;->checkIs24HoursMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static checkIs24HoursMode(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 89
    .local v0, cv:Landroid/content/ContentResolver;
    const-string v2, "time_12_24"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, strTimeFormat:Ljava/lang/String;
    const-string v2, "24"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    const/4 v2, 0x1

    .line 94
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearView()V
    .locals 2

    .prologue
    .line 65
    invoke-super {p0}, Lcom/baidu/themeanimation/element/VisibleElement;->clearView()V

    .line 66
    iget-object v1, p0, Lcom/baidu/themeanimation/element/TimeElement;->mTimeElementView:Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/baidu/themeanimation/element/TimeElement;->mTimeElementView:Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 68
    .local v0, viewGroup:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 69
    iget-object v1, p0, Lcom/baidu/themeanimation/element/TimeElement;->mTimeElementView:Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/baidu/themeanimation/element/TimeElement;->mTimeElementView:Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;

    .line 74
    .end local v0           #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 36
    new-instance v0, Lcom/baidu/themeanimation/element/TimeElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/TimeElement;-><init>()V

    return-object v0
.end method

.method public generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "handler"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TimeElement;->mTimeElementView:Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;

    invoke-direct {v0, p0, p0, p1}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;-><init>(Lcom/baidu/themeanimation/element/TimeElement;Lcom/baidu/themeanimation/element/TimeElement;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/baidu/themeanimation/element/TimeElement;->mTimeElementView:Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TimeElement;->mTimeElementView:Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;

    invoke-virtual {p0, v0}, Lcom/baidu/themeanimation/element/TimeElement;->setView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TimeElement;->mTimeElementView:Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/baidu/themeanimation/element/TimeElement;->mSrc:Ljava/lang/String;

    return-object v0
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 31
    const-string v0, "Time"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TimeElement"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/baidu/themeanimation/element/TimeElement;->mSrc:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setX(I)V
    .locals 5
    .parameter "posX"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/baidu/themeanimation/element/VisibleElement;->setX(I)V

    .line 42
    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TimeElement;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;

    .line 43
    .local v0, view:Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;
    if-eqz v0, :cond_0

    .line 44
    #calls: Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->updateLayoutParams()V
    invoke-static {v0}, Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;->access$000(Lcom/baidu/themeanimation/element/TimeElement$TimeElementView;)V

    .line 47
    :cond_0
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TimeElement;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".actual_w"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-long v3, p1

    invoke-virtual {v1, v2, v3, v4}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 48
    return-void
.end method

.method public setY(I)V
    .locals 4
    .parameter "posY"

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/baidu/themeanimation/element/VisibleElement;->setY(I)V

    .line 53
    invoke-static {}, Lcom/baidu/themeanimation/manager/ExpressionManager;->getInstance()Lcom/baidu/themeanimation/manager/ExpressionManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/baidu/themeanimation/element/TimeElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".actual_h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/themeanimation/manager/ExpressionManager;->setVariableValue(Ljava/lang/String;J)V

    .line 54
    return-void
.end method
