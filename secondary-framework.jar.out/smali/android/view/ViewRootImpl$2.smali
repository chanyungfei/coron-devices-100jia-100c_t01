.class Landroid/view/ViewRootImpl$2;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/SurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 5991
    iput-object p1, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 6005
    return-void
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .prologue
    .line 5997
    iget-object v0, p0, Landroid/view/ViewRootImpl$2;->this$0:Landroid/view/ViewRootImpl;

    #getter for: Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;
    invoke-static {v0}, Landroid/view/ViewRootImpl;->access$600(Landroid/view/ViewRootImpl;)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceFrame()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 6036
    const/4 v0, 0x0

    return-object v0
.end method

.method public isCreating()Z
    .locals 1

    .prologue
    .line 6001
    const/4 v0, 0x0

    return v0
.end method

.method public lockCanvas()Landroid/graphics/Canvas;
    .locals 1

    .prologue
    .line 6026
    const/4 v0, 0x0

    return-object v0
.end method

.method public lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    .locals 1
    .parameter "dirty"

    .prologue
    .line 6030
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeCallback(Landroid/view/SurfaceHolder$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 6008
    return-void
.end method

.method public setFixedSize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 6011
    return-void
.end method

.method public setFormat(I)V
    .locals 0
    .parameter "format"

    .prologue
    .line 6017
    return-void
.end method

.method public setKeepScreenOn(Z)V
    .locals 0
    .parameter "screenOn"

    .prologue
    .line 6023
    return-void
.end method

.method public setSizeFromLayout()V
    .locals 0

    .prologue
    .line 6014
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 6020
    return-void
.end method

.method public unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 6034
    return-void
.end method
