.class Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;
.super Ljava/lang/Object;
.source "SlideLockScreen.java"

# interfaces
.implements Lcom/baidu/internal/keyguard/slide/TargetCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SlideLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;


# direct methods
.method constructor <init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestHide()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 118
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$000(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TransportControlView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 119
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$000(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TransportControlView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$500(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 120
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$000(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TransportControlView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->setVisibility(I)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissGroup:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$400(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissGroup:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$400(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mOutAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$500(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 124
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissGroup:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$400(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :cond_1
    return-void
.end method

.method public requestShow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$000(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TransportControlView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$000(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TransportControlView;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mInAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$100(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 107
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$000(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TransportControlView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->setVisibility(I)V

    .line 109
    :cond_0
    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$200()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-static {}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$300()I

    move-result v0

    if-lez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissGroup:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$400(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissGroup:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$400(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mInAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$100(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 111
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissGroup:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$400(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 113
    :cond_2
    return-void
.end method
