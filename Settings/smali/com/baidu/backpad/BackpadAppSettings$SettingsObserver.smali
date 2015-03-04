.class Lcom/baidu/backpad/BackpadAppSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BackpadAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/backpad/BackpadAppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/baidu/backpad/BackpadAppSettings;


# direct methods
.method constructor <init>(Lcom/baidu/backpad/BackpadAppSettings;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 317
    iput-object p1, p0, Lcom/baidu/backpad/BackpadAppSettings$SettingsObserver;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    .line 318
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 319
    iput-object p3, p0, Lcom/baidu/backpad/BackpadAppSettings$SettingsObserver;->mContext:Landroid/content/Context;

    .line 320
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 334
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings$SettingsObserver;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    iget-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings$SettingsObserver;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    iget-object v2, p0, Lcom/baidu/backpad/BackpadAppSettings$SettingsObserver;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/baidu/backpad/BackpadAppSettings;->access$1100(Lcom/baidu/backpad/BackpadAppSettings;)Landroid/app/Activity;

    move-result-object v2

    #calls: Lcom/baidu/backpad/BackpadAppSettings;->isBackpadEnabled(Landroid/content/Context;)Z
    invoke-static {v1, v2}, Lcom/baidu/backpad/BackpadAppSettings;->access$1200(Lcom/baidu/backpad/BackpadAppSettings;Landroid/content/Context;)Z

    move-result v1

    #setter for: Lcom/baidu/backpad/BackpadAppSettings;->mBackpadEnabled:Z
    invoke-static {v0, v1}, Lcom/baidu/backpad/BackpadAppSettings;->access$202(Lcom/baidu/backpad/BackpadAppSettings;Z)Z

    .line 335
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings$SettingsObserver;->this$0:Lcom/baidu/backpad/BackpadAppSettings;

    #getter for: Lcom/baidu/backpad/BackpadAppSettings;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/baidu/backpad/BackpadAppSettings;->access$900(Lcom/baidu/backpad/BackpadAppSettings;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 336
    return-void
.end method

.method startObserving()V
    .locals 3

    .prologue
    .line 323
    iget-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 324
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "back_pad_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 326
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 330
    return-void
.end method
