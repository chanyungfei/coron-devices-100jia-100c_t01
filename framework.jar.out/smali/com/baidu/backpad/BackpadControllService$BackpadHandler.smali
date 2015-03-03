.class Lcom/baidu/backpad/BackpadControllService$BackpadHandler;
.super Landroid/os/Handler;
.source "BackpadControllService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/backpad/BackpadControllService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackpadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/backpad/BackpadControllService;


# direct methods
.method public constructor <init>(Lcom/baidu/backpad/BackpadControllService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/baidu/backpad/BackpadControllService$BackpadHandler;->this$0:Lcom/baidu/backpad/BackpadControllService;

    .line 183
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 184
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 189
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 194
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 196
    :goto_0
    return-void

    .line 191
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/backpad/BackpadControllService$BackpadHandler;->this$0:Lcom/baidu/backpad/BackpadControllService;

    #calls: Lcom/baidu/backpad/BackpadControllService;->writeBlockDb()V
    invoke-static {v0}, Lcom/baidu/backpad/BackpadControllService;->access$000(Lcom/baidu/backpad/BackpadControllService;)V

    goto :goto_0

    .line 189
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method
