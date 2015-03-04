.class Lcom/android/settings/BackPadSettings$PackageAdapter;
.super Landroid/widget/BaseAdapter;
.source "BackPadSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/BackPadSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageAdapter"
.end annotation


# instance fields
.field protected mInstalledAppInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/BackPadSettings$PackageItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/BackPadSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/BackPadSettings;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 341
    .local p2, installedAppsInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/settings/BackPadSettings$PackageAdapter;->this$0:Lcom/android/settings/BackPadSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 305
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/BackPadSettings$PackageAdapter;->mInstalledPackages:Ljava/util/List;

    .line 342
    iput-object p2, p0, Lcom/android/settings/BackPadSettings$PackageAdapter;->mInstalledAppInfo:Ljava/util/List;

    .line 343
    return-void
.end method

.method private reloadList()V
    .locals 3

    .prologue
    .line 308
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 309
    .local v0, handler:Landroid/os/Handler;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/BackPadSettings$PackageAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/BackPadSettings$PackageAdapter$1;-><init>(Lcom/android/settings/BackPadSettings$PackageAdapter;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 339
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/settings/BackPadSettings$PackageAdapter;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/BackPadSettings$PackageItem;
    .locals 1
    .parameter "position"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/settings/BackPadSettings$PackageAdapter;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/BackPadSettings$PackageItem;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/android/settings/BackPadSettings$PackageAdapter;->getItem(I)Lcom/android/settings/BackPadSettings$PackageItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/android/settings/BackPadSettings$PackageAdapter;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/BackPadSettings$PackageItem;

    iget-object v0, v0, Lcom/android/settings/BackPadSettings$PackageItem;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 367
    if-eqz p2, :cond_3

    .line 368
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/BackPadSettings$ViewHolder;

    .line 378
    .local v1, holder:Lcom/android/settings/BackPadSettings$ViewHolder;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/BackPadSettings$PackageAdapter;->getItem(I)Lcom/android/settings/BackPadSettings$PackageItem;

    move-result-object v0

    .line 380
    .local v0, applicationInfo:Lcom/android/settings/BackPadSettings$PackageItem;
    iget-object v4, v1, Lcom/android/settings/BackPadSettings$ViewHolder;->title:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    .line 381
    iget-object v4, v1, Lcom/android/settings/BackPadSettings$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/settings/BackPadSettings$PackageItem;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    :cond_0
    iget-object v4, v1, Lcom/android/settings/BackPadSettings$ViewHolder;->summary:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 384
    iget-object v4, v1, Lcom/android/settings/BackPadSettings$ViewHolder;->summary:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    :cond_1
    iget-object v4, v1, Lcom/android/settings/BackPadSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    .line 387
    iget-object v3, v0, Lcom/android/settings/BackPadSettings$PackageItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 388
    .local v3, loadIcon:Landroid/graphics/drawable/Drawable;
    iget-object v4, v1, Lcom/android/settings/BackPadSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 390
    .end local v3           #loadIcon:Landroid/graphics/drawable/Drawable;
    :cond_2
    return-object p2

    .line 370
    .end local v0           #applicationInfo:Lcom/android/settings/BackPadSettings$PackageItem;
    .end local v1           #holder:Lcom/android/settings/BackPadSettings$ViewHolder;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/BackPadSettings$PackageAdapter;->this$0:Lcom/android/settings/BackPadSettings;

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Lcom/android/settings/BackPadSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 371
    .local v2, layoutInflater:Landroid/view/LayoutInflater;
    const v4, #com.android.settings:layout@preference_icon#t

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 372
    new-instance v1, Lcom/android/settings/BackPadSettings$ViewHolder;

    invoke-direct {v1}, Lcom/android/settings/BackPadSettings$ViewHolder;-><init>()V

    .line 373
    .restart local v1       #holder:Lcom/android/settings/BackPadSettings$ViewHolder;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 374
    const v4, #android:id@title#t

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/android/settings/BackPadSettings$ViewHolder;->title:Landroid/widget/TextView;

    .line 375
    const v4, #android:id@summary#t

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/android/settings/BackPadSettings$ViewHolder;->summary:Landroid/widget/TextView;

    .line 376
    const v4, #com.android.settings:id@icon#t

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/android/settings/BackPadSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public update()V
    .locals 0

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/android/settings/BackPadSettings$PackageAdapter;->reloadList()V

    .line 347
    return-void
.end method
