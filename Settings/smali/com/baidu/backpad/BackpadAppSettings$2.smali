.class Lcom/baidu/backpad/BackpadAppSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "BackpadAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/backpad/BackpadAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/backpad/BackpadAppSettings;


# direct methods
.method constructor <init>(Lcom/baidu/backpad/BackpadAppSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/baidu/backpad/BackpadAppSettings$2;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 111
    .local v0, data:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, pkgName:Ljava/lang/String;
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/baidu/backpad/BackpadAppSettings$2;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mLoader:Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;
    invoke-static {v3}, Lcom/baidu/backpad/BackpadAppSettings;->access$600(Lcom/baidu/backpad/BackpadAppSettings;)Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 118
    .local v1, msg:Landroid/os/Message;
    :goto_0
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 119
    iget-object v3, p0, Lcom/baidu/backpad/BackpadAppSettings$2;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mLoader:Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;
    invoke-static {v3}, Lcom/baidu/backpad/BackpadAppSettings;->access$600(Lcom/baidu/backpad/BackpadAppSettings;)Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    return-void

    .line 116
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    iget-object v3, p0, Lcom/baidu/backpad/BackpadAppSettings$2;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mLoader:Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;
    invoke-static {v3}, Lcom/baidu/backpad/BackpadAppSettings;->access$600(Lcom/baidu/backpad/BackpadAppSettings;)Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .restart local v1       #msg:Landroid/os/Message;
    goto :goto_0
.end method
