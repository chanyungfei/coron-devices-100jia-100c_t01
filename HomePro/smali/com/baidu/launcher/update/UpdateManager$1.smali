.class Lcom/baidu/launcher/update/UpdateManager$1;
.super Landroid/os/Handler;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/update/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/update/UpdateManager;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/update/UpdateManager;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/baidu/launcher/update/UpdateManager$1;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 85
    :goto_0
    return-void

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager$1;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/update/UpdateManager;->showConfirmDialod()V

    goto :goto_0

    .line 75
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager$1;->this$0:Lcom/baidu/launcher/update/UpdateManager;

 #   invoke-virtual {v0}, Lcom/baidu/launcher/update/UpdateManager;->sendConfirmNotification()V

    goto :goto_0

    .line 78
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager$1;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    #getter for: Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/update/UpdateManager;->access$000(Lcom/baidu/launcher/update/UpdateManager;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0097

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 81
    :pswitch_3
    iget-object v0, p0, Lcom/baidu/launcher/update/UpdateManager$1;->this$0:Lcom/baidu/launcher/update/UpdateManager;

    #getter for: Lcom/baidu/launcher/update/UpdateManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/update/UpdateManager;->access$000(Lcom/baidu/launcher/update/UpdateManager;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c00a3

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
