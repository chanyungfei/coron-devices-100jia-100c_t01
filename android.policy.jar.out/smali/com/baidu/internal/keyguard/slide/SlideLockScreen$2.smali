.class Lcom/baidu/internal/keyguard/slide/SlideLockScreen$2;
.super Ljava/lang/Object;
.source "SlideLockScreen.java"

# interfaces
.implements Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SlideLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastState:I

.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$2;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isVisible(Landroid/view/View;)Z
    .locals 1
    .parameter "self"

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPlayStateChanged(I)V
    .locals 4
    .parameter "state"

    .prologue
    .line 172
    const-string v1, "SlideLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlayStateChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$2;->mLastState:I

    if-eq p1, v1, :cond_0

    .line 174
    iput p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$2;->mLastState:I

    .line 175
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$2;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$000(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TransportControlView;

    move-result-object v1

    const v2, 0x1020297

    invoke-virtual {v1, v2}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 176
    .local v0, album:Landroid/widget/ImageView;
    iget v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$2;->mLastState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 177
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 182
    .end local v0           #album:Landroid/widget/ImageView;
    :cond_0
    :goto_0
    return-void

    .line 179
    .restart local v0       #album:Landroid/widget/ImageView;
    :cond_1
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$2;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$900(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public requestHide(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x0

    .line 161
    const-string v2, "SlideLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requested hide transports"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$2;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$700(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TargetView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/baidu/internal/keyguard/slide/TargetView;->setMusicPlayState(Z)V

    .line 163
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$2;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #setter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMusicPlaying:Z
    invoke-static {v2, v5}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$802(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;Z)Z

    move-object v1, p1

    .line 164
    check-cast v1, Lcom/baidu/internal/keyguard/slide/TransportControlView;

    .line 165
    .local v1, tcv:Lcom/baidu/internal/keyguard/slide/TransportControlView;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 166
    invoke-virtual {v1, v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method public requestShow(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    .line 150
    const-string v2, "SlideLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requested show transports"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$2;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$700(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TargetView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/baidu/internal/keyguard/slide/TargetView;->setMusicPlayState(Z)V

    .line 152
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$2;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #setter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMusicPlaying:Z
    invoke-static {v2, v5}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$802(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;Z)Z

    .line 153
    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$2;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;
    invoke-static {v2}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$700(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TargetView;

    move-result-object v2

    const v3, 0x102029f

    invoke-virtual {v2, v3}, Lcom/baidu/internal/keyguard/slide/TargetView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    move-object v1, p1

    .line 154
    check-cast v1, Lcom/baidu/internal/keyguard/slide/TransportControlView;

    .line 155
    .local v1, tcv:Lcom/baidu/internal/keyguard/slide/TransportControlView;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 156
    invoke-virtual {v1, v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    return-void
.end method

.method public setBackground(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    .line 143
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$2;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$000(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TransportControlView;

    move-result-object v1

    const v2, 0x1020297

    invoke-virtual {v1, v2}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 144
    .local v0, album:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 145
    return-void
.end method

.method public userActivity(Landroid/view/View;)V
    .locals 3
    .parameter "self"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$2;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$600(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 135
    return-void
.end method
