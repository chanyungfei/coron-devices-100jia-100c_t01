.class public Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyKeyguardActivityLauncher;
.super Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardActivityLauncher;
.source "SlideLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/internal/keyguard/slide/SlideLockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyKeyguardActivityLauncher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;


# direct methods
.method public constructor <init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyKeyguardActivityLauncher;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/BaiduKeyguardActivityLauncher;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallbackForBaidu()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyKeyguardActivityLauncher;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$600(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    return-object v0
.end method

.method public getContextForBaidu()Landroid/content/Context;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyKeyguardActivityLauncher;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$1000(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getLockPatternUtilsForBaidu()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyKeyguardActivityLauncher;->this$0:Lcom/baidu/internal/keyguard/slide/SlideLockScreen;

    #getter for: Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->access$1100(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    return-object v0
.end method
