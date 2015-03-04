.class Lcom/android/settings/BackPadSettings$PackageAdapter$1;
.super Ljava/lang/Object;
.source "BackPadSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/BackPadSettings$PackageAdapter;->reloadList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/BackPadSettings$PackageAdapter;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/settings/BackPadSettings$PackageAdapter;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/settings/BackPadSettings$PackageAdapter$1;->this$1:Lcom/android/settings/BackPadSettings$PackageAdapter;

    iput-object p2, p0, Lcom/android/settings/BackPadSettings$PackageAdapter$1;->val$handler:Landroid/os/Handler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 313
    iget-object v3, p0, Lcom/android/settings/BackPadSettings$PackageAdapter$1;->this$1:Lcom/android/settings/BackPadSettings$PackageAdapter;

    iget-object v4, v3, Lcom/android/settings/BackPadSettings$PackageAdapter;->mInstalledPackages:Ljava/util/List;

    monitor-enter v4

    .line 314
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/BackPadSettings$PackageAdapter$1;->this$1:Lcom/android/settings/BackPadSettings$PackageAdapter;

    iget-object v3, v3, Lcom/android/settings/BackPadSettings$PackageAdapter;->mInstalledPackages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 315
    iget-object v3, p0, Lcom/android/settings/BackPadSettings$PackageAdapter$1;->this$1:Lcom/android/settings/BackPadSettings$PackageAdapter;

    iget-object v3, v3, Lcom/android/settings/BackPadSettings$PackageAdapter;->mInstalledAppInfo:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 316
    .local v1, info:Landroid/content/pm/ResolveInfo;
    new-instance v2, Lcom/android/settings/BackPadSettings$PackageItem;

    iget-object v3, p0, Lcom/android/settings/BackPadSettings$PackageAdapter$1;->this$1:Lcom/android/settings/BackPadSettings$PackageAdapter;

    iget-object v3, v3, Lcom/android/settings/BackPadSettings$PackageAdapter;->this$0:Lcom/android/settings/BackPadSettings;

    invoke-direct {v2, v3}, Lcom/android/settings/BackPadSettings$PackageItem;-><init>(Lcom/android/settings/BackPadSettings;)V

    .line 317
    .local v2, item:Lcom/android/settings/BackPadSettings$PackageItem;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/settings/BackPadSettings$PackageItem;->packageName:Ljava/lang/String;

    .line 318
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v3, v2, Lcom/android/settings/BackPadSettings$PackageItem;->name:Ljava/lang/String;

    .line 319
    iget-object v3, p0, Lcom/android/settings/BackPadSettings$PackageAdapter$1;->this$1:Lcom/android/settings/BackPadSettings$PackageAdapter;

    iget-object v3, v3, Lcom/android/settings/BackPadSettings$PackageAdapter;->this$0:Lcom/android/settings/BackPadSettings;

    #getter for: Lcom/android/settings/BackPadSettings;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/settings/BackPadSettings;->access$000(Lcom/android/settings/BackPadSettings;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/BackPadSettings$PackageItem;->title:Ljava/lang/CharSequence;

    .line 320
    iget-object v3, p0, Lcom/android/settings/BackPadSettings$PackageAdapter$1;->this$1:Lcom/android/settings/BackPadSettings$PackageAdapter;

    iget-object v3, v3, Lcom/android/settings/BackPadSettings$PackageAdapter;->this$0:Lcom/android/settings/BackPadSettings;

    #getter for: Lcom/android/settings/BackPadSettings;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/settings/BackPadSettings;->access$000(Lcom/android/settings/BackPadSettings;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/android/settings/BackPadSettings$PackageItem;->icon:Landroid/graphics/drawable/Drawable;

    .line 321
    iget-object v3, p0, Lcom/android/settings/BackPadSettings$PackageAdapter$1;->val$handler:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings/BackPadSettings$PackageAdapter$1$1;

    invoke-direct {v5, p0, v2}, Lcom/android/settings/BackPadSettings$PackageAdapter$1$1;-><init>(Lcom/android/settings/BackPadSettings$PackageAdapter$1;Lcom/android/settings/BackPadSettings$PackageItem;)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 336
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    .end local v2           #item:Lcom/android/settings/BackPadSettings$PackageItem;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 337
    return-void
.end method
