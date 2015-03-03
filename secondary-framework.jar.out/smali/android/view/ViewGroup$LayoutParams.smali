.class public Landroid/view/ViewGroup$LayoutParams;
.super Ljava/lang/Object;
.source "ViewGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final FILL_PARENT:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MATCH_PARENT:I = -0x1

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field public height:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "MATCH_PARENT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x2
                to = "WRAP_CONTENT"
            .end subannotation
        }
    .end annotation
.end field

.field public isEnableBackPad:Z

.field public isEnableBackPadLongPress:Z

.field public layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

.field public width:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "MATCH_PARENT"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x2
                to = "WRAP_CONTENT"
            .end subannotation
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 5875
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5763
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup$LayoutParams;->isEnableBackPadLongPress:Z

    .line 5767
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup$LayoutParams;->isEnableBackPad:Z

    .line 5876
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 5856
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5763
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup$LayoutParams;->isEnableBackPadLongPress:Z

    .line 5767
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup$LayoutParams;->isEnableBackPad:Z

    .line 5857
    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5858
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5859
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "c"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5837
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5763
    iput-boolean v2, p0, Landroid/view/ViewGroup$LayoutParams;->isEnableBackPadLongPress:Z

    .line 5767
    iput-boolean v3, p0, Landroid/view/ViewGroup$LayoutParams;->isEnableBackPad:Z

    .line 5838
    sget-object v1, Lcom/android/internal/R$styleable;->ViewGroup_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5839
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0, v2, v3}, Landroid/view/ViewGroup$LayoutParams;->setBaseAttributes(Landroid/content/res/TypedArray;II)V

    .line 5842
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 5843
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter "source"

    .prologue
    .line 5866
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 5763
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup$LayoutParams;->isEnableBackPadLongPress:Z

    .line 5767
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup$LayoutParams;->isEnableBackPad:Z

    .line 5867
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5868
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5869
    return-void
.end method

.method protected static sizeToString(I)Ljava/lang/String;
    .locals 1
    .parameter "size"

    .prologue
    .line 5937
    const/4 v0, -0x2

    if-ne p0, v0, :cond_0

    .line 5938
    const-string v0, "wrap-content"

    .line 5943
    :goto_0
    return-object v0

    .line 5940
    :cond_0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    .line 5941
    const-string v0, "match-parent"

    goto :goto_0

    .line 5943
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public debug(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "output"

    .prologue
    .line 5913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ViewGroup.LayoutParams={ width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v1}, Landroid/view/ViewGroup$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1}, Landroid/view/ViewGroup$LayoutParams;->sizeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDebugDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "view"
    .parameter "canvas"

    .prologue
    .line 5926
    return-void
.end method

.method public resolveLayoutDirection(I)V
    .locals 0
    .parameter "layoutDirection"

    .prologue
    .line 5901
    return-void
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 1
    .parameter "a"
    .parameter "widthAttr"
    .parameter "heightAttr"

    .prologue
    .line 5886
    const-string v0, "layout_width"

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5887
    const-string v0, "layout_height"

    invoke-virtual {p1, p3, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 5888
    return-void
.end method
