.class Landroid/webkit/WebViewClassic$PrivateHandler;
.super Landroid/os/Handler;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/webkit/WebViewInputDispatcher$UiCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewClassic;)V
    .locals 0
    .parameter

    .prologue
    .line 8246
    iput-object p1, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public clearPreviousHitTest()V
    .locals 2

    .prologue
    .line 8768
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v1, 0x0

    #calls: Landroid/webkit/WebViewClassic;->setHitTestResult(Landroid/webkit/WebViewCore$WebKitHitTest;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewClassic;->access$6700(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)V

    .line 8769
    return-void
.end method

.method public dispatchUiEvent(Landroid/view/MotionEvent;II)V
    .locals 1
    .parameter "event"
    .parameter "eventType"
    .parameter "flags"

    .prologue
    .line 8720
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->onHandleUiEvent(Landroid/view/MotionEvent;II)V
    invoke-static {v0, p1, p2, p3}, Landroid/webkit/WebViewClassic;->access$8300(Landroid/webkit/WebViewClassic;Landroid/view/MotionEvent;II)V

    .line 8721
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 8725
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getIsMagnifierOn()Z
    .locals 1

    .prologue
    .line 8750
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mMagnifierOn:Z
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$8600(Landroid/webkit/WebViewClassic;)Z

    move-result v0

    return v0
.end method

.method public getUiLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 8715
    invoke-virtual {p0}, Landroid/webkit/WebViewClassic$PrivateHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 44
    .parameter "msg"

    .prologue
    .line 8250
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v7, 0x75

    if-eq v2, v7, :cond_0

    .line 8251
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v7, 0x1

    if-lt v2, v7, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v7, 0xb

    if-gt v2, v7, :cond_2

    .line 8253
    const-string/jumbo v2, "webview"

    sget-object v7, Landroid/webkit/WebViewClassic;->HandlerPrivateDebugString:[Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8263
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v2

    if-nez v2, :cond_4

    .line 8711
    :cond_1
    :goto_1
    return-void

    .line 8255
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v7, 0x65

    if-lt v2, v7, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v7, 0x83

    if-gt v2, v7, :cond_3

    .line 8257
    const-string/jumbo v2, "webview"

    sget-object v7, Landroid/webkit/WebViewClassic;->HandlerPackageDebugString:[Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    add-int/lit8 v8, v8, -0x65

    aget-object v7, v7, v8

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8260
    :cond_3
    const-string/jumbo v2, "webview"

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8267
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mBlockWebkitViewMessages:Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$3000(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v7, 0x6b

    if-ne v2, v7, :cond_1

    .line 8272
    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 8708
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_1

    .line 8276
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8278
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$3100(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8279
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mPopupWindowView:Landroid/webkit/PopupWindowView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$3200(Landroid/webkit/WebViewClassic;)Landroid/webkit/PopupWindowView;

    move-result-object v2

    if-nez v2, :cond_6

    .line 8280
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v7, Landroid/webkit/PopupWindowView;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-direct {v7, v8, v9}, Landroid/webkit/PopupWindowView;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebViewClassic;)V

    #setter for: Landroid/webkit/WebViewClassic;->mPopupWindowView:Landroid/webkit/PopupWindowView;
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$3202(Landroid/webkit/WebViewClassic;Landroid/webkit/PopupWindowView;)Landroid/webkit/PopupWindowView;

    .line 8282
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mPopupWindowView:Landroid/webkit/PopupWindowView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$3200(Landroid/webkit/WebViewClassic;)Landroid/webkit/PopupWindowView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mLastTouchX:I
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$3300(Landroid/webkit/WebViewClassic;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mLastTouchY:I
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$3400(Landroid/webkit/WebViewClassic;)I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/webkit/PopupWindowView;->show(II)V

    goto/16 :goto_1

    .line 8289
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$2800(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewDatabaseClassic;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "host"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "username"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "password"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Landroid/webkit/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8293
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 8297
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDatabase:Landroid/webkit/WebViewDatabaseClassic;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$2800(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewDatabaseClassic;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "host"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Landroid/webkit/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8298
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 8302
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollX:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$3500(Landroid/webkit/WebViewClassic;)I

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollY:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$3600(Landroid/webkit/WebViewClassic;)I

    move-result v2

    if-nez v2, :cond_7

    .line 8303
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mSentAutoScrollMessage:Z
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$3702(Landroid/webkit/WebViewClassic;Z)Z

    goto/16 :goto_1

    .line 8306
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mCurrentScrollingLayerId:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$3800(Landroid/webkit/WebViewClassic;)I

    move-result v2

    if-nez v2, :cond_8

    .line 8307
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollX:I
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$3500(Landroid/webkit/WebViewClassic;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollY:I
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$3600(Landroid/webkit/WebViewClassic;)I

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    #calls: Landroid/webkit/WebViewClassic;->pinScrollBy(IIZI)Z
    invoke-static {v2, v7, v8, v9, v10}, Landroid/webkit/WebViewClassic;->access$3900(Landroid/webkit/WebViewClassic;IIZI)Z

    .line 8312
    :goto_2
    const/16 v2, 0xb

    const-wide/16 v7, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7, v8}, Landroid/webkit/WebViewClassic$PrivateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 8309
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$4000(Landroid/webkit/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollX:I
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$3500(Landroid/webkit/WebViewClassic;)I

    move-result v8

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$4000(Landroid/webkit/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoScrollY:I
    invoke-static {v9}, Landroid/webkit/WebViewClassic;->access$3600(Landroid/webkit/WebViewClassic;)I

    move-result v9

    add-int/2addr v8, v9

    #calls: Landroid/webkit/WebViewClassic;->scrollLayerTo(II)V
    invoke-static {v2, v7, v8}, Landroid/webkit/WebViewClassic;->access$4100(Landroid/webkit/WebViewClassic;II)V

    goto :goto_2

    .line 8319
    :sswitch_4
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_9

    .line 8322
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v22

    .line 8323
    .local v22, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v22, :cond_1

    invoke-virtual/range {v22 .. v22}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8328
    .end local v22           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/graphics/Point;

    .line 8329
    .local v31, p:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v31

    iget v8, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v2, v10, :cond_a

    const/4 v2, 0x1

    :goto_3
    #calls: Landroid/webkit/WebViewClassic;->contentScrollTo(IIZ)V
    invoke-static {v7, v8, v9, v2}, Landroid/webkit/WebViewClassic;->access$4200(Landroid/webkit/WebViewClassic;IIZ)V

    goto/16 :goto_1

    :cond_a
    const/4 v2, 0x0

    goto :goto_3

    .line 8333
    .end local v31           #p:Landroid/graphics/Point;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/webkit/WebViewCore$ViewState;

    .line 8335
    .local v39, viewState:Landroid/webkit/WebViewCore$ViewState;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$4300(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v7

    move-object/from16 v0, v39

    iget v8, v0, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    move-object/from16 v0, v39

    invoke-virtual {v2, v0, v7, v8}, Landroid/webkit/ZoomManager;->updateZoomRange(Landroid/webkit/WebViewCore$ViewState;II)V

    goto/16 :goto_1

    .line 8339
    .end local v39           #viewState:Landroid/webkit/WebViewCore$ViewState;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v15

    .line 8340
    .local v15, density:F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mZoomManager:Landroid/webkit/ZoomManager;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$4300(Landroid/webkit/WebViewClassic;)Landroid/webkit/ZoomManager;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/webkit/ZoomManager;->updateDefaultZoomDensity(F)V

    goto/16 :goto_1

    .line 8345
    .end local v15           #density:F
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/webkit/WebViewCore$DrawData;

    .line 8346
    .local v17, draw:Landroid/webkit/WebViewCore$DrawData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v7}, Landroid/webkit/WebViewClassic;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    goto/16 :goto_1

    .line 8351
    .end local v17           #draw:Landroid/webkit/WebViewCore$DrawData;
    :sswitch_8
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/webkit/BrowserFrame;->getRawResFilename(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 8353
    .local v18, drawableDir:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v8

    move-object/from16 v0, v18

    #calls: Landroid/webkit/WebViewClassic;->nativeCreate(ILjava/lang/String;Z)V
    invoke-static {v2, v7, v0, v8}, Landroid/webkit/WebViewClassic;->access$4400(Landroid/webkit/WebViewClassic;ILjava/lang/String;Z)V

    .line 8354
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$4500(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$DrawData;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 8355
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$4500(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$DrawData;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v2, v7, v8}, Landroid/webkit/WebViewClassic;->setNewPicture(Landroid/webkit/WebViewCore$DrawData;Z)V

    .line 8356
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mDelaySetPicture:Landroid/webkit/WebViewCore$DrawData;
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$4502(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$DrawData;)Landroid/webkit/WebViewCore$DrawData;

    .line 8358
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsPaused:Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$4600(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 8359
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$4700(Landroid/webkit/WebViewClassic;)I

    move-result v2

    const/4 v7, 0x1

    #calls: Landroid/webkit/WebViewClassic;->nativeSetPauseDrawing(IZ)V
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$4800(IZ)V

    .line 8361
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v7, Landroid/webkit/WebViewInputDispatcher;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/WebViewCore;->getInputDispatcherCallbacks()Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v8}, Landroid/webkit/WebViewInputDispatcher;-><init>(Landroid/webkit/WebViewInputDispatcher$UiCallbacks;Landroid/webkit/WebViewInputDispatcher$WebKitCallbacks;)V

    #setter for: Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$4902(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewInputDispatcher;)Landroid/webkit/WebViewInputDispatcher;

    goto/16 :goto_1

    .line 8367
    .end local v18           #drawableDir:Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mTextGeneration:I
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$5000(Landroid/webkit/WebViewClassic;)I

    move-result v7

    if-ne v2, v7, :cond_1

    .line 8368
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 8369
    .local v5, text:Ljava/lang/String;
    if-nez v5, :cond_d

    .line 8370
    const-string v5, ""

    .line 8372
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v2

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    if-ne v2, v7, :cond_1

    .line 8374
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v2, v5}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setTextAndKeepSelection(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 8379
    .end local v5           #text:Ljava/lang/String;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebViewCore$TextSelectionData;

    #calls: Landroid/webkit/WebViewClassic;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    invoke-static {v7, v8, v9, v2}, Landroid/webkit/WebViewClassic;->access$5100(Landroid/webkit/WebViewClassic;IILandroid/webkit/WebViewCore$TextSelectionData;)V

    goto/16 :goto_1

    .line 8383
    :sswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v16, v0

    .line 8384
    .local v16, direction:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->focusSearch(I)Landroid/view/View;

    move-result-object v19

    .line 8385
    .local v19, focusSearch:Landroid/view/View;
    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    move-object/from16 v0, v19

    if-eq v0, v2, :cond_1

    .line 8386
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_1

    .line 8390
    .end local v16           #direction:I
    .end local v19           #focusSearch:Landroid/view/View;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_1

    .line 8393
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/graphics/Rect;

    .line 8394
    .local v33, r:Landroid/graphics/Rect;
    if-nez v33, :cond_e

    .line 8395
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_1

    .line 8399
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v33

    iget v7, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v33

    iget v8, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v33

    iget v9, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v33

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    #calls: Landroid/webkit/WebViewClassic;->viewInvalidate(IIII)V
    invoke-static {v2, v7, v8, v9, v10}, Landroid/webkit/WebViewClassic;->access$5200(Landroid/webkit/WebViewClassic;IIII)V

    goto/16 :goto_1

    .line 8404
    .end local v33           #r:Landroid/graphics/Rect;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v2

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    if-ne v2, v7, :cond_1

    .line 8405
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/widget/ArrayAdapter;

    .line 8406
    .local v13, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/webkit/AutoCompletePopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 8411
    .end local v13           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v2

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    if-ne v2, v7, :cond_1

    .line 8412
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/widget/ArrayAdapter;

    .line 8413
    .restart local v13       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDataListOptionsPopup:Landroid/webkit/DataListOptionsPopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/webkit/DataListOptionsPopup;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/webkit/DataListOptionsPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 8420
    .end local v13           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mGotCenterDown:Z
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$5302(Landroid/webkit/WebViewClassic;Z)Z

    .line 8421
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mTrackballDown:Z
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$5402(Landroid/webkit/WebViewClassic;Z)Z

    .line 8422
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->performLongClick()Z

    goto/16 :goto_1

    .line 8426
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mInputDispatcher:Landroid/webkit/WebViewInputDispatcher;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$4900(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewInputDispatcher;

    move-result-object v7

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v7, v2}, Landroid/webkit/WebViewInputDispatcher;->setWebKitWantsTouchEvents(Z)V

    goto/16 :goto_1

    :cond_f
    const/4 v2, 0x0

    goto :goto_4

    .line 8430
    :sswitch_12
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_10

    .line 8431
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$400(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_1

    .line 8433
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x0

    #calls: Landroid/webkit/WebViewClassic;->displaySoftKeyboard(Z)V
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$5500(Landroid/webkit/WebViewClassic;Z)V

    goto/16 :goto_1

    .line 8438
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x2

    #setter for: Landroid/webkit/WebViewClassic;->mHeldMotionless:I
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$5602(Landroid/webkit/WebViewClassic;I)I

    .line 8439
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_1

    .line 8443
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v7

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_11

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v7, v2}, Landroid/webkit/WebView;->setKeepScreenOn(Z)V

    goto/16 :goto_1

    :cond_11
    const/4 v2, 0x0

    goto :goto_5

    .line 8447
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$5700(Landroid/webkit/WebViewClassic;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8448
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$5700(Landroid/webkit/WebViewClassic;)Landroid/webkit/HTML5VideoViewProxy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoViewProxy;->exitFullScreenVideo()V

    goto/16 :goto_1

    .line 8453
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/view/View;

    .line 8454
    .local v37, view:Landroid/view/View;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 8455
    .local v30, orientation:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v29, v0

    .line 8457
    .local v29, npp:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->inFullScreenMode()Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$5800(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 8458
    const-string/jumbo v2, "webview"

    const-string v7, "Should not have another full screen."

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8459
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->dismissFullScreenMode()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$5900(Landroid/webkit/WebViewClassic;)V

    .line 8461
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    new-instance v7, Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move/from16 v0, v30

    move/from16 v1, v29

    invoke-direct {v7, v8, v0, v1}, Landroid/webkit/PluginFullScreenHolder;-><init>(Landroid/webkit/WebViewClassic;II)V

    iput-object v7, v2, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    .line 8462
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Landroid/webkit/PluginFullScreenHolder;->setContentView(Landroid/view/View;)V

    .line 8463
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v2}, Landroid/webkit/PluginFullScreenHolder;->show()V

    .line 8464
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->invalidate()V

    goto/16 :goto_1

    .line 8469
    .end local v29           #npp:I
    .end local v30           #orientation:I
    .end local v37           #view:Landroid/view/View;
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->dismissFullScreenMode()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$5900(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_1

    .line 8473
    :sswitch_18
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/webkit/WebViewCore$ShowRectData;

    .line 8474
    .local v14, data:Landroid/webkit/WebViewCore$ShowRectData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v7, v14, Landroid/webkit/WebViewCore$ShowRectData;->mLeft:I

    invoke-virtual {v2, v7}, Landroid/webkit/WebViewClassic;->contentToViewX(I)I

    move-result v24

    .line 8475
    .local v24, left:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v7, v14, Landroid/webkit/WebViewCore$ShowRectData;->mWidth:I

    invoke-virtual {v2, v7}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v41

    .line 8476
    .local v41, width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v7, v14, Landroid/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    invoke-virtual {v2, v7}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v28

    .line 8477
    .local v28, maxWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getViewWidth()I

    move-result v40

    .line 8478
    .local v40, viewWidth:I
    move/from16 v0, v24

    int-to-float v2, v0

    iget v7, v14, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    move/from16 v0, v41

    int-to-float v8, v0

    mul-float/2addr v7, v8

    add-float/2addr v2, v7

    iget v7, v14, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    move/from16 v0, v40

    int-to-float v8, v0

    mul-float/2addr v7, v8

    sub-float/2addr v2, v7

    float-to-int v0, v2

    move/from16 v42, v0

    .line 8481
    .local v42, x:I
    const-string/jumbo v2, "webview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showRectMsg=(left="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",width="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v41

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",maxWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",viewWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v40

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",x="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v42

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",xPercentInDoc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v14, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",xPercentInView="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v14, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8489
    const/4 v2, 0x0

    add-int v7, v42, v40

    move/from16 v0, v28

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int v7, v7, v40

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 8491
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v7, v14, Landroid/webkit/WebViewCore$ShowRectData;->mTop:I

    invoke-virtual {v2, v7}, Landroid/webkit/WebViewClassic;->contentToViewY(I)I

    move-result v36

    .line 8492
    .local v36, top:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v7, v14, Landroid/webkit/WebViewCore$ShowRectData;->mHeight:I

    invoke-virtual {v2, v7}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v20

    .line 8493
    .local v20, height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v7, v14, Landroid/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    invoke-virtual {v2, v7}, Landroid/webkit/WebViewClassic;->contentToViewDimension(I)I

    move-result v27

    .line 8494
    .local v27, maxHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->getViewHeight()I

    move-result v38

    .line 8495
    .local v38, viewHeight:I
    move/from16 v0, v36

    int-to-float v2, v0

    iget v7, v14, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    move/from16 v0, v20

    int-to-float v8, v0

    mul-float/2addr v7, v8

    add-float/2addr v2, v7

    iget v7, v14, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    move/from16 v0, v38

    int-to-float v8, v0

    mul-float/2addr v7, v8

    sub-float/2addr v2, v7

    float-to-int v0, v2

    move/from16 v43, v0

    .line 8498
    .local v43, y:I
    const-string/jumbo v2, "webview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showRectMsg=(top="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v36

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",height="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",maxHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",viewHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",y="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v43

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",yPercentInDoc="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v14, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",yPercentInView="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v14, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8506
    const/4 v2, 0x0

    add-int v7, v43, v38

    move/from16 v0, v27

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int v7, v7, v38

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v43

    .line 8510
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->getVisibleTitleHeightImpl()I
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$6000(Landroid/webkit/WebViewClassic;)I

    move-result v7

    sub-int v7, v43, v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v43

    .line 8511
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebView:Landroid/webkit/WebView;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$000(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView;

    move-result-object v2

    move/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebView;->scrollTo(II)V

    goto/16 :goto_1

    .line 8516
    .end local v14           #data:Landroid/webkit/WebViewCore$ShowRectData;
    .end local v20           #height:I
    .end local v24           #left:I
    .end local v27           #maxHeight:I
    .end local v28           #maxWidth:I
    .end local v36           #top:I
    .end local v38           #viewHeight:I
    .end local v40           #viewWidth:I
    .end local v41           #width:I
    .end local v42           #x:I
    .end local v43           #y:I
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Landroid/webkit/WebViewClassic;->centerFitRect(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 8520
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    #setter for: Landroid/webkit/WebViewClassic;->mHorizontalScrollBarMode:I
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$6102(Landroid/webkit/WebViewClassic;I)I

    .line 8521
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    #setter for: Landroid/webkit/WebViewClassic;->mVerticalScrollBarMode:I
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$6202(Landroid/webkit/WebViewClassic;I)I

    goto/16 :goto_1

    .line 8525
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->isAccessibilityInjectionEnabled()Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$6300(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8526
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->getAccessibilityInjector()Landroid/webkit/AccessibilityInjector;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$6400(Landroid/webkit/WebViewClassic;)Landroid/webkit/AccessibilityInjector;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v2}, Landroid/webkit/AccessibilityInjector;->handleSelectionChangedIfNecessary(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 8532
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v8

    if-ne v2, v8, :cond_15

    const/4 v2, 0x1

    :goto_6
    iput-boolean v2, v7, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    .line 8533
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v2, v2, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-nez v2, :cond_13

    .line 8534
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/AutoCompletePopup;->clearAdapter()V

    .line 8537
    :cond_13
    const-string/jumbo v2, "webview"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FOCUS_NODE_CHANGED hit="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8540
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDataListOptionsPopup:Landroid/webkit/DataListOptionsPopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/webkit/DataListOptionsPopup;

    move-result-object v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v2, v2, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-nez v2, :cond_14

    .line 8541
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mDataListOptionsPopup:Landroid/webkit/DataListOptionsPopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$600(Landroid/webkit/WebViewClassic;)Landroid/webkit/DataListOptionsPopup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/DataListOptionsPopup;->clearAdapter()V

    .line 8546
    :cond_14
    :sswitch_1d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/webkit/WebViewCore$WebKitHitTest;

    .line 8547
    .local v21, hit:Landroid/webkit/WebViewCore$WebKitHitTest;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v21

    #setter for: Landroid/webkit/WebViewClassic;->mFocusedNode:Landroid/webkit/WebViewCore$WebKitHitTest;
    invoke-static {v2, v0}, Landroid/webkit/WebViewClassic;->access$6502(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)Landroid/webkit/WebViewCore$WebKitHitTest;

    .line 8548
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v21

    #calls: Landroid/webkit/WebViewClassic;->setTouchHighlightRects(Landroid/webkit/WebViewCore$WebKitHitTest;)V
    invoke-static {v2, v0}, Landroid/webkit/WebViewClassic;->access$6600(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)V

    .line 8549
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v21

    #calls: Landroid/webkit/WebViewClassic;->setHitTestResult(Landroid/webkit/WebViewCore$WebKitHitTest;)V
    invoke-static {v2, v0}, Landroid/webkit/WebViewClassic;->access$6700(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$WebKitHitTest;)V

    goto/16 :goto_1

    .line 8532
    .end local v21           #hit:Landroid/webkit/WebViewCore$WebKitHitTest;
    :cond_15
    const/4 v2, 0x0

    goto :goto_6

    .line 8553
    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;

    .line 8554
    .local v35, saveMessage:Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;
    move-object/from16 v0, v35

    iget-object v2, v0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mCallback:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_1

    .line 8555
    move-object/from16 v0, v35

    iget-object v2, v0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mCallback:Landroid/webkit/ValueCallback;

    move-object/from16 v0, v35

    iget-object v7, v0, Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;->mResultFile:Ljava/lang/String;

    invoke-interface {v2, v7}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 8560
    .end local v35           #saveMessage:Landroid/webkit/WebViewClassic$SaveWebArchiveMessage;
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkit/WebViewCore$AutoFillData;

    #setter for: Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v7, v2}, Landroid/webkit/WebViewClassic;->access$2702(Landroid/webkit/WebViewClassic;Landroid/webkit/WebViewCore$AutoFillData;)Landroid/webkit/WebViewCore$AutoFillData;

    .line 8561
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v2, :cond_1

    .line 8562
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$2700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$AutoFillData;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebViewCore$AutoFillData;->getQueryId()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setAutoFillable(I)V

    .line 8563
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoFillData:Landroid/webkit/WebViewCore$AutoFillData;
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$2700(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$AutoFillData;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebViewCore$AutoFillData;->getQueryId()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/webkit/AutoCompletePopup;->setAutoFillQueryId(I)V

    goto/16 :goto_1

    .line 8568
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8569
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 8570
    .local v32, pastEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mAutoCompletePopup:Landroid/webkit/AutoCompletePopup;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$500(Landroid/webkit/WebViewClassic;)Landroid/webkit/AutoCompletePopup;

    move-result-object v2

    new-instance v7, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/webkit/WebViewClassic;->access$700(Landroid/webkit/WebViewClassic;)Landroid/content/Context;

    move-result-object v8

    const v9, 0x1090108

    move-object/from16 v0, v32

    invoke-direct {v7, v8, v9, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v2, v7}, Landroid/webkit/AutoCompletePopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_1

    .line 8578
    .end local v32           #pastEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Landroid/webkit/WebViewClassic;->copyToClipboard(Ljava/lang/String;)V
    invoke-static {v7, v2}, Landroid/webkit/WebViewClassic;->access$6800(Landroid/webkit/WebViewClassic;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 8582
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    if-eqz v2, :cond_1

    .line 8583
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/webkit/WebViewCore$TextFieldInitData;

    .line 8584
    .local v23, initData:Landroid/webkit/WebViewCore$TextFieldInitData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x0

    #setter for: Landroid/webkit/WebViewClassic;->mTextGeneration:I
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$5002(Landroid/webkit/WebViewClassic;I)I

    .line 8585
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v23

    iget v7, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mFieldPointer:I

    #setter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$102(Landroid/webkit/WebViewClassic;I)I

    .line 8586
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->initEditorInfo(Landroid/webkit/WebViewCore$TextFieldInitData;)V

    .line 8587
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mInputConnection:Landroid/webkit/WebViewClassic$WebViewInputConnection;

    move-object/from16 v0, v23

    iget-object v7, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mText:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/webkit/WebViewClassic$WebViewInputConnection;->setTextAndKeepSelection(Ljava/lang/CharSequence;)V

    .line 8588
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v23

    iget-object v7, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8589
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, v23

    iget v7, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mNodeLayerId:I

    iput v7, v2, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    .line 8590
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$4700(Landroid/webkit/WebViewClassic;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v7, v7, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v8, v8, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebViewClassic;->nativeMapLayerRect(IILandroid/graphics/Rect;)V
    invoke-static {v2, v7, v8}, Landroid/webkit/WebViewClassic;->access$6900(IILandroid/graphics/Rect;)V

    .line 8592
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v2, v2, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    move-object/from16 v0, v23

    iget-object v7, v0, Landroid/webkit/WebViewCore$TextFieldInitData;->mClientRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8593
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->relocateAutoCompletePopup()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7000(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_1

    .line 8598
    .end local v23           #initData:Landroid/webkit/WebViewCore$TextFieldInitData;
    :sswitch_23
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 8599
    .restart local v5       #text:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    .line 8600
    .local v3, start:I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    .line 8601
    .local v4, end:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int v6, v3, v2

    .line 8602
    .local v6, cursorPosition:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move v7, v6

    invoke-virtual/range {v2 .. v7}, Landroid/webkit/WebViewClassic;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 8604
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto/16 :goto_1

    .line 8609
    .end local v3           #start:I
    .end local v4           #end:I
    .end local v5           #text:Ljava/lang/String;
    .end local v6           #cursorPosition:I
    :sswitch_24
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/webkit/WebViewCore$FindAllRequest;

    .line 8610
    .local v34, request:Landroid/webkit/WebViewCore$FindAllRequest;
    if-nez v34, :cond_16

    .line 8611
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7100(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindActionModeCallback;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8612
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7100(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindActionModeCallback;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v2, v7, v8, v9}, Landroid/webkit/FindActionModeCallback;->updateMatchCount(IIZ)V

    goto/16 :goto_1

    .line 8614
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$FindAllRequest;

    move-result-object v2

    move-object/from16 v0, v34

    if-ne v0, v2, :cond_1

    .line 8616
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindRequest:Landroid/webkit/WebViewCore$FindAllRequest;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7200(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore$FindAllRequest;

    move-result-object v7

    monitor-enter v7

    .line 8617
    :try_start_0
    move-object/from16 v0, v34

    iget v0, v0, Landroid/webkit/WebViewCore$FindAllRequest;->mMatchCount:I

    move/from16 v25, v0

    .line 8618
    .local v25, matchCount:I
    move-object/from16 v0, v34

    iget v0, v0, Landroid/webkit/WebViewCore$FindAllRequest;->mMatchIndex:I

    move/from16 v26, v0

    .line 8619
    .local v26, matchIndex:I
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8620
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7100(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindActionModeCallback;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 8621
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindCallback:Landroid/webkit/FindActionModeCallback;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7100(Landroid/webkit/WebViewClassic;)Landroid/webkit/FindActionModeCallback;

    move-result-object v2

    const/4 v7, 0x0

    move/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v2, v0, v1, v7}, Landroid/webkit/FindActionModeCallback;->updateMatchCount(IIZ)V

    .line 8623
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindListener:Landroid/webkit/WebView$FindListener;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7300(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView$FindListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8624
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFindListener:Landroid/webkit/WebView$FindListener;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7300(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebView$FindListener;

    move-result-object v2

    const/4 v7, 0x1

    move/from16 v0, v26

    move/from16 v1, v25

    invoke-interface {v2, v0, v1, v7}, Landroid/webkit/WebView$FindListener;->onFindResultReceived(IIZ)V

    goto/16 :goto_1

    .line 8619
    .end local v25           #matchCount:I
    .end local v26           #matchIndex:I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 8631
    .end local v34           #request:Landroid/webkit/WebViewCore$FindAllRequest;
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7400(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8632
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->selectionDone()V

    goto/16 :goto_1

    .line 8637
    :sswitch_26
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/16 v7, 0xdf

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/webkit/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    goto/16 :goto_1

    .line 8641
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->relocateAutoCompletePopup()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7000(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_1

    .line 8645
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v7, 0xc0

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto/16 :goto_1

    .line 8650
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mWebViewCore:Landroid/webkit/WebViewCore;
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$1100(Landroid/webkit/WebViewClassic;)Landroid/webkit/WebViewCore;

    move-result-object v2

    const/16 v7, 0xeb

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    const/4 v9, 0x0

    invoke-virtual {v2, v7, v8, v9}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto/16 :goto_1

    .line 8655
    :sswitch_2a
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mFieldPointer:I
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$100(Landroid/webkit/WebViewClassic;)I

    move-result v7

    if-ne v2, v7, :cond_1

    .line 8656
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v7, v2, Landroid/webkit/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 8661
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$3100(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-boolean v2, v2, Landroid/webkit/WebViewClassic;->mIsEditingText:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7400(Landroid/webkit/WebViewClassic;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8662
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->setupWebkitSelect()Z
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7500(Landroid/webkit/WebViewClassic;)Z

    .line 8663
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->resetCaretTimer()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7600(Landroid/webkit/WebViewClassic;)V

    .line 8664
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->showPasteWindow()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7700(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_1

    .line 8669
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v7, v2, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8670
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mNativeClass:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$4700(Landroid/webkit/WebViewClassic;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget v7, v7, Landroid/webkit/WebViewClassic;->mEditTextLayerId:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    iget-object v8, v8, Landroid/webkit/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    #calls: Landroid/webkit/WebViewClassic;->nativeMapLayerRect(IILandroid/graphics/Rect;)V
    invoke-static {v2, v7, v8}, Landroid/webkit/WebViewClassic;->access$6900(IILandroid/graphics/Rect;)V

    goto/16 :goto_1

    .line 8675
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->scrollEditWithCursor()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7800(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_1

    .line 8679
    :sswitch_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->scrollDraggedSelectionHandleIntoView()V
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$7900(Landroid/webkit/WebViewClassic;)V

    goto/16 :goto_1

    .line 8684
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #calls: Landroid/webkit/WebViewClassic;->requestDateTimePicker(ILjava/lang/String;)V
    invoke-static {v7, v8, v2}, Landroid/webkit/WebViewClassic;->access$8000(Landroid/webkit/WebViewClassic;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 8690
    :sswitch_30
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    #calls: Landroid/webkit/WebViewClassic;->requestColorPicker(I)V
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$8100(Landroid/webkit/WebViewClassic;I)V

    goto/16 :goto_1

    .line 8696
    :sswitch_31
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mLastTouchX:I
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$3300(Landroid/webkit/WebViewClassic;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v7}, Landroid/webkit/WebViewClassic;->viewToContentX(I)I

    move-result v42

    .line 8697
    .restart local v42       #x:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mLastTouchY:I
    invoke-static {v7}, Landroid/webkit/WebViewClassic;->access$3400(Landroid/webkit/WebViewClassic;)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v7}, Landroid/webkit/WebViewClassic;->viewToContentY(I)I

    move-result v43

    .line 8698
    .restart local v43       #y:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    const/4 v7, 0x1

    #setter for: Landroid/webkit/WebViewClassic;->mMagnifierMode:Z
    invoke-static {v2, v7}, Landroid/webkit/WebViewClassic;->access$8202(Landroid/webkit/WebViewClassic;Z)Z

    .line 8699
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->selectText()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8700
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 8701
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mLastTouchX:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$3300(Landroid/webkit/WebViewClassic;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mLastTouchY:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$3400(Landroid/webkit/WebViewClassic;)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mLastTouchX:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$3300(Landroid/webkit/WebViewClassic;)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mLastTouchY:I
    invoke-static {v2}, Landroid/webkit/WebViewClassic;->access$3400(Landroid/webkit/WebViewClassic;)I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Landroid/webkit/WebViewClassic;->showMagnifier(IIIIZ)V

    goto/16 :goto_1

    .line 8272
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x6 -> :sswitch_e
        0x8 -> :sswitch_13
        0xb -> :sswitch_3
        0xc -> :sswitch_f
        0xd -> :sswitch_0
        0x65 -> :sswitch_4
        0x69 -> :sswitch_7
        0x6b -> :sswitch_8
        0x6c -> :sswitch_9
        0x6d -> :sswitch_5
        0x6e -> :sswitch_b
        0x6f -> :sswitch_c
        0x70 -> :sswitch_a
        0x71 -> :sswitch_18
        0x72 -> :sswitch_10
        0x74 -> :sswitch_11
        0x75 -> :sswitch_d
        0x76 -> :sswitch_12
        0x78 -> :sswitch_16
        0x79 -> :sswitch_17
        0x7e -> :sswitch_24
        0x7f -> :sswitch_19
        0x81 -> :sswitch_1a
        0x82 -> :sswitch_1b
        0x83 -> :sswitch_1d
        0x84 -> :sswitch_1e
        0x85 -> :sswitch_1f
        0x86 -> :sswitch_20
        0x88 -> :sswitch_14
        0x8b -> :sswitch_6
        0x8c -> :sswitch_15
        0x8d -> :sswitch_21
        0x8e -> :sswitch_22
        0x8f -> :sswitch_23
        0x90 -> :sswitch_25
        0x91 -> :sswitch_26
        0x92 -> :sswitch_27
        0x93 -> :sswitch_1c
        0x94 -> :sswitch_28
        0x95 -> :sswitch_2d
        0x96 -> :sswitch_2a
        0x97 -> :sswitch_2b
        0x98 -> :sswitch_2c
        0x99 -> :sswitch_2e
        0x9a -> :sswitch_29
        0x9b -> :sswitch_2f
        0x9c -> :sswitch_30
        0x9d -> :sswitch_31
    .end sparse-switch
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    .line 8730
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectingText:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$3100(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8745
    :goto_0
    return v0

    .line 8733
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #calls: Landroid/webkit/WebViewClassic;->ensureSelectionHandles()V
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$800(Landroid/webkit/WebViewClassic;)V

    .line 8734
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getTitleHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 8735
    .local v2, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkit/WebViewClassic;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 8737
    .local v1, x:I
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$7400(Landroid/webkit/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8738
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$900(Landroid/webkit/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .local v0, isPressingHandle:Z
    goto :goto_0

    .line 8741
    .end local v0           #isPressingHandle:Z
    :cond_1
    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleBaseBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8400(Landroid/webkit/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectHandleExtentBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/webkit/WebViewClassic;->access$8500(Landroid/webkit/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    .restart local v0       #isPressingHandle:Z
    :cond_3
    goto :goto_0
.end method

.method public shouldSkipWebkitEvent()Z
    .locals 1

    .prologue
    .line 8754
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mMagnifierOn:Z
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$8600(Landroid/webkit/WebViewClassic;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mSelectionStarted:Z
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$8700(Landroid/webkit/WebViewClassic;)Z

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

.method public showTapHighlight(Z)V
    .locals 1
    .parameter "show"

    .prologue
    .line 8760
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #getter for: Landroid/webkit/WebViewClassic;->mShowTapHighlight:Z
    invoke-static {v0}, Landroid/webkit/WebViewClassic;->access$8800(Landroid/webkit/WebViewClassic;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 8761
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    #setter for: Landroid/webkit/WebViewClassic;->mShowTapHighlight:Z
    invoke-static {v0, p1}, Landroid/webkit/WebViewClassic;->access$8802(Landroid/webkit/WebViewClassic;Z)Z

    .line 8762
    iget-object v0, p0, Landroid/webkit/WebViewClassic$PrivateHandler;->this$0:Landroid/webkit/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkit/WebViewClassic;->invalidate()V

    .line 8764
    :cond_0
    return-void
.end method
