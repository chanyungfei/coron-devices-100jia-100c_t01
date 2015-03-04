.class public Lcom/baidu/themeanimation/element/WallpaperElement;
.super Lcom/baidu/themeanimation/element/ImageElement;
.source "WallpaperElement.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperElement"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/baidu/themeanimation/element/ImageElement;-><init>()V

    return-void
.end method


# virtual methods
.method public changeWallPaper()V
    .locals 3

    .prologue
    .line 29
    const-string v1, "WallpaperElement"

    const-string v2, "changeWallPaper"

    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/baidu/themeanimation/util/FileUtil;->getInstance()Lcom/baidu/themeanimation/util/FileUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/themeanimation/util/FileUtil;->getCurrentLockWallpaper()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 31
    .local v0, b:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/baidu/themeanimation/element/WallpaperElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 32
    iget-object v1, p0, Lcom/baidu/themeanimation/element/WallpaperElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    invoke-virtual {v1, v0}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->setImage(Landroid/graphics/Bitmap;)V

    .line 33
    :cond_0
    return-void
.end method

.method public createElement(Ljava/lang/String;)Lcom/baidu/themeanimation/element/Element;
    .locals 1
    .parameter "tagName"

    .prologue
    .line 25
    new-instance v0, Lcom/baidu/themeanimation/element/WallpaperElement;

    invoke-direct {v0}, Lcom/baidu/themeanimation/element/WallpaperElement;-><init>()V

    return-object v0
.end method

.method public generateView(Landroid/content/Context;Landroid/os/Handler;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "handler"

    .prologue
    const/4 v4, 0x0

    .line 37
    iget-object v1, p0, Lcom/baidu/themeanimation/element/WallpaperElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    if-nez v1, :cond_0

    .line 38
    const-string v1, "WallpaperElement"

    const-string v2, "generateView WallpaperElement View"

    invoke-static {v1, v2}, Lcom/baidu/themeanimation/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v1, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, p0, v2}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;-><init>(Lcom/baidu/themeanimation/element/ImageElement;Landroid/content/Context;Lcom/baidu/themeanimation/element/VisibleElement;I)V

    iput-object v1, p0, Lcom/baidu/themeanimation/element/WallpaperElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    .line 42
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    sget v1, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_WIDTH:I

    int-to-float v1, v1

    sget v2, Lcom/baidu/themeanimation/util/FileUtil;->WALLPAPER_SCALE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget v2, Lcom/baidu/themeanimation/util/FileUtil;->REAL_SCREEN_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/baidu/themeanimation/util/FileUtil;->WALLPAPER_SCALE:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 45
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 46
    iget-object v1, p0, Lcom/baidu/themeanimation/element/WallpaperElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    invoke-virtual {v1, v0}, Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    iget-object v1, p0, Lcom/baidu/themeanimation/element/WallpaperElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    invoke-virtual {p0, v1}, Lcom/baidu/themeanimation/element/WallpaperElement;->setView(Landroid/view/View;)V

    .line 50
    .end local v0           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget-object v1, p0, Lcom/baidu/themeanimation/element/WallpaperElement;->mImageElementView:Lcom/baidu/themeanimation/element/ImageElement$ImageElementView;

    return-object v1
.end method

.method public matchTag(Ljava/lang/String;)Z
    .locals 1
    .parameter "tagName"

    .prologue
    .line 19
    const-string v0, "Wallpaper"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WallpaperElement"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
