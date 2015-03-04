.class public Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaiduInjector"
.end annotation


# static fields
.field public static mFlashlightReceiver:Landroid/content/BroadcastReceiver;

.field private static mHomePressOpenFlash:Z

.field private static mIsFlashlightOn:Z

.field public static mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private static sView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static sWm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/WindowManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5026
    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mHomePressOpenFlash:Z

    .line 5027
    sput-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mIsFlashlightOn:Z

    .line 5029
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$1;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$1;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mFlashlightReceiver:Landroid/content/BroadcastReceiver;

    .line 5039
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$2;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector$2;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 5025
    sput-boolean p0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mIsFlashlightOn:Z

    return p0
.end method

.method public static flashClose(Lcom/android/internal/policy/impl/PhoneWindowManager;I)Z
    .locals 2
    .parameter "phoneWindowManager"
    .parameter "keyCode"

    .prologue
    .line 5099
    const/16 v1, 0x1a

    if-ne p1, v1, :cond_0

    .line 5100
    sget-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mIsFlashlightOn:Z

    if-eqz v1, :cond_0

    .line 5101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.flashlight.ACTION_CLOSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5102
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.baidu.flashlight"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5103
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 5104
    const/4 v1, 0x1

    .line 5107
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static flashCondition(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z
    .locals 2
    .parameter "phoneWindowManager"
    .parameter "homeWasLongPressed"

    .prologue
    const/4 v1, 0x0

    .line 5065
    sget-boolean v0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mHomePressOpenFlash:Z

    .line 5066
    .local v0, homePressOpenFlash:Z
    sput-boolean v1, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mHomePressOpenFlash:Z

    .line 5067
    if-nez p1, :cond_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static flashOpen(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 5071
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mIsFlashlightOn:Z

    if-nez v2, :cond_0

    .line 5073
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.flashlight.ACTION_OPEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5074
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.baidu.flashlight"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5075
    const-string v2, "open_flashlight"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5076
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 5077
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mIsFlashlightOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5082
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 5078
    :catch_0
    move-exception v0

    .line 5079
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flashlight cann\'t start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static flashOpen(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/KeyEvent;)V
    .locals 5
    .parameter "phoneWindowManager"
    .parameter "event"

    .prologue
    .line 5085
    sget-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mIsFlashlightOn:Z

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    .line 5087
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.baidu.flashlight.ACTION_OPEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5088
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.baidu.flashlight"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5089
    const-string v2, "open_flashlight"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5090
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 5091
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mIsFlashlightOn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5096
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 5092
    :catch_0
    move-exception v0

    .line 5093
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Flashlight cann\'t start:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static flashRegister(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 4
    .parameter "phoneWindowManager"

    .prologue
    .line 5054
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 5055
    .local v0, flashFilter:Landroid/content/IntentFilter;
    const-string v2, "com.baidu.action.FLASHLIGHT_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5056
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mFlashlightReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5057
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 5058
    .local v1, packageFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5059
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 5060
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 5061
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5062
    return-void
.end method

.method public static hold(Landroid/view/WindowManager;Landroid/view/View;)V
    .locals 1
    .parameter "wm"
    .parameter "view"

    .prologue
    .line 5121
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->sWm:Ljava/lang/ref/WeakReference;

    .line 5122
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->sView:Ljava/lang/ref/WeakReference;

    .line 5123
    return-void
.end method

.method public static removeViewImmediate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5126
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->sWm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 5127
    .local v1, wm:Landroid/view/WindowManager;
    sget-object v2, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->sView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5129
    .local v0, view:Landroid/view/View;
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 5140
    :cond_0
    :goto_0
    return-void

    .line 5133
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 5134
    const-string v2, "WindowManager"

    const-string v3, "view not successfully added to wm, removing view"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5135
    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 5138
    :cond_2
    sput-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->sWm:Ljava/lang/ref/WeakReference;

    .line 5139
    sput-object v4, Lcom/android/internal/policy/impl/PhoneWindowManager$BaiduInjector;->sView:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public static setSystemTop(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 1
    .parameter "phoneWindowManager"

    .prologue
    .line 5111
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mUnrestrictedScreenTop:I

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mSystemTop:I

    .line 5112
    return-void
.end method
