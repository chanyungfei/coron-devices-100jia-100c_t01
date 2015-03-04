.class public Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyKeyguardActivityLauncher;
.super Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardActivityLauncher;
.source "WaterLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/water/WaterLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyKeyguardActivityLauncher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/water/WaterLockScreen;


# direct methods
.method public constructor <init>(Lcom/baidu/internal/keyguard/water/WaterLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyKeyguardActivityLauncher;->this$0:Lcom/baidu/internal/keyguard/water/WaterLockScreen;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardActivityLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallbackForBaidu()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyKeyguardActivityLauncher;->this$0:Lcom/baidu/internal/keyguard/water/WaterLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->access$100(Lcom/baidu/internal/keyguard/water/WaterLockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    return-object v0
.end method

.method public getContextForBaidu()Landroid/content/Context;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyKeyguardActivityLauncher;->this$0:Lcom/baidu/internal/keyguard/water/WaterLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->access$000(Lcom/baidu/internal/keyguard/water/WaterLockScreen;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getLockPatternUtilsForBaidu()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/baidu/internal/keyguard/water/WaterLockScreen$MyKeyguardActivityLauncher;->this$0:Lcom/baidu/internal/keyguard/water/WaterLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/water/WaterLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/water/WaterLockScreen;->access$200(Lcom/baidu/internal/keyguard/water/WaterLockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    return-object v0
.end method
