.class public Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduInjector;
.super Ljava/lang/Object;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaiduInjector"
.end annotation


# static fields
.field public static final MSG_MULTITHEME_LOCKSREEN_ENABLE:I = 0x142

.field public static final MSG_STATUSBAR_LOCKSREEN_ENABLE:I = 0x1f5

.field public static mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

.field private static mStatusBarExpand:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2582
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduInjector;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2578
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMultithemLockscreen(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z
    .locals 4
    .parameter "keyguardUpdateMonitor"

    .prologue
    .line 2657
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen.lockmode_type"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static handleMultithemLockscreenEnable(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/Integer;)V
    .locals 6
    .parameter "keyguardUpdateMonitor"
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2614
    const-string v1, "KeyguardUpdateMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multi-theme LockScreen: handleMultithemLockscreenEnalbe "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2617
    invoke-static {}, Lcom/baidu/internal/keyguard/multitheme/MultithemeUnlockScreen;->setWallpaperChange()V

    .line 2654
    :cond_0
    :goto_0
    return-void

    .line 2619
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduInjector;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    if-eqz v1, :cond_2

    .line 2620
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduInjector;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    invoke-virtual {v1}, Lcom/baidu/themeanimation/element/LockScreenElement;->clearElement()V

    .line 2621
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduInjector;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    .line 2623
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 2625
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2626
    .local v0, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 2627
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 2628
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen.lockmode_type"

    const-wide/16 v3, 0xb

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    .line 2630
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 2632
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduInjector;->getMultithemLockscreen(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2633
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2634
    .restart local v0       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 2635
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 2636
    invoke-static {p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduInjector;->setMultiThemeLockScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)V

    goto :goto_0

    .line 2638
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_4
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduInjector;->getMultithemLockscreen(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2640
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 2641
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2642
    .restart local v0       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 2643
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 2645
    .end local v0           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_5
    invoke-static {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduInjector;->setMultiThemeLockScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)V

    goto :goto_0

    .line 2646
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 2648
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 2649
    .restart local v0       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    .line 2650
    invoke-virtual {v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(Z)V

    .line 2651
    invoke-static {p0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduInjector;->setMultiThemeLockScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)V

    goto/16 :goto_0
.end method

.method public static handleStatubarExpandEnable(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Ljava/lang/Boolean;)V
    .locals 1
    .parameter "keyguardUpdateMonitor"
    .parameter "state"

    .prologue
    .line 2606
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduInjector;->mStatusBarExpand:Z

    .line 2607
    return-void
.end method

.method public static holdPersistData(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/baidu/themeanimation/element/LockScreenElement;)V
    .locals 0
    .parameter "keyguardUpdateMonitor"
    .parameter "element"

    .prologue
    .line 2668
    sput-object p1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduInjector;->mLockScreenElement:Lcom/baidu/themeanimation/element/LockScreenElement;

    .line 2669
    return-void
.end method

.method public static initExtParams(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V
    .locals 3
    .parameter "keyguardUpdateMonitor"

    .prologue
    const/4 v0, 0x0

    .line 2586
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduHandler;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduHandler;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBaiduHandler:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduHandler;
    invoke-static {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$4002(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduHandler;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduHandler;

    .line 2587
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduBroadcastReceiver;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduBroadcastReceiver;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)V

    #setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBaiduBroadcastReceiver:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduBroadcastReceiver;
    invoke-static {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$4102(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduBroadcastReceiver;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduBroadcastReceiver;

    .line 2589
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "statusbar_expand_lockscreen"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduInjector;->mStatusBarExpand:Z

    .line 2590
    return-void
.end method

.method public static isStatusBarExpandEnable(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Z
    .locals 1
    .parameter "keyguardUpdateMonitor"

    .prologue
    .line 2610
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduInjector;->mStatusBarExpand:Z

    return v0
.end method

.method public static registerBaiduReceiver(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Landroid/content/IntentFilter;)V
    .locals 2
    .parameter "keyguardUpdateMonitor"
    .parameter "filter"

    .prologue
    .line 2593
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v0

    .line 2595
    .local v0, context:Landroid/content/Context;
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2596
    const-string v1, "com.baidu.lockscreen.syncdone"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2597
    const-string v1, "theme.lockscreen.action.apply_theme"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2598
    const-string v1, "theme.lockscreen.action.reduce_theme"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2599
    const-string v1, "com.baidu.lockscreen.action.reduce_theme_settings"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2600
    const-string v1, "theme.lockscreen.action.apply_theme_water"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2601
    const-string v1, "com.baidu.lockscreen.statusbar.expand"

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2602
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mBaiduBroadcastReceiver:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduBroadcastReceiver;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$4100(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor$BaiduBroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2603
    return-void
.end method

.method private static setMultiThemeLockScreen(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Z)V
    .locals 4
    .parameter "keyguardUpdateMonitor"
    .parameter "bMulti"

    .prologue
    .line 2662
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardManager;->getDefaultLockMode()J

    move-result-wide v0

    .line 2663
    .local v0, defaultLockMode:J
    #getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->mContext:Landroid/content/Context;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->access$3300(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen.lockmode_type"

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x2

    .end local v0           #defaultLockMode:J
    :cond_0
    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 2665
    return-void
.end method
