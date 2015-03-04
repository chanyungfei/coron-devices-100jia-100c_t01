.class Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;
.super Landroid/os/Handler;
.source "BackpadAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/backpad/BackpadAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/backpad/BackpadAppSettings;


# direct methods
.method public constructor <init>(Lcom/baidu/backpad/BackpadAppSettings;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    .line 292
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 293
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/16 v2, 0xb

    .line 298
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 308
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 310
    :goto_0
    return-void

    .line 300
    :pswitch_0
    iget-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/baidu/backpad/BackpadAppSettings;->addPackage(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/baidu/backpad/BackpadAppSettings;->access$800(Lcom/baidu/backpad/BackpadAppSettings;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/backpad/BackpadAppSettings;->access$900(Lcom/baidu/backpad/BackpadAppSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 304
    :pswitch_1
    iget-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    #calls: Lcom/baidu/backpad/BackpadAppSettings;->removePackage(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/baidu/backpad/BackpadAppSettings;->access$1000(Lcom/baidu/backpad/BackpadAppSettings;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/backpad/BackpadAppSettings;->access$900(Lcom/baidu/backpad/BackpadAppSettings;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
