.class public Lcom/baidu/internal/keyguard/slide/SlideLockScreen;
.super Landroid/widget/RelativeLayout;
.source "SlideLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;,
        Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyHandler;,
        Lcom/baidu/internal/keyguard/slide/SlideLockScreen$BatteryStatus;,
        Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyKeyguardActivityLauncher;
    }
.end annotation


# static fields
.field private static final ACTION_CALL_MISS_UPDATED:Ljava/lang/String; = "com.baidu.keyguard.internal.CALL_MISS_UPDATED"

.field private static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final ACTION_SMS_MISS_UPDATED:Ljava/lang/String; = "com.baidu.keyguard.internal.SMS_MISS_UPDATED"

.field private static final ALARM_ICON:I = 0x10800fd

.field private static final MSG_BATTERY_UPDATE:I = 0x67

.field private static final MSG_CALL_MISS_UPDATED:I = 0x66

.field private static final MSG_SMS_MISS_UPDATED:I = 0x65

.field private static final TAG:Ljava/lang/String; = "SlideLockScreen"

.field private static final TRANSPORT_USERACTIVITY_TIMEOUT:I = 0x2710

.field private static mMissCallCount:I

.field private static mMissMsgCount:I


# instance fields
.field private mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

.field private mAlarmObserver:Landroid/database/ContentObserver;

.field private mAlarmStatusView:Landroid/widget/TextView;

.field private mCallObserver:Landroid/database/ContentObserver;

.field private mCarrierView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInAnimation:Landroid/view/animation/Animation;

.field private mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMissCall:Landroid/view/View;

.field private mMissGroup:Landroid/view/View;

.field private mMissMsg:Landroid/view/View;

.field private mMmsObserver:Landroid/database/ContentObserver;

.field private mMusicPlaying:Z

.field private mOutAnimation:Landroid/view/animation/Animation;

.field private mReceiver:Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;

.field private mRotateAnimation:Landroid/view/animation/Animation;

.field private mSavedState:Landroid/os/Parcelable;

.field private mShowingStatus:Z

.field private mSmsObserver:Landroid/database/ContentObserver;

.field private mTargetCallback:Lcom/baidu/internal/keyguard/slide/TargetCallback;

.field private mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

.field private mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

.field private mTransportWidgetCallback:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    sput v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissMsgCount:I

    .line 83
    sput v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissCallCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 11
    .parameter "context"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/high16 v6, 0x10e

    const v1, 0x1030128

    const/high16 v10, 0x3f00

    const/4 v9, 0x1

    .line 204
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 73
    iput-boolean v9, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mShowingStatus:Z

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMusicPlaying:Z

    .line 98
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$1;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetCallback:Lcom/baidu/internal/keyguard/slide/TargetCallback;

    .line 129
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$2;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$2;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportWidgetCallback:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    .line 205
    invoke-virtual {p0, v9}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->setFocusable(Z)V

    .line 206
    invoke-virtual {p0, v9}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->setFocusableInTouchMode(Z)V

    .line 207
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->setDescendantFocusability(I)V

    .line 208
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    .line 209
    iput-object p4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 210
    iput-object p2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 211
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyKeyguardActivityLauncher;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyKeyguardActivityLauncher;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    .line 212
    new-instance v7, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v7, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 213
    .local v7, contexttheme:Landroid/view/ContextThemeWrapper;
    invoke-virtual {v7, v1}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 214
    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 215
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v0, 0x109003d

    invoke-virtual {v8, v0, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 216
    const v0, 0x1020295

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/slide/TransportControlView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    .line 217
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    invoke-direct {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->initializeTransportControlView(Landroid/view/View;)V

    .line 218
    const v0, 0x102029d

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/internal/keyguard/slide/TargetView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    .line 219
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V

    .line 220
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetCallback:Lcom/baidu/internal/keyguard/slide/TargetCallback;

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->setTargetCallback(Lcom/baidu/internal/keyguard/slide/TargetCallback;)V

    .line 221
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->setActivityLauncher(Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;)V

    .line 222
    const v0, 0x102028b

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissGroup:Landroid/view/View;

    .line 223
    const v0, 0x102028d

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissMsg:Landroid/view/View;

    .line 224
    const v0, 0x102028c

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissCall:Landroid/view/View;

    .line 225
    const v0, 0x102028a

    invoke-virtual {p0, v0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    .line 242
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->setVibrateEnabled(Z)V

    .line 245
    :cond_0
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyHandler;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissGroup:Landroid/view/View;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissMsg:Landroid/view/View;

    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissCall:Landroid/view/View;

    invoke-direct/range {v0 .. v5}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyHandler;-><init>(Landroid/content/Context;Lcom/baidu/internal/keyguard/slide/TargetView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mHandler:Landroid/os/Handler;

    .line 246
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mReceiver:Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;

    .line 248
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$3;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mSmsObserver:Landroid/database/ContentObserver;

    .line 262
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$4;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMmsObserver:Landroid/database/ContentObserver;

    .line 276
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$5;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mCallObserver:Landroid/database/ContentObserver;

    .line 290
    new-instance v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen$6;-><init>(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmObserver:Landroid/database/ContentObserver;

    .line 297
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x10a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mInAnimation:Landroid/view/animation/Animation;

    .line 298
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 299
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mOutAnimation:Landroid/view/animation/Animation;

    .line 300
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 301
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    move v3, v9

    move v4, v10

    move v5, v9

    move v6, v10

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 302
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 303
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 304
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v9}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 305
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 306
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TransportControlView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mInAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->updateAlarmInfo()V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissCallCount:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissCallCount:I

    return p0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissMsgCount:I

    return v0
.end method

.method static synthetic access$302(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissMsgCount:I

    return p0
.end method

.method static synthetic access$400(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMissGroup:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mOutAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Lcom/baidu/internal/keyguard/slide/TargetView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    return-object v0
.end method

.method static synthetic access$802(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMusicPlaying:Z

    return p1
.end method

.method static synthetic access$900(Lcom/baidu/internal/keyguard/slide/SlideLockScreen;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mRotateAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private dip2px(F)I
    .locals 3
    .parameter "dpValue"

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 320
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private initializeTransportControlView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    if-nez v0, :cond_0

    .line 365
    const-string v0, "SlideLockScreen"

    const-string v1, "Couldn\'t find transport control widget"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_0
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportWidgetCallback:Lcom/baidu/internal/keyguard/slide/TransportWidgetCallback;

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->setCallback(Lcom/android/internal/widget/LockScreenWidgetCallback;)V

    .line 368
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private parseMoveParams([Ljava/lang/CharSequence;I)Ljava/util/ArrayList;
    .locals 19
    .parameter "entries"
    .parameter "layerCount"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;",
            ">;"
        }
    .end annotation

    .prologue
    .line 325
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v16, moveParams:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;>;"
    if-eqz p1, :cond_0

    .line 328
    move-object/from16 v10, p1

    .local v10, arr$:[Ljava/lang/CharSequence;
    :try_start_0
    array-length v15, v10

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    if-ge v14, v15, :cond_0

    aget-object v12, v10, v14

    .line 329
    .local v12, entry:Ljava/lang/CharSequence;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    .line 360
    .end local v10           #arr$:[Ljava/lang/CharSequence;
    .end local v12           #entry:Ljava/lang/CharSequence;
    .end local v14           #i$:I
    .end local v15           #len$:I
    :cond_0
    :goto_1
    return-object v16

    .line 331
    .restart local v10       #arr$:[Ljava/lang/CharSequence;
    .restart local v12       #entry:Ljava/lang/CharSequence;
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    :cond_1
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 332
    .local v13, group:[Ljava/lang/String;
    if-eqz v13, :cond_4

    array-length v0, v13

    move/from16 v17, v0

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 333
    const/4 v3, -0x1

    .line 334
    .local v3, xParam:I
    const/4 v4, -0x1

    .line 335
    .local v4, yParam:I
    const/16 v5, 0xa

    .line 337
    .local v5, moveScale:I
    const/16 v17, 0x0

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, "positive"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 338
    const/4 v3, 0x0

    .line 342
    :cond_2
    :goto_2
    const/16 v17, 0x1

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, "positive"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 343
    const/4 v4, 0x2

    .line 347
    :cond_3
    :goto_3
    const/16 v17, 0x2

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 348
    const/16 v17, 0x3

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->dip2px(F)I

    move-result v6

    .line 349
    .local v6, xOriginal:I
    const/16 v17, 0x4

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->dip2px(F)I

    move-result v7

    .line 350
    .local v7, yOriginal:I
    const/16 v17, 0x5

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 351
    .local v8, delay:I
    const/16 v17, 0x6

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 352
    .local v9, duration:I
    new-instance v2, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;

    invoke-direct/range {v2 .. v9}, Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;-><init>(IIIIIII)V

    .line 353
    .local v2, moveParam:Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    .end local v2           #moveParam:Lcom/baidu/internal/keyguard/slide/ShakeView$MoveParam;
    .end local v3           #xParam:I
    .end local v4           #yParam:I
    .end local v5           #moveScale:I
    .end local v6           #xOriginal:I
    .end local v7           #yOriginal:I
    .end local v8           #delay:I
    .end local v9           #duration:I
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    .line 339
    .restart local v3       #xParam:I
    .restart local v4       #yParam:I
    .restart local v5       #moveScale:I
    :cond_5
    const/16 v17, 0x0

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, "reverse"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 340
    const/4 v3, 0x1

    goto/16 :goto_2

    .line 344
    :cond_6
    const/16 v17, 0x0

    aget-object v17, v13, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    const-string v18, "reverse"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-eqz v17, :cond_3

    .line 345
    const/4 v4, 0x3

    goto/16 :goto_3

    .line 356
    .end local v3           #xParam:I
    .end local v4           #yParam:I
    .end local v5           #moveScale:I
    .end local v12           #entry:Ljava/lang/CharSequence;
    .end local v13           #group:[Ljava/lang/String;
    .end local v14           #i$:I
    .end local v15           #len$:I
    :catch_0
    move-exception v11

    .line 357
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1
.end method

.method private updateAlarmInfo()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 309
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 310
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getNextAlarm()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, nextAlarm:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mShowingStatus:Z

    if-eqz v3, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 312
    .local v1, showAlarm:Z
    :goto_0
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    const v4, 0x10800fd

    invoke-virtual {v3, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 314
    iget-object v3, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmStatusView:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 316
    .end local v0           #nextAlarm:Ljava/lang/String;
    .end local v1           #showAlarm:Z
    :cond_0
    return-void

    .restart local v0       #nextAlarm:Ljava/lang/String;
    :cond_1
    move v1, v2

    .line 311
    goto :goto_0

    .line 314
    .restart local v1       #showAlarm:Z
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method


# virtual methods
.method public getCallback()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;
    .locals 1

    .prologue
    .line 641
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    return-object v0
.end method

.method public hideBouncer(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 654
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 410
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 411
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->onPause()V

    .line 412
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 416
    const-string v1, "SlideLockScreen"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    if-eqz v1, :cond_0

    .line 419
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mSavedState:Landroid/os/Parcelable;

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    if-eqz v1, :cond_1

    .line 422
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/slide/TargetView;->onPause()V

    .line 425
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mReceiver:Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 435
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mSmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 440
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 445
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 449
    :goto_4
    return-void

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SlideLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 431
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 432
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "SlideLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 436
    .end local v0           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 437
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "SlideLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 441
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 442
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "SlideLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 446
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 447
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "SlideLockScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public onResume(I)V
    .locals 8
    .parameter "reason"

    .prologue
    .line 374
    const-string v4, "SlideLockScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume,mContext="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    if-eqz v4, :cond_0

    .line 377
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mSavedState:Landroid/os/Parcelable;

    invoke-virtual {v4, v5}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 379
    :cond_0
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    if-eqz v4, :cond_1

    .line 380
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTargetView:Lcom/baidu/internal/keyguard/slide/TargetView;

    invoke-virtual {v4}, Lcom/baidu/internal/keyguard/slide/TargetView;->onResume()V

    .line 382
    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 383
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v4, "com.baidu.keyguard.internal.SMS_MISS_UPDATED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 384
    const-string v4, "com.baidu.keyguard.internal.CALL_MISS_UPDATED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 385
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 386
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mReceiver:Lcom/baidu/internal/keyguard/slide/SlideLockScreen$MyBroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 389
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 390
    .local v3, smsIntent:Landroid/content/Intent;
    const-string v4, "com.baidu.keyguard.internal.SMS_MISS_UPDATED"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 393
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 394
    .local v0, callIntent:Landroid/content/Intent;
    const-string v4, "com.baidu.keyguard.internal.CALL_MISS_UPDATED"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 396
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->updateAlarmInfo()V

    .line 398
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://sms/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mSmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 399
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://mms/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mMmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 400
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://call_log/calls/"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 401
    iget-object v4, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "next_alarm_formatted"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mAlarmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .end local v0           #callIntent:Landroid/content/Intent;
    .end local v3           #smsIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 403
    :catch_0
    move-exception v1

    .line 404
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "SlideLockScreen"

    const-string v5, "error:"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mTransportControlView:Lcom/baidu/internal/keyguard/slide/TransportControlView;

    invoke-virtual {v0}, Lcom/baidu/internal/keyguard/slide/TransportControlView;->cleanUp()V

    .line 637
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 626
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mKeyguardCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 627
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0
    .parameter "utils"

    .prologue
    .line 631
    iput-object p1, p0, Lcom/baidu/internal/keyguard/slide/SlideLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 632
    return-void
.end method

.method public showBouncer(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 650
    return-void
.end method

.method public showUsabilityHint()V
    .locals 0

    .prologue
    .line 646
    return-void
.end method
