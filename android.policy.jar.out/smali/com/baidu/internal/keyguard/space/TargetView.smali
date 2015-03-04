.class public Lcom/baidu/internal/keyguard/space/TargetView;
.super Landroid/widget/RelativeLayout;
.source "TargetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/internal/keyguard/space/TargetView$StatePhoneHover;,
        Lcom/baidu/internal/keyguard/space/TargetView$StateUnlockHover;,
        Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;,
        Lcom/baidu/internal/keyguard/space/TargetView$StateMessageHover;,
        Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;,
        Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;,
        Lcom/baidu/internal/keyguard/space/TargetView$State;,
        Lcom/baidu/internal/keyguard/space/TargetView$IconState;,
        Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;,
        Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TargetHandlePanel"

.field public static mFixPointRatio:F

.field public static mStartTime:J


# instance fields
.field private final COLOR_CRITICAL:I

.field private final COLOR_LOW:I

.field private final COLOR_NORMAL:I

.field private mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

.field private mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

.field private mCruiseDuration:J

.field private mDX:F

.field private mDY:F

.field private mHandleLastX:I

.field private mHandleLastY:I

.field private mInAnimation:Landroid/view/animation/Animation;

.field private mLevel:F

.field private mMissCallCount:I

.field private mMissCallCountView:Landroid/widget/TextView;

.field private mMissMsgCount:I

.field private mMissMsgCountView:Landroid/widget/TextView;

.field private mOffsetR:I

.field private mOutAnimation:Landroid/view/animation/Animation;

.field private mPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mRotateAnimation:Landroid/view/animation/Animation;

.field private mSpringAnimation:Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;

.field private mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

.field private final mStateIdle:Lcom/baidu/internal/keyguard/space/TargetView$State;

.field private final mStateTargetCameraHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

.field private final mStateTargetMessageHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

.field private final mStateTargetPhoneHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

.field private final mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

.field private final mStateTouch:Lcom/baidu/internal/keyguard/space/TargetView$State;

.field private mTargetArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

.field private mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

.field private mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

.field private mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

.field private mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const v0, 0x3dcccccd

    sput v0, Lcom/baidu/internal/keyguard/space/TargetView;->mFixPointRatio:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/16 v3, 0xf7

    const/16 v2, 0x25

    .line 189
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 44
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 45
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTouch:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 46
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateMessageHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateMessageHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetMessageHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 47
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetCameraHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 48
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateUnlockHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateUnlockHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 49
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StatePhoneHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StatePhoneHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetPhoneHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    .line 62
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mCruiseDuration:J

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mLevel:F

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mRectF:Landroid/graphics/RectF;

    .line 66
    const/16 v0, 0xd

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mOffsetR:I

    .line 67
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_CRITICAL:I

    .line 68
    const/16 v0, 0x88

    invoke-static {v3, v0, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_LOW:I

    .line 69
    const/16 v0, 0x2f

    const/16 v1, 0xc7

    const/16 v2, 0x16

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_NORMAL:I

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v3, 0xf7

    const/16 v2, 0x25

    .line 193
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 44
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 45
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTouch:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 46
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateMessageHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateMessageHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetMessageHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 47
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetCameraHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 48
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateUnlockHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateUnlockHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 49
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StatePhoneHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StatePhoneHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetPhoneHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    .line 62
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mCruiseDuration:J

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mLevel:F

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mRectF:Landroid/graphics/RectF;

    .line 66
    const/16 v0, 0xd

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mOffsetR:I

    .line 67
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_CRITICAL:I

    .line 68
    const/16 v0, 0x88

    invoke-static {v3, v0, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_LOW:I

    .line 69
    const/16 v0, 0x2f

    const/16 v1, 0xc7

    const/16 v2, 0x16

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_NORMAL:I

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/16 v3, 0xf7

    const/16 v2, 0x25

    .line 197
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 44
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateIdle;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 45
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateTouch;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTouch:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 46
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateMessageHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateMessageHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetMessageHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 47
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateCameraHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetCameraHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 48
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StateUnlockHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StateUnlockHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 49
    new-instance v0, Lcom/baidu/internal/keyguard/space/TargetView$StatePhoneHover;

    invoke-direct {v0, p0}, Lcom/baidu/internal/keyguard/space/TargetView$StatePhoneHover;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetPhoneHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    .line 62
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mCruiseDuration:J

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mLevel:F

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mRectF:Landroid/graphics/RectF;

    .line 66
    const/16 v0, 0xd

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mOffsetR:I

    .line 67
    invoke-static {v3, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_CRITICAL:I

    .line 68
    const/16 v0, 0x88

    invoke-static {v3, v0, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_LOW:I

    .line 69
    const/16 v0, 0x2f

    const/16 v1, 0xc7

    const/16 v2, 0x16

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_NORMAL:I

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/internal/keyguard/space/TargetView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->adjustTargetIconPosition()V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mSpringAnimation:Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;

    return-object v0
.end method

.method static synthetic access$102(Lcom/baidu/internal/keyguard/space/TargetView;Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;)Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mSpringAnimation:Lcom/baidu/internal/keyguard/space/TargetView$SpringAnimation;

    return-object p1
.end method

.method static synthetic access$200(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/space/TargetView$State;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/internal/keyguard/space/TargetView;)Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/internal/keyguard/space/TargetView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->vibrate()V

    return-void
.end method

.method private adjustTargetIconPosition()V
    .locals 3

    .prologue
    .line 470
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 471
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 472
    .local v1, target:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-virtual {v1, v2}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->adjustTargetIconPosition(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;)V

    .line 470
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    .end local v1           #target:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    :cond_0
    return-void
.end method

.method private drawLine(Landroid/graphics/Canvas;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;)V
    .locals 16
    .parameter "canvas"
    .parameter "source"
    .parameter "destination"

    .prologue
    .line 304
    move-object/from16 v0, p2

    iget v1, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move-object/from16 v0, p2

    iget v2, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mXCruisePoint:F

    add-float v9, v1, v2

    .line 305
    .local v9, drawAX:F
    move-object/from16 v0, p2

    iget v1, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move-object/from16 v0, p2

    iget v2, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mYCruisePoint:F

    add-float v10, v1, v2

    .line 306
    .local v10, drawAY:F
    move-object/from16 v0, p3

    iget v1, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move-object/from16 v0, p3

    iget v2, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mXCruisePoint:F

    add-float v12, v1, v2

    .line 307
    .local v12, drawBX:F
    move-object/from16 v0, p3

    iget v1, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move-object/from16 v0, p3

    iget v2, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mYCruisePoint:F

    add-float v13, v1, v2

    .line 308
    .local v13, drawBY:F
    const/4 v15, 0x0

    .line 309
    .local v15, theta:F
    sub-float v1, v12, v9

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 310
    const v15, 0x3fc90fdb

    .line 314
    :goto_0
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v8, v1

    .line 315
    .local v8, drawAR:F
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v11, v1

    .line 316
    .local v11, drawBR:F
    const/4 v14, 0x1

    .local v14, r:I
    const/4 v7, 0x1

    .line 317
    .local v7, b:I
    cmpl-float v1, v9, v12

    if-lez v1, :cond_0

    .line 318
    const/4 v14, -0x1

    .line 319
    :cond_0
    cmpl-float v1, v10, v13

    if-lez v1, :cond_1

    .line 320
    const/4 v7, -0x1

    .line 321
    :cond_1
    float-to-double v1, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v1, v8

    int-to-float v2, v14

    mul-float/2addr v1, v2

    add-float v2, v9, v1

    float-to-double v3, v15

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float/2addr v1, v8

    int-to-float v3, v7

    mul-float/2addr v1, v3

    add-float v3, v10, v1

    float-to-double v4, v15

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-float v1, v4

    mul-float/2addr v1, v11

    int-to-float v4, v14

    mul-float/2addr v1, v4

    sub-float v4, v12, v1

    float-to-double v5, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    double-to-float v1, v5

    mul-float/2addr v1, v11

    int-to-float v5, v7

    mul-float/2addr v1, v5

    sub-float v5, v13, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 323
    return-void

    .line 312
    .end local v7           #b:I
    .end local v8           #drawAR:F
    .end local v11           #drawBR:F
    .end local v14           #r:I
    :cond_2
    sub-float v1, v13, v10

    sub-float v2, v12, v9

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    double-to-float v15, v1

    goto :goto_0
.end method

.method private ringIntersectProcess()V
    .locals 21

    .prologue
    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .line 478
    .local v13, radiusHandle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 479
    .local v14, radiusMessage:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 480
    .local v12, radiusCamera:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 481
    .local v15, radiusPhone:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3f99999a

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 482
    .local v16, radiusUnlock:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 483
    .local v2, a:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 484
    .local v3, b:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v17, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    mul-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 485
    .local v6, distanceMessage:D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 486
    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v17, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    mul-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 487
    .local v4, distanceCamera:D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 488
    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v17, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    mul-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 489
    .local v8, distancePhone:D
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 490
    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v17, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    mul-float v17, v17, v18

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v18, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    iget v0, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v19, v0

    iget v0, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    move/from16 v20, v0

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 491
    .local v10, distanceUnlock:D
    add-int v17, v14, v13

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpg-double v17, v6, v17

    if-gez v17, :cond_0

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetMessageHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->setState(Lcom/baidu/internal/keyguard/space/TargetView$State;)V

    .line 504
    :goto_0
    return-void

    .line 493
    :cond_0
    add-int v17, v12, v13

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpg-double v17, v4, v17

    if-gez v17, :cond_1

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetCameraHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->setState(Lcom/baidu/internal/keyguard/space/TargetView$State;)V

    goto :goto_0

    .line 495
    :cond_1
    add-int v17, v16, v13

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpg-double v17, v10, v17

    if-gez v17, :cond_2

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->setState(Lcom/baidu/internal/keyguard/space/TargetView$State;)V

    goto :goto_0

    .line 497
    :cond_2
    add-int v17, v15, v13

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    cmpg-double v17, v8, v17

    if-gez v17, :cond_3

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetPhoneHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->setState(Lcom/baidu/internal/keyguard/space/TargetView$State;)V

    goto :goto_0

    .line 499
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->isDraging()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTouch:Lcom/baidu/internal/keyguard/space/TargetView$State;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->setState(Lcom/baidu/internal/keyguard/space/TargetView$State;)V

    goto :goto_0

    .line 502
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/space/TargetView$State;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->setState(Lcom/baidu/internal/keyguard/space/TargetView$State;)V

    goto :goto_0
.end method

.method private vibrate()V
    .locals 3

    .prologue
    .line 674
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 677
    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/16 v4, 0xff

    const/high16 v3, 0x3fc0

    .line 327
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 328
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 329
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 330
    const/4 v8, 0x0

    .line 331
    .local v8, target:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #target:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    check-cast v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 333
    .restart local v8       #target:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    invoke-virtual {v8}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->updateCruisePosition()V

    .line 331
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->adjustTargetIconPosition()V

    .line 336
    invoke-direct {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->ringIntersectProcess()V

    .line 338
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    const v1, 0x66ffffff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 339
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 342
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->drawLine(Landroid/graphics/Canvas;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;)V

    .line 343
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->drawLine(Landroid/graphics/Canvas;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;)V

    .line 344
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->drawLine(Landroid/graphics/Canvas;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;)V

    .line 345
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->drawLine(Landroid/graphics/Canvas;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;)V

    .line 347
    const/4 v6, 0x0

    :goto_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_5

    .line 348
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #target:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    check-cast v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 349
    .restart local v8       #target:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    const/4 v7, 0x0

    .line 350
    .local v7, image:Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->getState()Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    if-ne v0, v1, :cond_3

    .line 351
    iget-object v7, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    .line 357
    :cond_1
    :goto_2
    if-eqz v7, :cond_2

    .line 358
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    const v1, -0x66000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 360
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-direct {p0, p1, v0, v8}, Lcom/baidu/internal/keyguard/space/TargetView;->drawLine(Landroid/graphics/Canvas;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;)V

    .line 361
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 362
    iget v0, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mXCruisePoint:F

    add-float/2addr v0, v1

    iget v1, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mYCruisePoint:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 347
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 352
    :cond_3
    invoke-virtual {v8}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->getState()Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    if-ne v0, v1, :cond_4

    .line 353
    iget-object v7, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 354
    :cond_4
    invoke-virtual {v8}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->getState()Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_PRESSED:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    if-ne v0, v1, :cond_1

    .line 355
    iget-object v7, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mPressedImage:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 369
    .end local v7           #image:Landroid/graphics/Bitmap;
    :cond_5
    iget-object v8, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 370
    const/4 v7, 0x0

    .line 371
    .restart local v7       #image:Landroid/graphics/Bitmap;
    invoke-virtual {v8}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->getState()Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    if-ne v0, v1, :cond_9

    .line 372
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 373
    iget-object v7, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    .line 381
    :cond_6
    :goto_3
    if-eqz v7, :cond_7

    .line 382
    iget v0, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, v7, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 384
    :cond_7
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/space/TargetView$State;

    if-ne v0, v1, :cond_8

    .line 385
    iget v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mLevel:F

    const/high16 v1, 0x41c8

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    .line 386
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_NORMAL:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    :goto_4
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40a0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 393
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 394
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mRectF:Landroid/graphics/RectF;

    iget v1, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 395
    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mRectF:Landroid/graphics/RectF;

    const/high16 v2, -0x3d4c

    iget v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mLevel:F

    const v3, 0x40666666

    mul-float/2addr v3, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 396
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 401
    :cond_8
    iget-wide v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mCruiseDuration:J

    invoke-virtual {p0, v0, v1}, Lcom/baidu/internal/keyguard/space/TargetView;->postInvalidateDelayed(J)V

    .line 402
    return-void

    .line 374
    :cond_9
    invoke-virtual {v8}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->getState()Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_ALPHA:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    if-ne v0, v1, :cond_a

    .line 375
    iget-object v7, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    .line 376
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_3

    .line 377
    :cond_a
    invoke-virtual {v8}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->getState()Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    move-result-object v0

    sget-object v1, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_PRESSED:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    if-ne v0, v1, :cond_6

    .line 378
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 379
    iget-object v7, v8, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mPressedImage:Landroid/graphics/Bitmap;

    goto/16 :goto_3

    .line 387
    :cond_b
    iget v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mLevel:F

    const/high16 v1, 0x4120

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    .line 388
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_LOW:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 390
    :cond_c
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->COLOR_CRITICAL:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "ev"

    .prologue
    .line 416
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 417
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v4, :cond_0

    .line 418
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v5, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 420
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 421
    .local v1, ea:I
    packed-switch v1, :pswitch_data_0

    .line 466
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 423
    :pswitch_0
    const/4 v3, 0x0

    .line 424
    .local v3, r:I
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v4, v4, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v5, v5, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-le v4, v5, :cond_2

    .line 425
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v4, v4, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v3, v4, 0x2

    .line 429
    :goto_1
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v4, v4, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    int-to-float v5, v3

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v5, v5, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    int-to-float v6, v3

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v6, v6, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    int-to-float v7, v3

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v7, v7, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    int-to-float v8, v3

    add-float/2addr v7, v8

    invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 430
    .local v2, handleRect:Landroid/graphics/RectF;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 431
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-virtual {v4}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->startDrag()V

    .line 432
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTouch:Lcom/baidu/internal/keyguard/space/TargetView$State;

    invoke-virtual {p0, v4}, Lcom/baidu/internal/keyguard/space/TargetView;->setState(Lcom/baidu/internal/keyguard/space/TargetView$State;)V

    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v5, v5, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mDX:F

    .line 434
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v5, v5, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mDY:F

    .line 436
    :cond_1
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->invalidate()V

    goto :goto_0

    .line 427
    .end local v2           #handleRect:Landroid/graphics/RectF;
    :cond_2
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v4, v4, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    div-int/lit8 v3, v4, 0x2

    goto :goto_1

    .line 439
    .end local v3           #r:I
    :pswitch_1
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-virtual {v4}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->isDraging()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 440
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mDX:F

    sub-float/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mDY:F

    sub-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->setPosition(FF)V

    .line 442
    :cond_3
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->invalidate()V

    goto/16 :goto_0

    .line 446
    :pswitch_2
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->startTargetIntentOrDismissKeyguard()Z

    move-result v4

    if-nez v4, :cond_4

    .line 447
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-virtual {v4}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->endDrag()V

    .line 448
    iget-object v4, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/space/TargetView$State;

    invoke-virtual {p0, v4}, Lcom/baidu/internal/keyguard/space/TargetView;->setState(Lcom/baidu/internal/keyguard/space/TargetView$State;)V

    .line 463
    :goto_2
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->invalidate()V

    goto/16 :goto_0

    .line 451
    :cond_4
    :try_start_0
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/baidu/internal/keyguard/space/TargetView$1;

    invoke-direct {v5, p0}, Lcom/baidu/internal/keyguard/space/TargetView$1;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "TargetHandlePanel"

    const-string v5, "set state to idle fail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 421
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getResourceData()[[F
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 271
    const/4 v0, 0x5

    new-array v0, v0, [[F

    new-array v1, v3, [F

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    aput v2, v1, v4

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    aput v2, v1, v5

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mCruiseSeed:F

    aput v2, v1, v6

    aput-object v1, v0, v4

    new-array v1, v3, [F

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    aput v2, v1, v4

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    aput v2, v1, v5

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mCruiseSeed:F

    aput v2, v1, v6

    aput-object v1, v0, v5

    new-array v1, v3, [F

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    aput v2, v1, v4

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    aput v2, v1, v5

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mCruiseSeed:F

    aput v2, v1, v6

    aput-object v1, v0, v6

    new-array v1, v3, [F

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    aput v2, v1, v4

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    aput v2, v1, v5

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mCruiseSeed:F

    aput v2, v1, v6

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [F

    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v3, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mX:F

    aput v3, v2, v4

    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v3, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mY:F

    aput v3, v2, v5

    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget v3, v3, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mCruiseSeed:F

    aput v3, v2, v6

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 35

    .prologue
    .line 234
    invoke-super/range {p0 .. p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/baidu/internal/keyguard/space/TargetView;->mStartTime:J

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108011a

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 237
    .local v4, cameraNormalBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108011b

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 238
    .local v5, cameraPressedBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080122

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v32

    .line 239
    .local v32, phoneNormalBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080123

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 240
    .local v9, phonePressedBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108011e

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v31

    .line 241
    .local v31, messageNormalBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108011f

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 242
    .local v13, messagePressedBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108012a

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v34

    .line 243
    .local v34, unlockNormalBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108012b

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 244
    .local v17, unlockPressedBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108011c

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v29

    .line 245
    .local v29, handleNormalBmp:Landroid/graphics/Bitmap;
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108011d

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 246
    .local v21, handlePressedBmp:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    const/16 v6, 0xf7

    const/16 v7, 0x13b

    sget-object v8, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 247
    new-instance v6, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    const/16 v10, 0x4e

    const/16 v11, 0x198

    sget-object v12, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    move-object/from16 v7, p0

    move-object/from16 v8, v32

    invoke-direct/range {v6 .. v12}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 248
    new-instance v10, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    const/16 v14, 0x134

    const/16 v15, 0x1ad

    sget-object v16, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    move-object/from16 v11, p0

    move-object/from16 v12, v31

    invoke-direct/range {v10 .. v16}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 249
    new-instance v14, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    const/16 v18, 0xb5

    const/16 v19, 0x21a

    sget-object v20, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    move-object/from16 v15, p0

    move-object/from16 v16, v34

    invoke-direct/range {v14 .. v20}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 250
    new-instance v18, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    const/16 v22, 0xb4

    const/16 v23, 0x1af

    sget-object v24, Lcom/baidu/internal/keyguard/space/TargetView$IconState;->STATE_NORMAL:Lcom/baidu/internal/keyguard/space/TargetView$IconState;

    move-object/from16 v19, p0

    move-object/from16 v20, v29

    invoke-direct/range {v18 .. v24}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;-><init>(Lcom/baidu/internal/keyguard/space/TargetView;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILcom/baidu/internal/keyguard/space/TargetView$IconState;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetCamera:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetPhone:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetMessage:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetUnlock:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    .local v30, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 256
    .local v33, target:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    move-object/from16 v0, v33

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->setTargetHandle(Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;)V

    goto :goto_0

    .line 258
    .end local v33           #target:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x10a

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mInAnimation:Landroid/view/animation/Animation;

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mInAnimation:Landroid/view/animation/Animation;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v6, 0x10e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mOutAnimation:Landroid/view/animation/Animation;

    .line 261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual/range {p0 .. p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v6, 0x10e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 262
    new-instance v22, Landroid/view/animation/RotateAnimation;

    const/high16 v23, 0x43b4

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/high16 v26, 0x3f00

    const/16 v27, 0x1

    const/high16 v28, 0x3f00

    invoke-direct/range {v22 .. v28}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/internal/keyguard/space/TargetView;->mRotateAnimation:Landroid/view/animation/Animation;

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateIdle:Lcom/baidu/internal/keyguard/space/TargetView$State;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/space/TargetView;->setState(Lcom/baidu/internal/keyguard/space/TargetView$State;)V

    .line 264
    const-wide/16 v2, 0x14

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/baidu/internal/keyguard/space/TargetView;->mCruiseDuration:J

    .line 265
    return-void
.end method

.method public onCallMissUpdated(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 692
    const-string v0, "TargetHandlePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMissCallUpdated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 288
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 289
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    .line 290
    .local v1, target:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    iget-object v2, v1, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    .line 291
    iget-object v2, v1, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 292
    :cond_0
    iget-object v2, v1, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mPressedImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 293
    iget-object v2, v1, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mPressedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 288
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    .end local v1           #target:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;
    :cond_2
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 296
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    .line 297
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 298
    :cond_3
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mNormalImage:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    .line 299
    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mTargetHandle:Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;

    iget-object v2, v2, Lcom/baidu/internal/keyguard/space/TargetView$TargetIcon;->mPressedImage:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 300
    :cond_4
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 301
    return-void
.end method

.method public onPowerUpdate(II)V
    .locals 3
    .parameter "level"
    .parameter "plugged"

    .prologue
    .line 405
    const-string v0, "TargetHandlePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",plugged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    if-eqz p2, :cond_0

    .line 407
    int-to-float v0, p1

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mLevel:F

    .line 411
    :goto_0
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->invalidate()V

    .line 412
    return-void

    .line 409
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mLevel:F

    goto :goto_0
.end method

.method public onSmsMissUpdated(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 680
    iput p1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mMissMsgCount:I

    .line 681
    const-string v0, "TargetHandlePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMissCallUpdated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    return-void
.end method

.method public setActivityLauncher(Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;)V
    .locals 0
    .parameter "activityLauncher"

    .prologue
    .line 699
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    .line 700
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 660
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    .line 661
    return-void
.end method

.method public setState(Lcom/baidu/internal/keyguard/space/TargetView$State;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 202
    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    if-eq v1, p1, :cond_1

    .line 203
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 204
    .local v0, oldState:Lcom/baidu/internal/keyguard/space/TargetView$State;
    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/space/TargetView$State;->leave()V

    .line 207
    :cond_0
    iput-object p1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    .line 208
    const-string v1, "TargetHandlePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    invoke-virtual {v1, v0}, Lcom/baidu/internal/keyguard/space/TargetView$State;->enter(Lcom/baidu/internal/keyguard/space/TargetView$State;)V

    .line 210
    iget-object v1, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    invoke-virtual {v1}, Lcom/baidu/internal/keyguard/space/TargetView$State;->draw()V

    .line 212
    .end local v0           #oldState:Lcom/baidu/internal/keyguard/space/TargetView$State;
    :cond_1
    return-void
.end method

.method public setVibrateEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 664
    if-eqz p1, :cond_1

    .line 665
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 666
    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mVibrator:Landroid/os/Vibrator;

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mVibrator:Landroid/os/Vibrator;

    goto :goto_0
.end method

.method public startTargetIntentOrDismissKeyguard()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 215
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    invoke-virtual {p0}, Lcom/baidu/internal/keyguard/space/TargetView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/baidu/internal/keyguard/space/TargetView$State;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 216
    .local v1, intent:Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mActivityLauncher:Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardActivityLauncher;->launchActivity(Landroid/content/Intent;ZZLandroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mState:Lcom/baidu/internal/keyguard/space/TargetView$State;

    iget-object v2, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mStateTargetUnlockHover:Lcom/baidu/internal/keyguard/space/TargetView$State;

    if-ne v0, v2, :cond_2

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    move v0, v7

    .line 229
    :goto_1
    return v0

    .line 219
    :catch_0
    move-exception v6

    .line 220
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "TargetHandlePanel"

    const-string v2, "startActivity fail:"

    invoke-static {v0, v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v6           #e:Ljava/lang/Exception;
    :cond_2
    move v0, v8

    .line 229
    goto :goto_1
.end method

.method public stopCruise()V
    .locals 2

    .prologue
    .line 696
    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/baidu/internal/keyguard/space/TargetView;->mCruiseDuration:J

    .line 697
    return-void
.end method