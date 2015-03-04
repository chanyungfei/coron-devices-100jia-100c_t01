.class public Lcom/baidu/backpad/BackpadAppSettings;
.super Landroid/app/Fragment;
.source "BackpadAppSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/backpad/BackpadAppSettings$SettingsObserver;,
        Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;,
        Lcom/baidu/backpad/BackpadAppSettings$AppComparator;
    }
.end annotation


# static fields
.field private static final MSG_PKG_ADD:I = 0xc

.field private static final MSG_PKG_REMOVE:I = 0xd

.field private static final MSG_UI_UPDATE:I = 0xb

.field static final TAG:Ljava/lang/String; = "BackpadSettings"


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAppAdapter:Lcom/baidu/backpad/AppListViewAdapter;

.field private mBackpadEnabled:Z

.field private mBackpadManager:Lcom/baidu/backpad/BackpadControllManager;

.field private mEmpty:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mListView:Landroid/widget/ListView;

.field private mLoader:Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;

.field private mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTipView:Landroid/view/View;

.field private mUserPackageInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Landroid/view/View;

.field private sSettingsObserver:Lcom/baidu/backpad/BackpadAppSettings$SettingsObserver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mPackages:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mUserPackageInfos:Ljava/util/ArrayList;

    .line 58
    iput-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mListView:Landroid/widget/ListView;

    .line 59
    iput-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mTipView:Landroid/view/View;

    .line 60
    iput-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mEmpty:Landroid/widget/TextView;

    .line 61
    iput-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mAppAdapter:Lcom/baidu/backpad/AppListViewAdapter;

    .line 62
    iput-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mProgressBar:Landroid/widget/ProgressBar;

    .line 76
    new-instance v0, Lcom/baidu/backpad/BackpadAppSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/baidu/backpad/BackpadAppSettings$1;-><init>(Lcom/baidu/backpad/BackpadAppSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mHandler:Landroid/os/Handler;

    .line 106
    new-instance v0, Lcom/baidu/backpad/BackpadAppSettings$2;

    invoke-direct {v0, p0}, Lcom/baidu/backpad/BackpadAppSettings$2;-><init>(Lcom/baidu/backpad/BackpadAppSettings;)V

    iput-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 313
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/backpad/BackpadAppSettings;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/backpad/BackpadAppSettings;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/baidu/backpad/BackpadAppSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/baidu/backpad/BackpadAppSettings;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/baidu/backpad/BackpadAppSettings;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/baidu/backpad/BackpadAppSettings;Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/baidu/backpad/BackpadAppSettings;->isBackpadEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/baidu/backpad/BackpadAppSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mBackpadEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/baidu/backpad/BackpadAppSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mBackpadEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/baidu/backpad/BackpadAppSettings;)Lcom/baidu/backpad/AppListViewAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mAppAdapter:Lcom/baidu/backpad/AppListViewAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/baidu/backpad/BackpadAppSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mUserPackageInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/backpad/BackpadAppSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mEmpty:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/baidu/backpad/BackpadAppSettings;)Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mLoader:Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/baidu/backpad/BackpadAppSettings;)Lcom/baidu/backpad/BackpadControllManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mBackpadManager:Lcom/baidu/backpad/BackpadControllManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/baidu/backpad/BackpadAppSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/baidu/backpad/BackpadAppSettings;->addPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/baidu/backpad/BackpadAppSettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addPackage(Ljava/lang/String;)V
    .locals 5
    .parameter "pkg"

    .prologue
    const/4 v0, 0x1

    .line 232
    :try_start_0
    iget-object v4, p0, Lcom/baidu/backpad/BackpadAppSettings;->mUserPackageInfos:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :try_start_1
    iget-object v3, p0, Lcom/baidu/backpad/BackpadAppSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 234
    .local v2, pManager:Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 235
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_1

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 236
    .local v0, hasActivity:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 237
    iget-object v3, p0, Lcom/baidu/backpad/BackpadAppSettings;->mUserPackageInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-direct {p0, v2}, Lcom/baidu/backpad/BackpadAppSettings;->sortCheckBoxedApp(Landroid/content/pm/PackageManager;)V

    .line 240
    :cond_0
    monitor-exit v4

    .line 244
    .end local v0           #hasActivity:Z
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    .end local v2           #pManager:Landroid/content/pm/PackageManager;
    :goto_1
    return-void

    .line 235
    .restart local v1       #info:Landroid/content/pm/PackageInfo;
    .restart local v2       #pManager:Landroid/content/pm/PackageManager;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 240
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    .end local v2           #pManager:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 241
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private getUserPackageInfos()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    .line 214
    iget-object v7, p0, Lcom/baidu/backpad/BackpadAppSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 215
    .local v5, pManager:Landroid/content/pm/PackageManager;
    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 217
    .local v0, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v7, p0, Lcom/baidu/backpad/BackpadAppSettings;->mUserPackageInfos:Ljava/util/ArrayList;

    monitor-enter v7

    .line 218
    :try_start_0
    iget-object v8, p0, Lcom/baidu/backpad/BackpadAppSettings;->mUserPackageInfos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 219
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 220
    .local v3, info:Landroid/content/pm/PackageInfo;
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_1

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    array-length v8, v8

    if-lez v8, :cond_1

    move v1, v6

    .line 221
    .local v1, hasActivity:Z
    :goto_1
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v9, "android"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 222
    .local v4, isAndroidOS:Z
    if-eqz v1, :cond_0

    if-nez v4, :cond_0

    .line 223
    iget-object v8, p0, Lcom/baidu/backpad/BackpadAppSettings;->mUserPackageInfos:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 227
    .end local v1           #hasActivity:Z
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    .end local v4           #isAndroidOS:Z
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 220
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #info:Landroid/content/pm/PackageInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 226
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    :cond_2
    :try_start_1
    invoke-direct {p0, v5}, Lcom/baidu/backpad/BackpadAppSettings;->sortCheckBoxedApp(Landroid/content/pm/PackageManager;)V

    .line 227
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    return-void
.end method

.method private initUI()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mView:Landroid/view/View;

    const v1, #com.android.settings:id@progress_bar#t

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mProgressBar:Landroid/widget/ProgressBar;

    .line 163
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 165
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mView:Landroid/view/View;

    const v1, #com.android.settings:id@ls_apps#t

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mListView:Landroid/widget/ListView;

    .line 167
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mView:Landroid/view/View;

    const v1, #com.android.settings:id@empty#t

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mEmpty:Landroid/widget/TextView;

    .line 168
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mEmpty:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    new-instance v0, Lcom/baidu/backpad/AppListViewAdapter;

    iget-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/baidu/backpad/AppListViewAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mAppAdapter:Lcom/baidu/backpad/AppListViewAdapter;

    .line 171
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mAppAdapter:Lcom/baidu/backpad/AppListViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 172
    return-void
.end method

.method private isBackpadEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "back_pad_enable"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removePackage(Ljava/lang/String;)V
    .locals 4
    .parameter "pkg"

    .prologue
    .line 248
    :try_start_0
    iget-object v3, p0, Lcom/baidu/backpad/BackpadAppSettings;->mUserPackageInfos:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :try_start_1
    iget-object v2, p0, Lcom/baidu/backpad/BackpadAppSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 250
    .local v1, pManager:Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 251
    .local v0, info:Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/baidu/backpad/BackpadAppSettings;->mUserPackageInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 252
    monitor-exit v3

    .line 256
    .end local v0           #info:Landroid/content/pm/PackageInfo;
    .end local v1           #pManager:Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 252
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 253
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private sortCheckBoxedApp(Landroid/content/pm/PackageManager;)V
    .locals 2
    .parameter "pManager"

    .prologue
    .line 286
    new-instance v0, Lcom/baidu/backpad/BackpadAppSettings$AppComparator;

    invoke-direct {v0, p0, p1}, Lcom/baidu/backpad/BackpadAppSettings$AppComparator;-><init>(Lcom/baidu/backpad/BackpadAppSettings;Landroid/content/pm/PackageManager;)V

    .line 287
    .local v0, AppComparator:Ljava/util/Comparator;
    iget-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mUserPackageInfos:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 288
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 126
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lcom/baidu/backpad/BackpadAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mActivity:Landroid/app/Activity;

    .line 128
    invoke-virtual {p0, v2}, Lcom/baidu/backpad/BackpadAppSettings;->setHasOptionsMenu(Z)V

    .line 129
    iget-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mActionBar:Landroid/app/ActionBar;

    .line 130
    iget-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 131
    iget-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mActionBar:Landroid/app/ActionBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 132
    iget-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mActivity:Landroid/app/Activity;

    const v2, #com.android.settings:string@backpad_enable_title#t

    invoke-virtual {p0, v2}, Lcom/baidu/backpad/BackpadAppSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    invoke-static {}, Lyi/support/v1/YiLaf;->current()Lyi/support/v1/YiLaf$Interface;

    move-result-object v1

    invoke-interface {v1}, Lyi/support/v1/YiLaf$Interface;->getMenu()Lyi/support/v1/YiLaf$MenuWrapper;

    move-result-object v1

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Lyi/support/v1/YiLaf$MenuWrapper;->setPanelVisibility(I)V

    .line 135
    iget-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/baidu/backpad/BackpadControllManager;->getInstance(Landroid/content/Context;)Lcom/baidu/backpad/BackpadControllManager;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mBackpadManager:Lcom/baidu/backpad/BackpadControllManager;

    .line 136
    iget-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/baidu/backpad/BackpadAppSettings;->isBackpadEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mBackpadEnabled:Z

    .line 139
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AppsLoader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 141
    new-instance v1, Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;-><init>(Lcom/baidu/backpad/BackpadAppSettings;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mLoader:Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;

    .line 142
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 146
    const v0, #com.android.settings:layout@app_list_view#t

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mView:Landroid/view/View;

    .line 147
    invoke-direct {p0}, Lcom/baidu/backpad/BackpadAppSettings;->initUI()V

    .line 148
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 153
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 155
    :pswitch_0
    invoke-virtual {p0}, Lcom/baidu/backpad/BackpadAppSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 156
    const/4 v0, 0x1

    goto :goto_0

    .line 153
    nop

    :pswitch_data_0
    .packed-switch #android:id@home#t
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 178
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mLoader:Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;

    invoke-virtual {v0, p0}, Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 179
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 181
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->sSettingsObserver:Lcom/baidu/backpad/BackpadAppSettings$SettingsObserver;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->sSettingsObserver:Lcom/baidu/backpad/BackpadAppSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/baidu/backpad/BackpadAppSettings$SettingsObserver;->stopObserving()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->sSettingsObserver:Lcom/baidu/backpad/BackpadAppSettings$SettingsObserver;

    .line 185
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 190
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 191
    iget-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 192
    iget-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mLoader:Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;

    invoke-virtual {v1, p0}, Lcom/baidu/backpad/BackpadAppSettings$LoaderHandler;->post(Ljava/lang/Runnable;)Z

    .line 194
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/baidu/backpad/BackpadAppSettings;->mPackageIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->sSettingsObserver:Lcom/baidu/backpad/BackpadAppSettings$SettingsObserver;

    if-nez v1, :cond_0

    .line 199
    new-instance v1, Lcom/baidu/backpad/BackpadAppSettings$SettingsObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/baidu/backpad/BackpadAppSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/baidu/backpad/BackpadAppSettings$SettingsObserver;-><init>(Lcom/baidu/backpad/BackpadAppSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->sSettingsObserver:Lcom/baidu/backpad/BackpadAppSettings$SettingsObserver;

    .line 201
    iget-object v1, p0, Lcom/baidu/backpad/BackpadAppSettings;->sSettingsObserver:Lcom/baidu/backpad/BackpadAppSettings$SettingsObserver;

    invoke-virtual {v1}, Lcom/baidu/backpad/BackpadAppSettings$SettingsObserver;->startObserving()V

    .line 203
    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/baidu/backpad/BackpadAppSettings;->getUserPackageInfos()V

    .line 209
    iget-object v0, p0, Lcom/baidu/backpad/BackpadAppSettings;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 210
    return-void
.end method
